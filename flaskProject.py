from flask import Flask, render_template, request, redirect, url_for, flash, send_from_directory
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime
import os
from werkzeug.utils import secure_filename
from flask_migrate import Migrate
from markupsafe import Markup
from functools import wraps

app = Flask(__name__)
app.config['SECRET_KEY'] = 'nz123456' 

# MySQL конфигурация
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/aljobs'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
migrate = Migrate(app, db)
login_manager = LoginManager(app)
login_manager.login_view = 'login'

# Конфигурация за качване на файлове
UPLOAD_FOLDER = 'uploads'
ALLOWED_EXTENSIONS = {'pdf', 'doc', 'docx'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# Създаваме папка за качените файлове
if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)

@app.template_filter('nl2br')
def nl2br_filter(text):
    if not text:
        return ""
    return Markup(text.replace('\n', '<br>'))

# Модел за потребител
class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    password_hash = db.Column(db.String(255), nullable=False)
    is_admin = db.Column(db.Boolean, default=False)
    jobs = db.relationship('Job', backref='author', lazy=True)

    def is_administrator(self):
        return bool(self.is_admin)

# Модел за обява
class Job(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    description = db.Column(db.Text, nullable=False)
    requirements = db.Column(db.Text, nullable=False)
    company = db.Column(db.String(100), nullable=False)
    location = db.Column(db.String(100))
    salary = db.Column(db.String(50))  # Ново поле за заплата
    job_type = db.Column(db.String(50))  # Ново поле за тип работа (пълно работно време, непълно работно време, временна)
    experience_level = db.Column(db.String(50))  # Ново поле за ниво на опит
    created_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    applications = db.relationship('Application', backref='job', lazy=True, cascade='all, delete-orphan')
    is_active = db.Column(db.Boolean, default=True)  # Добавяме поле за статус на обявата

# Модел за кандидатстване
class Application(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    job_id = db.Column(db.Integer, db.ForeignKey('job.id', ondelete='CASCADE'), nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    full_name = db.Column(db.String(100), nullable=False)
    phone = db.Column(db.String(20), nullable=False)
    cover_letter = db.Column(db.Text, nullable=False)
    cv_path = db.Column(db.String(255), nullable=False)
    created_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    user = db.relationship('User', backref='applications', lazy=True)

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

# Регистрация
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']

        # Проверка дали потребителят вече съществува
        if User.query.filter_by(username=username).first():
            flash('Потребителското име вече съществува', 'danger')
            return redirect(url_for('register'))
        
        if User.query.filter_by(email=email).first():
            flash('Имейл адресът вече е регистриран', 'danger')
            return redirect(url_for('register'))

        # Създаване на нов потребител
        new_user = User(
            username=username,
            email=email,
            password_hash=generate_password_hash(password)
        )
        
        try:
            db.session.add(new_user)
            db.session.commit()
            flash('Регистрацията е успешна!', 'success')
            return redirect(url_for('login'))
        except:
            db.session.rollback()
            flash('Възникна грешка. Моля, опитайте отново.', 'danger')
            return redirect(url_for('register'))

    return render_template('register.html')

# Логин
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        
        user = User.query.filter_by(username=username).first()
        
        if user and check_password_hash(user.password_hash, password):
            login_user(user)
            return redirect(url_for('home'))
        else:
            flash('Невалидно потребителско име или парола', 'danger')
            return redirect(url_for('login'))

    return render_template('login.html')

# Изход
@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('home'))

@app.route('/')
def home():
    # Взимаме параметрите за филтриране от URL
    search_query = request.args.get('search', '')
    location = request.args.get('location', '')
    
    # Започваме с базовия query
    query = Job.query
    
    # Прилагаме филтрите
    if search_query:
        query = query.filter(
            db.or_(
                Job.title.ilike(f'%{search_query}%'),
                Job.description.ilike(f'%{search_query}%'),
                Job.company.ilike(f'%{search_query}%')
            )
        )
    
    if location:
        query = query.filter(Job.location.ilike(f'%{location}%'))
    
    # Сортираме по дата на създаване
    jobs = query.order_by(Job.created_date.desc()).all()
    
    return render_template('home.html', 
                         jobs=jobs,
                         search_query=search_query,
                         selected_location=location)

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@app.route('/post-job', methods=['GET', 'POST'])
@login_required
def post_job():
    if request.method == 'POST':
        job = Job(
            title=request.form['title'],
            company=request.form['company'],
            location=request.form['location'],
            salary=request.form['salary'],
            job_type=request.form['job_type'],
            experience_level=request.form['experience_level'],
            description=request.form['description'],
            requirements=request.form['requirements'],
            user_id=current_user.id
        )
        
        try:
            db.session.add(job)
            db.session.commit()
            flash('Обявата е публикувана успешно!')
            return redirect(url_for('home'))
        except:
            db.session.rollback()
            flash('Възникна грешка. Моля, опитайте отново.')
            
    return render_template('post_job.html')

# Добавяме речници за превод
JOB_TYPES = {
    'full_time': 'Пълно работно време',
    'part_time': 'Непълно работно време',
    'remote': 'Дистанционна работа',
    'contract': 'Договор',
    'temporary': 'Временна работа',
    'internship': 'Стаж'
}

EXPERIENCE_LEVELS = {
    'intern': 'Стажант',
    'junior': 'Младши специалист',
    'mid': 'Среден специалист',
    'senior': 'Старши специалист',
    'lead': 'Екипен ръководител'
}

@app.route('/job/<int:job_id>')
def job_details(job_id):
    job = Job.query.get_or_404(job_id)
    has_applied = False
    if current_user.is_authenticated:
        has_applied = Application.query.filter_by(user_id=current_user.id, job_id=job_id).first() is not None
    
    # Превеждаме типа работа и нивото на опит
    job_type_bg = JOB_TYPES.get(job.job_type, job.job_type)
    experience_level_bg = EXPERIENCE_LEVELS.get(job.experience_level, job.experience_level)
    
    return render_template('job_details.html', 
                         job=job, 
                         has_applied=has_applied,
                         job_type_bg=job_type_bg,
                         experience_level_bg=experience_level_bg)

@app.route('/apply-job/<int:job_id>', methods=['GET', 'POST'])
@login_required
def apply_job(job_id):
    job = Job.query.get_or_404(job_id)
    
    # Проверяваме дали обявата е активна
    if not job.is_active:
        flash('Тази обява не приема кандидатури в момента.', 'warning')
        return redirect(url_for('job_details', job_id=job_id))
    
    # Проверяваме дали вече не е кандидатствал
    existing_application = Application.query.filter_by(user_id=current_user.id, job_id=job_id).first()
    if existing_application:
        flash('Вече сте кандидатствали за тази позиция.', 'info')
        return redirect(url_for('job_details', job_id=job_id))
    
    if request.method == 'POST':
        # Взимаме данните от формата
        full_name = request.form.get('full_name', '').strip()
        phone = request.form.get('phone', '').strip()
        cover_letter = request.form.get('cover_letter', '').strip()
        
        # Валидация на полетата
        if not all([full_name, phone, cover_letter]):
            flash('Моля, попълнете всички задължителни полета.', 'danger')
            return redirect(request.url)
            
        if 'cv' not in request.files:
            flash('Моля, прикачете CV файл.', 'danger')
            return redirect(request.url)
            
        file = request.files['cv']
        if file.filename == '':
            flash('Моля, изберете CV файл.', 'danger')
            return redirect(request.url)
            
        if not allowed_file(file.filename):
            flash('Невалиден формат на файла. Разрешени са само PDF, DOC и DOCX файлове.', 'danger')
            return redirect(request.url)
            
        try:
            # Запазваме файла
            filename = secure_filename(file.filename)
            filename = f"{datetime.now().strftime('%Y%m%d_%H%M%S')}_{filename}"
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            file.save(filepath)
            
            # Създаваме нова кандидатура
            application = Application(
                job_id=job_id,
                user_id=current_user.id,
                full_name=full_name,
                phone=phone,
                cover_letter=cover_letter,
                cv_path=filename
            )
            
            db.session.add(application)
            db.session.commit()
            
            flash('Кандидатурата ви беше изпратена успешно!', 'success')
            return redirect(url_for('job_details', job_id=job_id))
            
        except Exception as e:
            db.session.rollback()
            flash('Възникна грешка при обработката на кандидатурата. Моля, опитайте отново.', 'danger')
            print(f"Error processing application: {str(e)}")
            return redirect(request.url)
    
    return render_template('apply_job.html', job=job)

def create_sample_jobs():
    if Job.query.first() is None:
        # Създаваме тестов админ потребител, ако няма такъв
        admin_user = User.query.filter_by(username='admin').first()
        if not admin_user:
            admin_user = User(
                username='admin',
                email='admin@example.com',
                password_hash=generate_password_hash('admin123'),
                is_admin=True  # Задаваме админ права
            )
            db.session.add(admin_user)
            db.session.commit()

        sample_jobs = [
            {
                'title': 'Senior Python Developer',
                'company': 'TechCorp Bulgaria',
                'description': 'We are looking for an experienced Python developer to join our team. You will be working on cutting-edge projects using modern technologies and best practices.',
                'requirements': '''• 5+ years experience with Python
• Strong knowledge of Flask and Django frameworks
• Experience with RESTful APIs
• Solid understanding of databases
• Good communication skills
• Fluent English''',
                'location': 'София',
                'user_id': admin_user.id
            },
            {
                'title': 'Frontend React Developer',
                'company': 'Digital Solutions Ltd',
                'description': 'Join our dynamic team developing cutting-edge web applications using React and modern JavaScript.',
                'requirements': '''• 3+ years experience with React
• Strong JavaScript knowledge
• Experience with Redux
• CSS and responsive design
• Team player
• Good English''',
                'location': 'Пловдив',
                'user_id': admin_user.id
            },
            {
                'title': 'Data Scientist',
                'company': 'AI Solutions BG',
                'description': 'Looking for a Data Scientist to join our AI team. You will work on machine learning models and data analysis projects.',
                'requirements': '''• MSc/PhD in Computer Science, Mathematics or related field
• Experience with Python, R, and SQL
• Knowledge of machine learning algorithms
• Experience with TensorFlow or PyTorch
• Strong analytical skills
• Excellent problem-solving abilities''',
                'location': 'София',
                'user_id': admin_user.id
            },
            {
                'title': 'DevOps Engineer',
                'company': 'Cloud Systems Ltd',
                'description': 'Join our DevOps team to build and maintain cloud infrastructure and CI/CD pipelines.',
                'requirements': '''• 3+ years DevOps experience
• Strong knowledge of AWS/Azure
• Experience with Docker and Kubernetes
• Terraform and Infrastructure as Code
• Linux administration skills
• Shell scripting''',
                'location': 'Варна',
                'user_id': admin_user.id
            },
            {
                'title': 'UI/UX Designer',
                'company': 'Creative Studio BG',
                'description': 'We are seeking a talented UI/UX Designer to create beautiful and functional interfaces for our clients.',
                'requirements': '''• 3+ years UI/UX design experience
• Proficiency in Figma and Adobe Creative Suite
• Strong portfolio of web and mobile designs
• Understanding of user-centered design principles
• Experience with design systems
• Good communication skills''',
                'location': 'София',
                'user_id': admin_user.id
            },
            {
                'title': 'Java Backend Developer',
                'company': 'FinTech Solutions',
                'description': 'Join our backend team to develop high-performance financial applications.',
                'requirements': '''• 4+ years Java development experience
• Spring Boot and Spring Framework
• Experience with microservices
• SQL and NoSQL databases
• RESTful API design
• Understanding of financial domain''',
                'location': 'Бургас',
                'user_id': admin_user.id
            },
            {
                'title': 'Mobile App Developer',
                'company': 'App Masters',
                'description': 'Looking for an experienced mobile developer to create native iOS and Android applications.',
                'requirements': '''• 3+ years mobile development
• Native iOS (Swift) or Android (Kotlin)
• Experience with React Native
• Understanding of mobile UI/UX principles
• Knowledge of app store deployment
• Experience with mobile testing''',
                'location': 'София',
                'user_id': admin_user.id
            }
        ]

        for job_data in sample_jobs:
            job = Job(**job_data)
            db.session.add(job)
        
        db.session.commit()

def create_database():
    with app.app_context():
        db.create_all()
        create_sample_jobs()

@app.route('/my-jobs')
@login_required
def my_jobs():
    jobs = Job.query.filter_by(user_id=current_user.id).order_by(Job.created_date.desc()).all()
    return render_template('my_jobs.html', jobs=jobs)

@app.route('/edit-job/<int:job_id>', methods=['GET', 'POST'])
@login_required
def edit_job(job_id):
    job = Job.query.get_or_404(job_id)
    if job.user_id != current_user.id:
        flash('Нямате достъп до тази обява', 'danger')
        return redirect(url_for('my_jobs'))
    
    if request.method == 'POST':
        try:
            job.title = request.form['title']
            job.company = request.form['company']
            job.location = request.form['location']
            job.salary = request.form.get('salary', '')
            job.job_type = request.form.get('job_type', '')
            job.experience_level = request.form.get('experience_level', '')
            job.description = request.form['description']
            job.requirements = request.form['requirements']
            
            db.session.commit()
            flash('Обявата е обновена успешно!', 'success')
            return redirect(url_for('my_jobs'))
        except Exception as e:
            db.session.rollback()
            flash('Възникна грешка при обновяването на обявата. Моля опитайте отново.', 'danger')
            print(f"Error updating job: {str(e)}")
    
    return render_template('edit_job.html', job=job)

@app.route('/delete-job/<int:job_id>')
@login_required
def delete_job(job_id):
    job = Job.query.get_or_404(job_id)
    
    # Check if user is admin or job owner
    if not current_user.is_administrator() and job.user_id != current_user.id:
        flash('Нямате достъп до тази обява', 'danger')
        return redirect(url_for('my_jobs'))
    
    try:
        # Delete all applications for this job
        Application.query.filter_by(job_id=job_id).delete()
        db.session.delete(job)
        db.session.commit()
        flash('Обявата е изтрита успешно!', 'success')
    except:
        db.session.rollback()
        flash('Възникна грешка. Моля опитайте отново.', 'danger')
    
    # Redirect based on user role
    if current_user.is_administrator():
        return redirect(url_for('admin_panel'))
    return redirect(url_for('my_jobs'))

@app.route('/contact')
def contact():
    return render_template('contact.html')

@app.route('/view-cv/<int:application_id>')
@login_required
def view_cv(application_id):
    application = Application.query.get_or_404(application_id)
    job = Job.query.get_or_404(application.job_id)
    
    # Check if the current user is the job poster
    if job.user_id != current_user.id:
        flash('Нямате достъп до това CV')
        return redirect(url_for('my_jobs'))
    
    # Get the full path to the CV file
    cv_path = os.path.join(app.config['UPLOAD_FOLDER'], application.cv_path)
    
    # Check if file exists
    if not os.path.exists(cv_path):
        flash('CV файлът не може да бъде намерен')
        return redirect(url_for('my_jobs'))
    
    # Send the file
    return send_from_directory(app.config['UPLOAD_FOLDER'], application.cv_path, as_attachment=True)

@app.route('/candidate/<int:application_id>')
@login_required
def candidate_profile(application_id):
    application = Application.query.get_or_404(application_id)
    job = Job.query.get_or_404(application.job_id)
    
    # Check if the current user is the job poster
    if job.user_id != current_user.id:
        flash('Нямате достъп до този профил')
        return redirect(url_for('my_jobs'))
    
    return render_template('candidate_profile.html', application=application)

def admin_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if not current_user.is_authenticated or not current_user.is_administrator():
            flash('Нямате достъп до тази страница', 'danger')
            return redirect(url_for('home'))
        return f(*args, **kwargs)
    return decorated_function

@app.route('/admin_panel')
@login_required
@admin_required
def admin_panel():
    users = User.query.all()
    jobs = Job.query.all()
    return render_template('admin_panel.html', users=users, jobs=jobs)

@app.route('/delete_user/<int:user_id>')
@login_required
@admin_required
def delete_user(user_id):
    user = User.query.get_or_404(user_id)
    if user.id == current_user.id:
        flash('Не можете да изтриете собствения си акаунт!', 'danger')
        return redirect(url_for('admin_panel'))
    
    # Delete all applications associated with the user
    Application.query.filter_by(user_id=user_id).delete()
    # Delete all jobs posted by the user
    Job.query.filter_by(user_id=user_id).delete()
    
    db.session.delete(user)
    db.session.commit()
    flash('Потребителят беше успешно изтрит!', 'success')
    return redirect(url_for('admin_panel'))

@app.route('/toggle_job_status/<int:job_id>')
@login_required
@admin_required
def toggle_job_status(job_id):
    job = Job.query.get_or_404(job_id)
    job.is_active = not job.is_active
    db.session.commit()
    status = "активирана" if job.is_active else "деактивирана"
    flash(f'Обявата беше успешно {status}!', 'success')
    return redirect(url_for('admin_panel'))

@app.route('/toggle_admin/<int:user_id>')
@login_required
@admin_required
def toggle_admin(user_id):
    user = User.query.get_or_404(user_id)
    if user.id != current_user.id:  # Предотвратяваме админ да премахне собствените си права
        user.is_admin = not user.is_admin
        db.session.commit()
        flash(f'Админ правата на {user.username} са {"добавени" if user.is_admin else "премахнати"}', 'success')
    return redirect(url_for('admin_panel'))

# Добавяме функция за обновяване на админ статуса на съществуващия админ
def update_admin_status():
    with app.app_context():
        admin = User.query.filter_by(username='admin').first()
        if admin and not admin.is_admin:
            admin.is_admin = True
            db.session.commit()
            print("Admin status updated successfully")

if __name__ == '__main__':
    create_database()
    update_admin_status()  # Обновяваме админ статуса при стартиране
    app.run(debug=True)
