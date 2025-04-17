-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 15 апр 2025 в 11:33
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `aljobs`
--

-- --------------------------------------------------------

--
-- Структура на таблица `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cover_letter` text NOT NULL,
  `cv_path` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `application`
--

INSERT INTO `application` (`id`, `job_id`, `user_id`, `full_name`, `phone`, `cover_letter`, `cv_path`, `created_date`) VALUES
(4, 15, 2, 'Галина Иванова', '0886885536', 'Искам да работя за вас', '20250414_142525_pdf', '2025-04-14 11:25:25'),
(5, 14, 2, 'Галина Иванова', '0886885536', 'vvvvv', '20250415_121637_6.docx', '2025-04-15 09:16:37'),
(6, 15, 1, 'Росен Боянов', '0886885536', 'Искам да бачкам', '20250415_122524_6.docx', '2025-04-15 09:25:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary`
-- (See below for the actual view)
--
CREATE TABLE `host_summary` (
`host` int(1)
,`statements` int(1)
,`statement_latency` int(1)
,`statement_avg_latency` int(1)
,`table_scans` int(1)
,`file_ios` int(1)
,`file_io_latency` int(1)
,`current_connections` int(1)
,`total_connections` int(1)
,`unique_users` int(1)
,`current_memory` int(1)
,`total_memory_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary_by_file_io`
-- (See below for the actual view)
--
CREATE TABLE `host_summary_by_file_io` (
`host` int(1)
,`ios` int(1)
,`io_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary_by_file_io_type`
-- (See below for the actual view)
--
CREATE TABLE `host_summary_by_file_io_type` (
`host` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary_by_stages`
-- (See below for the actual view)
--
CREATE TABLE `host_summary_by_stages` (
`host` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary_by_statement_latency`
-- (See below for the actual view)
--
CREATE TABLE `host_summary_by_statement_latency` (
`host` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `host_summary_by_statement_type`
-- (See below for the actual view)
--
CREATE TABLE `host_summary_by_statement_type` (
`host` int(1)
,`statement` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `innodb_buffer_stats_by_schema`
-- (See below for the actual view)
--
CREATE TABLE `innodb_buffer_stats_by_schema` (
`object_schema` int(1)
,`allocated` int(1)
,`data` int(1)
,`pages` int(1)
,`pages_hashed` int(1)
,`pages_old` int(1)
,`rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `innodb_buffer_stats_by_table`
-- (See below for the actual view)
--
CREATE TABLE `innodb_buffer_stats_by_table` (
`object_schema` int(1)
,`object_name` int(1)
,`allocated` int(1)
,`data` int(1)
,`pages` int(1)
,`pages_hashed` int(1)
,`pages_old` int(1)
,`rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `innodb_lock_waits`
-- (See below for the actual view)
--
CREATE TABLE `innodb_lock_waits` (
`wait_started` int(1)
,`wait_age` int(1)
,`wait_age_secs` int(1)
,`locked_table` int(1)
,`locked_table_schema` int(1)
,`locked_table_name` int(1)
,`locked_table_partition` int(1)
,`locked_table_subpartition` int(1)
,`locked_index` int(1)
,`locked_type` int(1)
,`waiting_trx_id` int(1)
,`waiting_trx_started` int(1)
,`waiting_trx_age` int(1)
,`waiting_trx_rows_locked` int(1)
,`waiting_trx_rows_modified` int(1)
,`waiting_pid` int(1)
,`waiting_query` int(1)
,`waiting_lock_id` int(1)
,`waiting_lock_mode` int(1)
,`blocking_trx_id` int(1)
,`blocking_pid` int(1)
,`blocking_query` int(1)
,`blocking_lock_id` int(1)
,`blocking_lock_mode` int(1)
,`blocking_trx_started` int(1)
,`blocking_trx_age` int(1)
,`blocking_trx_rows_locked` int(1)
,`blocking_trx_rows_modified` int(1)
,`sql_kill_blocking_query` int(1)
,`sql_kill_blocking_connection` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `io_by_thread_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `io_by_thread_by_latency` (
`user` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`thread_id` int(1)
,`processlist_id` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `io_global_by_file_by_bytes`
-- (See below for the actual view)
--
CREATE TABLE `io_global_by_file_by_bytes` (
`file` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_write` int(1)
,`total` int(1)
,`write_pct` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `io_global_by_file_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `io_global_by_file_by_latency` (
`file` int(1)
,`total` int(1)
,`total_latency` int(1)
,`count_read` int(1)
,`read_latency` int(1)
,`count_write` int(1)
,`write_latency` int(1)
,`count_misc` int(1)
,`misc_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `io_global_by_wait_by_bytes`
-- (See below for the actual view)
--
CREATE TABLE `io_global_by_wait_by_bytes` (
`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_written` int(1)
,`total_requested` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `io_global_by_wait_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `io_global_by_wait_by_latency` (
`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`read_latency` int(1)
,`write_latency` int(1)
,`misc_latency` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_written` int(1)
);

-- --------------------------------------------------------

--
-- Структура на таблица `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `experience_level` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `job`
--

INSERT INTO `job` (`id`, `title`, `description`, `requirements`, `company`, `location`, `salary`, `job_type`, `experience_level`, `created_date`, `user_id`, `is_active`) VALUES
(14, 'Фармацевт с лекарства', 'Продаване на лекарства', 'Бакалавър медицина', 'Марешки', 'София', '2500', 'contract', 'junior', '2025-04-14 11:22:46', 2, 0),
(15, 'Общ работник', 'Помощник', 'Да помагат на строителите', 'Стройко', 'Варна', '1200', 'Пълно работно време', 'До 1 година', '2025-04-14 11:24:57', 2, 1),
(16, 'Софтуерен инженер ', 'Програмиране на софтуер', '-Опит във сферата\r\n-Добра работа в екип\r\n-Умения за работа с много езици', 'Единамикс', 'Стара Загора', '3300', 'contract', 'lead', '2025-04-15 09:24:23', 2, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `latest_file_io`
-- (See below for the actual view)
--
CREATE TABLE `latest_file_io` (
`thread` int(1)
,`file` int(1)
,`latency` int(1)
,`operation` int(1)
,`requested` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memory_by_host_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `memory_by_host_by_current_bytes` (
`host` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memory_by_thread_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `memory_by_thread_by_current_bytes` (
`thread_id` int(1)
,`user` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memory_by_user_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `memory_by_user_by_current_bytes` (
`user` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memory_global_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `memory_global_by_current_bytes` (
`event_name` int(1)
,`current_count` int(1)
,`current_alloc` int(1)
,`current_avg_alloc` int(1)
,`high_count` int(1)
,`high_alloc` int(1)
,`high_avg_alloc` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memory_global_total`
-- (See below for the actual view)
--
CREATE TABLE `memory_global_total` (
`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `metrics`
-- (See below for the actual view)
--
CREATE TABLE `metrics` (
`Variable_name` int(1)
,`Variable_value` int(1)
,`Type` int(1)
,`Enabled` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `processlist`
-- (See below for the actual view)
--
CREATE TABLE `processlist` (
`thd_id` int(1)
,`conn_id` int(1)
,`user` int(1)
,`db` int(1)
,`command` int(1)
,`state` int(1)
,`time` int(1)
,`current_statement` int(1)
,`execution_engine` int(1)
,`statement_latency` int(1)
,`progress` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_examined` int(1)
,`rows_sent` int(1)
,`rows_affected` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`full_scan` int(1)
,`last_statement` int(1)
,`last_statement_latency` int(1)
,`current_memory` int(1)
,`last_wait` int(1)
,`last_wait_latency` int(1)
,`source` int(1)
,`trx_latency` int(1)
,`trx_state` int(1)
,`trx_autocommit` int(1)
,`pid` int(1)
,`program_name` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ps_check_lost_instrumentation`
-- (See below for the actual view)
--
CREATE TABLE `ps_check_lost_instrumentation` (
`variable_name` int(1)
,`variable_value` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_auto_increment_columns`
-- (See below for the actual view)
--
CREATE TABLE `schema_auto_increment_columns` (
`table_schema` int(1)
,`table_name` int(1)
,`column_name` int(1)
,`data_type` int(1)
,`column_type` int(1)
,`is_signed` int(1)
,`is_unsigned` int(1)
,`max_value` int(1)
,`auto_increment` int(1)
,`auto_increment_ratio` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_index_statistics`
-- (See below for the actual view)
--
CREATE TABLE `schema_index_statistics` (
`table_schema` int(1)
,`table_name` int(1)
,`index_name` int(1)
,`rows_selected` int(1)
,`select_latency` int(1)
,`rows_inserted` int(1)
,`insert_latency` int(1)
,`rows_updated` int(1)
,`update_latency` int(1)
,`rows_deleted` int(1)
,`delete_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_object_overview`
-- (See below for the actual view)
--
CREATE TABLE `schema_object_overview` (
`db` int(1)
,`object_type` int(1)
,`count` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_redundant_indexes`
-- (See below for the actual view)
--
CREATE TABLE `schema_redundant_indexes` (
`table_schema` int(1)
,`table_name` int(1)
,`redundant_index_name` int(1)
,`redundant_index_columns` int(1)
,`redundant_index_non_unique` int(1)
,`dominant_index_name` int(1)
,`dominant_index_columns` int(1)
,`dominant_index_non_unique` int(1)
,`subpart_exists` int(1)
,`sql_drop_index` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_tables_with_full_table_scans`
-- (See below for the actual view)
--
CREATE TABLE `schema_tables_with_full_table_scans` (
`object_schema` int(1)
,`object_name` int(1)
,`rows_full_scanned` int(1)
,`latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_table_lock_waits`
-- (See below for the actual view)
--
CREATE TABLE `schema_table_lock_waits` (
`object_schema` int(1)
,`object_name` int(1)
,`waiting_thread_id` int(1)
,`waiting_pid` int(1)
,`waiting_account` int(1)
,`waiting_lock_type` int(1)
,`waiting_lock_duration` int(1)
,`waiting_query` int(1)
,`waiting_query_secs` int(1)
,`waiting_query_rows_affected` int(1)
,`waiting_query_rows_examined` int(1)
,`blocking_thread_id` int(1)
,`blocking_pid` int(1)
,`blocking_account` int(1)
,`blocking_lock_type` int(1)
,`blocking_lock_duration` int(1)
,`sql_kill_blocking_query` int(1)
,`sql_kill_blocking_connection` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_table_statistics_with_buffer`
-- (See below for the actual view)
--
CREATE TABLE `schema_table_statistics_with_buffer` (
`table_schema` int(1)
,`table_name` int(1)
,`rows_fetched` int(1)
,`fetch_latency` int(1)
,`rows_inserted` int(1)
,`insert_latency` int(1)
,`rows_updated` int(1)
,`update_latency` int(1)
,`rows_deleted` int(1)
,`delete_latency` int(1)
,`io_read_requests` int(1)
,`io_read` int(1)
,`io_read_latency` int(1)
,`io_write_requests` int(1)
,`io_write` int(1)
,`io_write_latency` int(1)
,`io_misc_requests` int(1)
,`io_misc_latency` int(1)
,`innodb_buffer_allocated` int(1)
,`innodb_buffer_data` int(1)
,`innodb_buffer_free` int(1)
,`innodb_buffer_pages` int(1)
,`innodb_buffer_pages_hashed` int(1)
,`innodb_buffer_pages_old` int(1)
,`innodb_buffer_rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schema_unused_indexes`
-- (See below for the actual view)
--
CREATE TABLE `schema_unused_indexes` (
`object_schema` int(1)
,`object_name` int(1)
,`index_name` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `session`
-- (See below for the actual view)
--
CREATE TABLE `session` (
`thd_id` int(1)
,`conn_id` int(1)
,`user` int(1)
,`db` int(1)
,`command` int(1)
,`state` int(1)
,`time` int(1)
,`current_statement` int(1)
,`execution_engine` int(1)
,`statement_latency` int(1)
,`progress` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_examined` int(1)
,`rows_sent` int(1)
,`rows_affected` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`full_scan` int(1)
,`last_statement` int(1)
,`last_statement_latency` int(1)
,`current_memory` int(1)
,`last_wait` int(1)
,`last_wait_latency` int(1)
,`source` int(1)
,`trx_latency` int(1)
,`trx_state` int(1)
,`trx_autocommit` int(1)
,`pid` int(1)
,`program_name` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `session_ssl_status`
-- (See below for the actual view)
--
CREATE TABLE `session_ssl_status` (
`thread_id` int(1)
,`ssl_version` int(1)
,`ssl_cipher` int(1)
,`ssl_sessions_reused` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statements_with_errors_or_warnings`
-- (See below for the actual view)
--
CREATE TABLE `statements_with_errors_or_warnings` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`errors` int(1)
,`error_pct` int(1)
,`warnings` int(1)
,`warning_pct` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statements_with_full_table_scans`
-- (See below for the actual view)
--
CREATE TABLE `statements_with_full_table_scans` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`no_index_used_count` int(1)
,`no_good_index_used_count` int(1)
,`no_index_used_pct` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_sent_avg` int(1)
,`rows_examined_avg` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statements_with_runtimes_in_95th_percentile`
-- (See below for the actual view)
--
CREATE TABLE `statements_with_runtimes_in_95th_percentile` (
`query` int(1)
,`db` int(1)
,`full_scan` int(1)
,`exec_count` int(1)
,`err_count` int(1)
,`warn_count` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`avg_latency` int(1)
,`rows_sent` int(1)
,`rows_sent_avg` int(1)
,`rows_examined` int(1)
,`rows_examined_avg` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statements_with_sorting`
-- (See below for the actual view)
--
CREATE TABLE `statements_with_sorting` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`sort_merge_passes` int(1)
,`avg_sort_merges` int(1)
,`sorts_using_scans` int(1)
,`sort_using_range` int(1)
,`rows_sorted` int(1)
,`avg_rows_sorted` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statements_with_temp_tables`
-- (See below for the actual view)
--
CREATE TABLE `statements_with_temp_tables` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`memory_tmp_tables` int(1)
,`disk_tmp_tables` int(1)
,`avg_tmp_tables_per_query` int(1)
,`tmp_tables_to_disk_pct` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `statement_analysis`
-- (See below for the actual view)
--
CREATE TABLE `statement_analysis` (
`query` int(1)
,`db` int(1)
,`full_scan` int(1)
,`exec_count` int(1)
,`err_count` int(1)
,`warn_count` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`avg_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_sent_avg` int(1)
,`rows_examined` int(1)
,`rows_examined_avg` int(1)
,`rows_affected` int(1)
,`rows_affected_avg` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`rows_sorted` int(1)
,`sort_merge_passes` int(1)
,`max_controlled_memory` int(1)
,`max_total_memory` int(1)
,`digest` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
);

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `created_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `is_admin`, `created_date`) VALUES
(1, 'admin', 'admin@example.com', 'scrypt:32768:8:1$R28oKQzsgVElnhTs$07e3d33871dc73101e923af377b5cbc49bb02fadd754f7aa5506dcc242f030bbc8418f378516438c3b49605c70231e541b31b929c3281a27a52351e868a0b314', 1, '2025-03-27 18:46:09'),
(2, 'Aleksoo', 'alekshristov2006@gmail.com', 'scrypt:32768:8:1$uUxzyDSOzpHW9jyG$3cbe4b15919a3fec36b8324865a436b0db887fdaf644d674fbf134053133116715a7cedaea91d63f7ed03312436236abef288b8ac22988ce6faff0e9d150a24f', 1, '2025-03-27 18:46:09'),
(3, 'zulu87', 'rusk253@abv.bg', 'scrypt:32768:8:1$siS1sGaoUbvS9Mc6$7757d238a2418180069d1570177901329732a520cc9d68ab7dd79b492efcc66cd374e1bf5b5366d85b993bc9b092c0649387fdca5a2fb4cea6495f3f31d2327e', 0, '2025-03-27 18:46:09'),
(4, 'galqiv75', 'dimeon1234@abv.bg', 'scrypt:32768:8:1$cmaCDWW724dLHZ3C$23304ab23588bbf13cba6ad18998ed04e4df8ad130586425b57f99a262310703d8710e118bd59a203b70136ba211405f947762d5d8686fc19ba535cc0ed1e8da', 0, '2025-04-14 08:56:17'),
(5, 'test', 'galqiv75@gmail.com', 'scrypt:32768:8:1$lbI2CPrWrPbNrKwT$c74e16a0b71374d5f4306523bd2d8d4ed057986ea477763d27d16befb0a574c59ec5f81945caebe2399ca352169e2c62f4ed201271fb932caabebab625221189', 0, '2025-04-14 08:58:47'),
(6, 'galq', 'galq@gmail.com', 'scrypt:32768:8:1$aUibKfqES3gUFplT$f136ee08594e1c0f587ddbb603838e15e3c18ddc5b1956f758c16ae05f7149ead6812ba954e14ed32014584b8e808f24496a0d48cf2a78a35de373b10c5ac53e', 0, '2025-04-14 13:24:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary`
-- (See below for the actual view)
--
CREATE TABLE `user_summary` (
`user` int(1)
,`statements` int(1)
,`statement_latency` int(1)
,`statement_avg_latency` int(1)
,`table_scans` int(1)
,`file_ios` int(1)
,`file_io_latency` int(1)
,`current_connections` int(1)
,`total_connections` int(1)
,`unique_hosts` int(1)
,`current_memory` int(1)
,`total_memory_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary_by_file_io`
-- (See below for the actual view)
--
CREATE TABLE `user_summary_by_file_io` (
`user` int(1)
,`ios` int(1)
,`io_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary_by_file_io_type`
-- (See below for the actual view)
--
CREATE TABLE `user_summary_by_file_io_type` (
`user` int(1)
,`event_name` int(1)
,`total` int(1)
,`latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary_by_stages`
-- (See below for the actual view)
--
CREATE TABLE `user_summary_by_stages` (
`user` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary_by_statement_latency`
-- (See below for the actual view)
--
CREATE TABLE `user_summary_by_statement_latency` (
`user` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_summary_by_statement_type`
-- (See below for the actual view)
--
CREATE TABLE `user_summary_by_statement_type` (
`user` int(1)
,`statement` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `version`
-- (See below for the actual view)
--
CREATE TABLE `version` (
`sys_version` int(1)
,`mysql_version` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `waits_by_host_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `waits_by_host_by_latency` (
`host` int(1)
,`event` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `waits_by_user_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `waits_by_user_by_latency` (
`user` int(1)
,`event` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `waits_global_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `waits_global_by_latency` (
`events` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wait_classes_global_by_avg_latency`
-- (See below for the actual view)
--
CREATE TABLE `wait_classes_global_by_avg_latency` (
`event_class` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wait_classes_global_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `wait_classes_global_by_latency` (
`event_class` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary` (
`host` int(1)
,`statements` int(1)
,`statement_latency` int(1)
,`statement_avg_latency` int(1)
,`table_scans` int(1)
,`file_ios` int(1)
,`file_io_latency` int(1)
,`current_connections` int(1)
,`total_connections` int(1)
,`unique_users` int(1)
,`current_memory` int(1)
,`total_memory_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary_by_file_io`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary_by_file_io` (
`host` int(1)
,`ios` int(1)
,`io_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary_by_file_io_type`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary_by_file_io_type` (
`host` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary_by_stages`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary_by_stages` (
`host` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary_by_statement_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary_by_statement_latency` (
`host` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$host_summary_by_statement_type`
-- (See below for the actual view)
--
CREATE TABLE `x$host_summary_by_statement_type` (
`host` int(1)
,`statement` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$innodb_buffer_stats_by_schema`
-- (See below for the actual view)
--
CREATE TABLE `x$innodb_buffer_stats_by_schema` (
`object_schema` int(1)
,`allocated` int(1)
,`data` int(1)
,`pages` int(1)
,`pages_hashed` int(1)
,`pages_old` int(1)
,`rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$innodb_buffer_stats_by_table`
-- (See below for the actual view)
--
CREATE TABLE `x$innodb_buffer_stats_by_table` (
`object_schema` int(1)
,`object_name` int(1)
,`allocated` int(1)
,`data` int(1)
,`pages` int(1)
,`pages_hashed` int(1)
,`pages_old` int(1)
,`rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$innodb_lock_waits`
-- (See below for the actual view)
--
CREATE TABLE `x$innodb_lock_waits` (
`wait_started` int(1)
,`wait_age` int(1)
,`wait_age_secs` int(1)
,`locked_table` int(1)
,`locked_table_schema` int(1)
,`locked_table_name` int(1)
,`locked_table_partition` int(1)
,`locked_table_subpartition` int(1)
,`locked_index` int(1)
,`locked_type` int(1)
,`waiting_trx_id` int(1)
,`waiting_trx_started` int(1)
,`waiting_trx_age` int(1)
,`waiting_trx_rows_locked` int(1)
,`waiting_trx_rows_modified` int(1)
,`waiting_pid` int(1)
,`waiting_query` int(1)
,`waiting_lock_id` int(1)
,`waiting_lock_mode` int(1)
,`blocking_trx_id` int(1)
,`blocking_pid` int(1)
,`blocking_query` int(1)
,`blocking_lock_id` int(1)
,`blocking_lock_mode` int(1)
,`blocking_trx_started` int(1)
,`blocking_trx_age` int(1)
,`blocking_trx_rows_locked` int(1)
,`blocking_trx_rows_modified` int(1)
,`sql_kill_blocking_query` int(1)
,`sql_kill_blocking_connection` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$io_by_thread_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$io_by_thread_by_latency` (
`user` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`thread_id` int(1)
,`processlist_id` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$io_global_by_file_by_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$io_global_by_file_by_bytes` (
`file` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_write` int(1)
,`total` int(1)
,`write_pct` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$io_global_by_file_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$io_global_by_file_by_latency` (
`file` int(1)
,`total` int(1)
,`total_latency` int(1)
,`count_read` int(1)
,`read_latency` int(1)
,`count_write` int(1)
,`write_latency` int(1)
,`count_misc` int(1)
,`misc_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$io_global_by_wait_by_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$io_global_by_wait_by_bytes` (
`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_written` int(1)
,`total_requested` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$io_global_by_wait_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$io_global_by_wait_by_latency` (
`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
,`read_latency` int(1)
,`write_latency` int(1)
,`misc_latency` int(1)
,`count_read` int(1)
,`total_read` int(1)
,`avg_read` int(1)
,`count_write` int(1)
,`total_written` int(1)
,`avg_written` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$latest_file_io`
-- (See below for the actual view)
--
CREATE TABLE `x$latest_file_io` (
`thread` int(1)
,`file` int(1)
,`latency` int(1)
,`operation` int(1)
,`requested` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$memory_by_host_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$memory_by_host_by_current_bytes` (
`host` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$memory_by_thread_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$memory_by_thread_by_current_bytes` (
`thread_id` int(1)
,`user` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$memory_by_user_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$memory_by_user_by_current_bytes` (
`user` int(1)
,`current_count_used` int(1)
,`current_allocated` int(1)
,`current_avg_alloc` int(1)
,`current_max_alloc` int(1)
,`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$memory_global_by_current_bytes`
-- (See below for the actual view)
--
CREATE TABLE `x$memory_global_by_current_bytes` (
`event_name` int(1)
,`current_count` int(1)
,`current_alloc` int(1)
,`current_avg_alloc` int(1)
,`high_count` int(1)
,`high_alloc` int(1)
,`high_avg_alloc` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$memory_global_total`
-- (See below for the actual view)
--
CREATE TABLE `x$memory_global_total` (
`total_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$processlist`
-- (See below for the actual view)
--
CREATE TABLE `x$processlist` (
`thd_id` int(1)
,`conn_id` int(1)
,`user` int(1)
,`db` int(1)
,`command` int(1)
,`state` int(1)
,`time` int(1)
,`current_statement` int(1)
,`execution_engine` int(1)
,`statement_latency` int(1)
,`progress` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_examined` int(1)
,`rows_sent` int(1)
,`rows_affected` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`full_scan` int(1)
,`last_statement` int(1)
,`last_statement_latency` int(1)
,`current_memory` int(1)
,`last_wait` int(1)
,`last_wait_latency` int(1)
,`source` int(1)
,`trx_latency` int(1)
,`trx_state` int(1)
,`trx_autocommit` int(1)
,`pid` int(1)
,`program_name` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$ps_digest_95th_percentile_by_avg_us`
-- (See below for the actual view)
--
CREATE TABLE `x$ps_digest_95th_percentile_by_avg_us` (
`avg_us` int(1)
,`percentile` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$ps_digest_avg_latency_distribution`
-- (See below for the actual view)
--
CREATE TABLE `x$ps_digest_avg_latency_distribution` (
`cnt` int(1)
,`avg_us` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$ps_schema_table_statistics_io`
-- (See below for the actual view)
--
CREATE TABLE `x$ps_schema_table_statistics_io` (
`table_schema` int(1)
,`table_name` int(1)
,`count_read` int(1)
,`sum_number_of_bytes_read` int(1)
,`sum_timer_read` int(1)
,`count_write` int(1)
,`sum_number_of_bytes_write` int(1)
,`sum_timer_write` int(1)
,`count_misc` int(1)
,`sum_timer_misc` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_flattened_keys`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_flattened_keys` (
`table_schema` int(1)
,`table_name` int(1)
,`index_name` int(1)
,`non_unique` int(1)
,`subpart_exists` int(1)
,`index_columns` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_index_statistics`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_index_statistics` (
`table_schema` int(1)
,`table_name` int(1)
,`index_name` int(1)
,`rows_selected` int(1)
,`select_latency` int(1)
,`rows_inserted` int(1)
,`insert_latency` int(1)
,`rows_updated` int(1)
,`update_latency` int(1)
,`rows_deleted` int(1)
,`delete_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_tables_with_full_table_scans`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_tables_with_full_table_scans` (
`object_schema` int(1)
,`object_name` int(1)
,`rows_full_scanned` int(1)
,`latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_table_lock_waits`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_table_lock_waits` (
`object_schema` int(1)
,`object_name` int(1)
,`waiting_thread_id` int(1)
,`waiting_pid` int(1)
,`waiting_account` int(1)
,`waiting_lock_type` int(1)
,`waiting_lock_duration` int(1)
,`waiting_query` int(1)
,`waiting_query_secs` int(1)
,`waiting_query_rows_affected` int(1)
,`waiting_query_rows_examined` int(1)
,`blocking_thread_id` int(1)
,`blocking_pid` int(1)
,`blocking_account` int(1)
,`blocking_lock_type` int(1)
,`blocking_lock_duration` int(1)
,`sql_kill_blocking_query` int(1)
,`sql_kill_blocking_connection` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_table_statistics`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_table_statistics` (
`table_schema` int(1)
,`table_name` int(1)
,`total_latency` int(1)
,`rows_fetched` int(1)
,`fetch_latency` int(1)
,`rows_inserted` int(1)
,`insert_latency` int(1)
,`rows_updated` int(1)
,`update_latency` int(1)
,`rows_deleted` int(1)
,`delete_latency` int(1)
,`io_read_requests` int(1)
,`io_read` int(1)
,`io_read_latency` int(1)
,`io_write_requests` int(1)
,`io_write` int(1)
,`io_write_latency` int(1)
,`io_misc_requests` int(1)
,`io_misc_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$schema_table_statistics_with_buffer`
-- (See below for the actual view)
--
CREATE TABLE `x$schema_table_statistics_with_buffer` (
`table_schema` int(1)
,`table_name` int(1)
,`rows_fetched` int(1)
,`fetch_latency` int(1)
,`rows_inserted` int(1)
,`insert_latency` int(1)
,`rows_updated` int(1)
,`update_latency` int(1)
,`rows_deleted` int(1)
,`delete_latency` int(1)
,`io_read_requests` int(1)
,`io_read` int(1)
,`io_read_latency` int(1)
,`io_write_requests` int(1)
,`io_write` int(1)
,`io_write_latency` int(1)
,`io_misc_requests` int(1)
,`io_misc_latency` int(1)
,`innodb_buffer_allocated` int(1)
,`innodb_buffer_data` int(1)
,`innodb_buffer_free` int(1)
,`innodb_buffer_pages` int(1)
,`innodb_buffer_pages_hashed` int(1)
,`innodb_buffer_pages_old` int(1)
,`innodb_buffer_rows_cached` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$session`
-- (See below for the actual view)
--
CREATE TABLE `x$session` (
`thd_id` int(1)
,`conn_id` int(1)
,`user` int(1)
,`db` int(1)
,`command` int(1)
,`state` int(1)
,`time` int(1)
,`current_statement` int(1)
,`execution_engine` int(1)
,`statement_latency` int(1)
,`progress` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_examined` int(1)
,`rows_sent` int(1)
,`rows_affected` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`full_scan` int(1)
,`last_statement` int(1)
,`last_statement_latency` int(1)
,`current_memory` int(1)
,`last_wait` int(1)
,`last_wait_latency` int(1)
,`source` int(1)
,`trx_latency` int(1)
,`trx_state` int(1)
,`trx_autocommit` int(1)
,`pid` int(1)
,`program_name` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statements_with_errors_or_warnings`
-- (See below for the actual view)
--
CREATE TABLE `x$statements_with_errors_or_warnings` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`errors` int(1)
,`error_pct` int(1)
,`warnings` int(1)
,`warning_pct` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statements_with_full_table_scans`
-- (See below for the actual view)
--
CREATE TABLE `x$statements_with_full_table_scans` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`no_index_used_count` int(1)
,`no_good_index_used_count` int(1)
,`no_index_used_pct` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_sent_avg` int(1)
,`rows_examined_avg` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statements_with_runtimes_in_95th_percentile`
-- (See below for the actual view)
--
CREATE TABLE `x$statements_with_runtimes_in_95th_percentile` (
`query` int(1)
,`db` int(1)
,`full_scan` int(1)
,`exec_count` int(1)
,`err_count` int(1)
,`warn_count` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`avg_latency` int(1)
,`rows_sent` int(1)
,`rows_sent_avg` int(1)
,`rows_examined` int(1)
,`rows_examined_avg` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statements_with_sorting`
-- (See below for the actual view)
--
CREATE TABLE `x$statements_with_sorting` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`sort_merge_passes` int(1)
,`avg_sort_merges` int(1)
,`sorts_using_scans` int(1)
,`sort_using_range` int(1)
,`rows_sorted` int(1)
,`avg_rows_sorted` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statements_with_temp_tables`
-- (See below for the actual view)
--
CREATE TABLE `x$statements_with_temp_tables` (
`query` int(1)
,`db` int(1)
,`exec_count` int(1)
,`total_latency` int(1)
,`memory_tmp_tables` int(1)
,`disk_tmp_tables` int(1)
,`avg_tmp_tables_per_query` int(1)
,`tmp_tables_to_disk_pct` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
,`digest` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$statement_analysis`
-- (See below for the actual view)
--
CREATE TABLE `x$statement_analysis` (
`query` int(1)
,`db` int(1)
,`full_scan` int(1)
,`exec_count` int(1)
,`exec_secondary_count` int(1)
,`err_count` int(1)
,`warn_count` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`avg_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_sent_avg` int(1)
,`rows_examined` int(1)
,`rows_examined_avg` int(1)
,`rows_affected` int(1)
,`rows_affected_avg` int(1)
,`tmp_tables` int(1)
,`tmp_disk_tables` int(1)
,`rows_sorted` int(1)
,`sort_merge_passes` int(1)
,`max_controlled_memory` int(1)
,`max_total_memory` int(1)
,`digest` int(1)
,`first_seen` int(1)
,`last_seen` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary` (
`user` int(1)
,`statements` int(1)
,`statement_latency` int(1)
,`statement_avg_latency` int(1)
,`table_scans` int(1)
,`file_ios` int(1)
,`file_io_latency` int(1)
,`current_connections` int(1)
,`total_connections` int(1)
,`unique_hosts` int(1)
,`current_memory` int(1)
,`total_memory_allocated` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary_by_file_io`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary_by_file_io` (
`user` int(1)
,`ios` int(1)
,`io_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary_by_file_io_type`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary_by_file_io_type` (
`user` int(1)
,`event_name` int(1)
,`total` int(1)
,`latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary_by_stages`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary_by_stages` (
`user` int(1)
,`event_name` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary_by_statement_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary_by_statement_latency` (
`user` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$user_summary_by_statement_type`
-- (See below for the actual view)
--
CREATE TABLE `x$user_summary_by_statement_type` (
`user` int(1)
,`statement` int(1)
,`total` int(1)
,`total_latency` int(1)
,`max_latency` int(1)
,`lock_latency` int(1)
,`cpu_latency` int(1)
,`rows_sent` int(1)
,`rows_examined` int(1)
,`rows_affected` int(1)
,`full_scans` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$waits_by_host_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$waits_by_host_by_latency` (
`host` int(1)
,`event` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$waits_by_user_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$waits_by_user_by_latency` (
`user` int(1)
,`event` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$waits_global_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$waits_global_by_latency` (
`events` int(1)
,`total` int(1)
,`total_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$wait_classes_global_by_avg_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$wait_classes_global_by_avg_latency` (
`event_class` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `x$wait_classes_global_by_latency`
-- (See below for the actual view)
--
CREATE TABLE `x$wait_classes_global_by_latency` (
`event_class` int(1)
,`total` int(1)
,`total_latency` int(1)
,`min_latency` int(1)
,`avg_latency` int(1)
,`max_latency` int(1)
);

-- --------------------------------------------------------

--
-- Structure for view `host_summary`
--
DROP TABLE IF EXISTS `host_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary`  AS SELECT 1 AS `host`, 1 AS `statements`, 1 AS `statement_latency`, 1 AS `statement_avg_latency`, 1 AS `table_scans`, 1 AS `file_ios`, 1 AS `file_io_latency`, 1 AS `current_connections`, 1 AS `total_connections`, 1 AS `unique_users`, 1 AS `current_memory`, 1 AS `total_memory_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `host_summary_by_file_io`
--
DROP TABLE IF EXISTS `host_summary_by_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary_by_file_io`  AS SELECT 1 AS `host`, 1 AS `ios`, 1 AS `io_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `host_summary_by_file_io_type`
--
DROP TABLE IF EXISTS `host_summary_by_file_io_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary_by_file_io_type`  AS SELECT 1 AS `host`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `host_summary_by_stages`
--
DROP TABLE IF EXISTS `host_summary_by_stages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary_by_stages`  AS SELECT 1 AS `host`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `host_summary_by_statement_latency`
--
DROP TABLE IF EXISTS `host_summary_by_statement_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary_by_statement_latency`  AS SELECT 1 AS `host`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `host_summary_by_statement_type`
--
DROP TABLE IF EXISTS `host_summary_by_statement_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `host_summary_by_statement_type`  AS SELECT 1 AS `host`, 1 AS `statement`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `innodb_buffer_stats_by_schema`
--
DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `innodb_buffer_stats_by_schema`  AS SELECT 1 AS `object_schema`, 1 AS `allocated`, 1 AS `data`, 1 AS `pages`, 1 AS `pages_hashed`, 1 AS `pages_old`, 1 AS `rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `innodb_buffer_stats_by_table`
--
DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `innodb_buffer_stats_by_table`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `allocated`, 1 AS `data`, 1 AS `pages`, 1 AS `pages_hashed`, 1 AS `pages_old`, 1 AS `rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `innodb_lock_waits`
--
DROP TABLE IF EXISTS `innodb_lock_waits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `innodb_lock_waits`  AS SELECT 1 AS `wait_started`, 1 AS `wait_age`, 1 AS `wait_age_secs`, 1 AS `locked_table`, 1 AS `locked_table_schema`, 1 AS `locked_table_name`, 1 AS `locked_table_partition`, 1 AS `locked_table_subpartition`, 1 AS `locked_index`, 1 AS `locked_type`, 1 AS `waiting_trx_id`, 1 AS `waiting_trx_started`, 1 AS `waiting_trx_age`, 1 AS `waiting_trx_rows_locked`, 1 AS `waiting_trx_rows_modified`, 1 AS `waiting_pid`, 1 AS `waiting_query`, 1 AS `waiting_lock_id`, 1 AS `waiting_lock_mode`, 1 AS `blocking_trx_id`, 1 AS `blocking_pid`, 1 AS `blocking_query`, 1 AS `blocking_lock_id`, 1 AS `blocking_lock_mode`, 1 AS `blocking_trx_started`, 1 AS `blocking_trx_age`, 1 AS `blocking_trx_rows_locked`, 1 AS `blocking_trx_rows_modified`, 1 AS `sql_kill_blocking_query`, 1 AS `sql_kill_blocking_connection` ;

-- --------------------------------------------------------

--
-- Structure for view `io_by_thread_by_latency`
--
DROP TABLE IF EXISTS `io_by_thread_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `io_by_thread_by_latency`  AS SELECT 1 AS `user`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `thread_id`, 1 AS `processlist_id` ;

-- --------------------------------------------------------

--
-- Structure for view `io_global_by_file_by_bytes`
--
DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `io_global_by_file_by_bytes`  AS SELECT 1 AS `file`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_write`, 1 AS `total`, 1 AS `write_pct` ;

-- --------------------------------------------------------

--
-- Structure for view `io_global_by_file_by_latency`
--
DROP TABLE IF EXISTS `io_global_by_file_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `io_global_by_file_by_latency`  AS SELECT 1 AS `file`, 1 AS `total`, 1 AS `total_latency`, 1 AS `count_read`, 1 AS `read_latency`, 1 AS `count_write`, 1 AS `write_latency`, 1 AS `count_misc`, 1 AS `misc_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `io_global_by_wait_by_bytes`
--
DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `io_global_by_wait_by_bytes`  AS SELECT 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_written`, 1 AS `total_requested` ;

-- --------------------------------------------------------

--
-- Structure for view `io_global_by_wait_by_latency`
--
DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `io_global_by_wait_by_latency`  AS SELECT 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `read_latency`, 1 AS `write_latency`, 1 AS `misc_latency`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_written` ;

-- --------------------------------------------------------

--
-- Structure for view `latest_file_io`
--
DROP TABLE IF EXISTS `latest_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `latest_file_io`  AS SELECT 1 AS `thread`, 1 AS `file`, 1 AS `latency`, 1 AS `operation`, 1 AS `requested` ;

-- --------------------------------------------------------

--
-- Structure for view `memory_by_host_by_current_bytes`
--
DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memory_by_host_by_current_bytes`  AS SELECT 1 AS `host`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `memory_by_thread_by_current_bytes`
--
DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memory_by_thread_by_current_bytes`  AS SELECT 1 AS `thread_id`, 1 AS `user`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `memory_by_user_by_current_bytes`
--
DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memory_by_user_by_current_bytes`  AS SELECT 1 AS `user`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `memory_global_by_current_bytes`
--
DROP TABLE IF EXISTS `memory_global_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memory_global_by_current_bytes`  AS SELECT 1 AS `event_name`, 1 AS `current_count`, 1 AS `current_alloc`, 1 AS `current_avg_alloc`, 1 AS `high_count`, 1 AS `high_alloc`, 1 AS `high_avg_alloc` ;

-- --------------------------------------------------------

--
-- Structure for view `memory_global_total`
--
DROP TABLE IF EXISTS `memory_global_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memory_global_total`  AS SELECT 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `metrics`
--
DROP TABLE IF EXISTS `metrics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `metrics`  AS SELECT 1 AS `Variable_name`, 1 AS `Variable_value`, 1 AS `Type`, 1 AS `Enabled` ;

-- --------------------------------------------------------

--
-- Structure for view `processlist`
--
DROP TABLE IF EXISTS `processlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `processlist`  AS SELECT 1 AS `thd_id`, 1 AS `conn_id`, 1 AS `user`, 1 AS `db`, 1 AS `command`, 1 AS `state`, 1 AS `time`, 1 AS `current_statement`, 1 AS `execution_engine`, 1 AS `statement_latency`, 1 AS `progress`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_examined`, 1 AS `rows_sent`, 1 AS `rows_affected`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `full_scan`, 1 AS `last_statement`, 1 AS `last_statement_latency`, 1 AS `current_memory`, 1 AS `last_wait`, 1 AS `last_wait_latency`, 1 AS `source`, 1 AS `trx_latency`, 1 AS `trx_state`, 1 AS `trx_autocommit`, 1 AS `pid`, 1 AS `program_name` ;

-- --------------------------------------------------------

--
-- Structure for view `ps_check_lost_instrumentation`
--
DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ps_check_lost_instrumentation`  AS SELECT 1 AS `variable_name`, 1 AS `variable_value` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_auto_increment_columns`
--
DROP TABLE IF EXISTS `schema_auto_increment_columns`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_auto_increment_columns`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `column_name`, 1 AS `data_type`, 1 AS `column_type`, 1 AS `is_signed`, 1 AS `is_unsigned`, 1 AS `max_value`, 1 AS `auto_increment`, 1 AS `auto_increment_ratio` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_index_statistics`
--
DROP TABLE IF EXISTS `schema_index_statistics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_index_statistics`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `index_name`, 1 AS `rows_selected`, 1 AS `select_latency`, 1 AS `rows_inserted`, 1 AS `insert_latency`, 1 AS `rows_updated`, 1 AS `update_latency`, 1 AS `rows_deleted`, 1 AS `delete_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_object_overview`
--
DROP TABLE IF EXISTS `schema_object_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_object_overview`  AS SELECT 1 AS `db`, 1 AS `object_type`, 1 AS `count` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_redundant_indexes`
--
DROP TABLE IF EXISTS `schema_redundant_indexes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_redundant_indexes`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `redundant_index_name`, 1 AS `redundant_index_columns`, 1 AS `redundant_index_non_unique`, 1 AS `dominant_index_name`, 1 AS `dominant_index_columns`, 1 AS `dominant_index_non_unique`, 1 AS `subpart_exists`, 1 AS `sql_drop_index` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_tables_with_full_table_scans`
--
DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_tables_with_full_table_scans`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `rows_full_scanned`, 1 AS `latency` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_table_lock_waits`
--
DROP TABLE IF EXISTS `schema_table_lock_waits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_table_lock_waits`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `waiting_thread_id`, 1 AS `waiting_pid`, 1 AS `waiting_account`, 1 AS `waiting_lock_type`, 1 AS `waiting_lock_duration`, 1 AS `waiting_query`, 1 AS `waiting_query_secs`, 1 AS `waiting_query_rows_affected`, 1 AS `waiting_query_rows_examined`, 1 AS `blocking_thread_id`, 1 AS `blocking_pid`, 1 AS `blocking_account`, 1 AS `blocking_lock_type`, 1 AS `blocking_lock_duration`, 1 AS `sql_kill_blocking_query`, 1 AS `sql_kill_blocking_connection` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_table_statistics_with_buffer`
--
DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_table_statistics_with_buffer`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `rows_fetched`, 1 AS `fetch_latency`, 1 AS `rows_inserted`, 1 AS `insert_latency`, 1 AS `rows_updated`, 1 AS `update_latency`, 1 AS `rows_deleted`, 1 AS `delete_latency`, 1 AS `io_read_requests`, 1 AS `io_read`, 1 AS `io_read_latency`, 1 AS `io_write_requests`, 1 AS `io_write`, 1 AS `io_write_latency`, 1 AS `io_misc_requests`, 1 AS `io_misc_latency`, 1 AS `innodb_buffer_allocated`, 1 AS `innodb_buffer_data`, 1 AS `innodb_buffer_free`, 1 AS `innodb_buffer_pages`, 1 AS `innodb_buffer_pages_hashed`, 1 AS `innodb_buffer_pages_old`, 1 AS `innodb_buffer_rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `schema_unused_indexes`
--
DROP TABLE IF EXISTS `schema_unused_indexes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schema_unused_indexes`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `index_name` ;

-- --------------------------------------------------------

--
-- Structure for view `session`
--
DROP TABLE IF EXISTS `session`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `session`  AS SELECT 1 AS `thd_id`, 1 AS `conn_id`, 1 AS `user`, 1 AS `db`, 1 AS `command`, 1 AS `state`, 1 AS `time`, 1 AS `current_statement`, 1 AS `execution_engine`, 1 AS `statement_latency`, 1 AS `progress`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_examined`, 1 AS `rows_sent`, 1 AS `rows_affected`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `full_scan`, 1 AS `last_statement`, 1 AS `last_statement_latency`, 1 AS `current_memory`, 1 AS `last_wait`, 1 AS `last_wait_latency`, 1 AS `source`, 1 AS `trx_latency`, 1 AS `trx_state`, 1 AS `trx_autocommit`, 1 AS `pid`, 1 AS `program_name` ;

-- --------------------------------------------------------

--
-- Structure for view `session_ssl_status`
--
DROP TABLE IF EXISTS `session_ssl_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `session_ssl_status`  AS SELECT 1 AS `thread_id`, 1 AS `ssl_version`, 1 AS `ssl_cipher`, 1 AS `ssl_sessions_reused` ;

-- --------------------------------------------------------

--
-- Structure for view `statements_with_errors_or_warnings`
--
DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statements_with_errors_or_warnings`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `errors`, 1 AS `error_pct`, 1 AS `warnings`, 1 AS `warning_pct`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `statements_with_full_table_scans`
--
DROP TABLE IF EXISTS `statements_with_full_table_scans`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statements_with_full_table_scans`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `no_index_used_count`, 1 AS `no_good_index_used_count`, 1 AS `no_index_used_pct`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_sent_avg`, 1 AS `rows_examined_avg`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `statements_with_runtimes_in_95th_percentile`
--
DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statements_with_runtimes_in_95th_percentile`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `full_scan`, 1 AS `exec_count`, 1 AS `err_count`, 1 AS `warn_count`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `avg_latency`, 1 AS `rows_sent`, 1 AS `rows_sent_avg`, 1 AS `rows_examined`, 1 AS `rows_examined_avg`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `statements_with_sorting`
--
DROP TABLE IF EXISTS `statements_with_sorting`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statements_with_sorting`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `sort_merge_passes`, 1 AS `avg_sort_merges`, 1 AS `sorts_using_scans`, 1 AS `sort_using_range`, 1 AS `rows_sorted`, 1 AS `avg_rows_sorted`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `statements_with_temp_tables`
--
DROP TABLE IF EXISTS `statements_with_temp_tables`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statements_with_temp_tables`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `memory_tmp_tables`, 1 AS `disk_tmp_tables`, 1 AS `avg_tmp_tables_per_query`, 1 AS `tmp_tables_to_disk_pct`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `statement_analysis`
--
DROP TABLE IF EXISTS `statement_analysis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `statement_analysis`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `full_scan`, 1 AS `exec_count`, 1 AS `err_count`, 1 AS `warn_count`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `avg_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_sent_avg`, 1 AS `rows_examined`, 1 AS `rows_examined_avg`, 1 AS `rows_affected`, 1 AS `rows_affected_avg`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `rows_sorted`, 1 AS `sort_merge_passes`, 1 AS `max_controlled_memory`, 1 AS `max_total_memory`, 1 AS `digest`, 1 AS `first_seen`, 1 AS `last_seen` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary`
--
DROP TABLE IF EXISTS `user_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary`  AS SELECT 1 AS `user`, 1 AS `statements`, 1 AS `statement_latency`, 1 AS `statement_avg_latency`, 1 AS `table_scans`, 1 AS `file_ios`, 1 AS `file_io_latency`, 1 AS `current_connections`, 1 AS `total_connections`, 1 AS `unique_hosts`, 1 AS `current_memory`, 1 AS `total_memory_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary_by_file_io`
--
DROP TABLE IF EXISTS `user_summary_by_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary_by_file_io`  AS SELECT 1 AS `user`, 1 AS `ios`, 1 AS `io_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary_by_file_io_type`
--
DROP TABLE IF EXISTS `user_summary_by_file_io_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary_by_file_io_type`  AS SELECT 1 AS `user`, 1 AS `event_name`, 1 AS `total`, 1 AS `latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary_by_stages`
--
DROP TABLE IF EXISTS `user_summary_by_stages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary_by_stages`  AS SELECT 1 AS `user`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary_by_statement_latency`
--
DROP TABLE IF EXISTS `user_summary_by_statement_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary_by_statement_latency`  AS SELECT 1 AS `user`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `user_summary_by_statement_type`
--
DROP TABLE IF EXISTS `user_summary_by_statement_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_summary_by_statement_type`  AS SELECT 1 AS `user`, 1 AS `statement`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `version`
--
DROP TABLE IF EXISTS `version`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `version`  AS SELECT 1 AS `sys_version`, 1 AS `mysql_version` ;

-- --------------------------------------------------------

--
-- Structure for view `waits_by_host_by_latency`
--
DROP TABLE IF EXISTS `waits_by_host_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `waits_by_host_by_latency`  AS SELECT 1 AS `host`, 1 AS `event`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `waits_by_user_by_latency`
--
DROP TABLE IF EXISTS `waits_by_user_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `waits_by_user_by_latency`  AS SELECT 1 AS `user`, 1 AS `event`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `waits_global_by_latency`
--
DROP TABLE IF EXISTS `waits_global_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `waits_global_by_latency`  AS SELECT 1 AS `events`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `wait_classes_global_by_avg_latency`
--
DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wait_classes_global_by_avg_latency`  AS SELECT 1 AS `event_class`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `wait_classes_global_by_latency`
--
DROP TABLE IF EXISTS `wait_classes_global_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wait_classes_global_by_latency`  AS SELECT 1 AS `event_class`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary`
--
DROP TABLE IF EXISTS `x$host_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary`  AS SELECT 1 AS `host`, 1 AS `statements`, 1 AS `statement_latency`, 1 AS `statement_avg_latency`, 1 AS `table_scans`, 1 AS `file_ios`, 1 AS `file_io_latency`, 1 AS `current_connections`, 1 AS `total_connections`, 1 AS `unique_users`, 1 AS `current_memory`, 1 AS `total_memory_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary_by_file_io`
--
DROP TABLE IF EXISTS `x$host_summary_by_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary_by_file_io`  AS SELECT 1 AS `host`, 1 AS `ios`, 1 AS `io_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary_by_file_io_type`
--
DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary_by_file_io_type`  AS SELECT 1 AS `host`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary_by_stages`
--
DROP TABLE IF EXISTS `x$host_summary_by_stages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary_by_stages`  AS SELECT 1 AS `host`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary_by_statement_latency`
--
DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary_by_statement_latency`  AS SELECT 1 AS `host`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `x$host_summary_by_statement_type`
--
DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$host_summary_by_statement_type`  AS SELECT 1 AS `host`, 1 AS `statement`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `x$innodb_buffer_stats_by_schema`
--
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$innodb_buffer_stats_by_schema`  AS SELECT 1 AS `object_schema`, 1 AS `allocated`, 1 AS `data`, 1 AS `pages`, 1 AS `pages_hashed`, 1 AS `pages_old`, 1 AS `rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `x$innodb_buffer_stats_by_table`
--
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$innodb_buffer_stats_by_table`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `allocated`, 1 AS `data`, 1 AS `pages`, 1 AS `pages_hashed`, 1 AS `pages_old`, 1 AS `rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `x$innodb_lock_waits`
--
DROP TABLE IF EXISTS `x$innodb_lock_waits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$innodb_lock_waits`  AS SELECT 1 AS `wait_started`, 1 AS `wait_age`, 1 AS `wait_age_secs`, 1 AS `locked_table`, 1 AS `locked_table_schema`, 1 AS `locked_table_name`, 1 AS `locked_table_partition`, 1 AS `locked_table_subpartition`, 1 AS `locked_index`, 1 AS `locked_type`, 1 AS `waiting_trx_id`, 1 AS `waiting_trx_started`, 1 AS `waiting_trx_age`, 1 AS `waiting_trx_rows_locked`, 1 AS `waiting_trx_rows_modified`, 1 AS `waiting_pid`, 1 AS `waiting_query`, 1 AS `waiting_lock_id`, 1 AS `waiting_lock_mode`, 1 AS `blocking_trx_id`, 1 AS `blocking_pid`, 1 AS `blocking_query`, 1 AS `blocking_lock_id`, 1 AS `blocking_lock_mode`, 1 AS `blocking_trx_started`, 1 AS `blocking_trx_age`, 1 AS `blocking_trx_rows_locked`, 1 AS `blocking_trx_rows_modified`, 1 AS `sql_kill_blocking_query`, 1 AS `sql_kill_blocking_connection` ;

-- --------------------------------------------------------

--
-- Structure for view `x$io_by_thread_by_latency`
--
DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$io_by_thread_by_latency`  AS SELECT 1 AS `user`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `thread_id`, 1 AS `processlist_id` ;

-- --------------------------------------------------------

--
-- Structure for view `x$io_global_by_file_by_bytes`
--
DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$io_global_by_file_by_bytes`  AS SELECT 1 AS `file`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_write`, 1 AS `total`, 1 AS `write_pct` ;

-- --------------------------------------------------------

--
-- Structure for view `x$io_global_by_file_by_latency`
--
DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$io_global_by_file_by_latency`  AS SELECT 1 AS `file`, 1 AS `total`, 1 AS `total_latency`, 1 AS `count_read`, 1 AS `read_latency`, 1 AS `count_write`, 1 AS `write_latency`, 1 AS `count_misc`, 1 AS `misc_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$io_global_by_wait_by_bytes`
--
DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$io_global_by_wait_by_bytes`  AS SELECT 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_written`, 1 AS `total_requested` ;

-- --------------------------------------------------------

--
-- Structure for view `x$io_global_by_wait_by_latency`
--
DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$io_global_by_wait_by_latency`  AS SELECT 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency`, 1 AS `read_latency`, 1 AS `write_latency`, 1 AS `misc_latency`, 1 AS `count_read`, 1 AS `total_read`, 1 AS `avg_read`, 1 AS `count_write`, 1 AS `total_written`, 1 AS `avg_written` ;

-- --------------------------------------------------------

--
-- Structure for view `x$latest_file_io`
--
DROP TABLE IF EXISTS `x$latest_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$latest_file_io`  AS SELECT 1 AS `thread`, 1 AS `file`, 1 AS `latency`, 1 AS `operation`, 1 AS `requested` ;

-- --------------------------------------------------------

--
-- Structure for view `x$memory_by_host_by_current_bytes`
--
DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$memory_by_host_by_current_bytes`  AS SELECT 1 AS `host`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$memory_by_thread_by_current_bytes`
--
DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$memory_by_thread_by_current_bytes`  AS SELECT 1 AS `thread_id`, 1 AS `user`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$memory_by_user_by_current_bytes`
--
DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$memory_by_user_by_current_bytes`  AS SELECT 1 AS `user`, 1 AS `current_count_used`, 1 AS `current_allocated`, 1 AS `current_avg_alloc`, 1 AS `current_max_alloc`, 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$memory_global_by_current_bytes`
--
DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$memory_global_by_current_bytes`  AS SELECT 1 AS `event_name`, 1 AS `current_count`, 1 AS `current_alloc`, 1 AS `current_avg_alloc`, 1 AS `high_count`, 1 AS `high_alloc`, 1 AS `high_avg_alloc` ;

-- --------------------------------------------------------

--
-- Structure for view `x$memory_global_total`
--
DROP TABLE IF EXISTS `x$memory_global_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$memory_global_total`  AS SELECT 1 AS `total_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$processlist`
--
DROP TABLE IF EXISTS `x$processlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$processlist`  AS SELECT 1 AS `thd_id`, 1 AS `conn_id`, 1 AS `user`, 1 AS `db`, 1 AS `command`, 1 AS `state`, 1 AS `time`, 1 AS `current_statement`, 1 AS `execution_engine`, 1 AS `statement_latency`, 1 AS `progress`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_examined`, 1 AS `rows_sent`, 1 AS `rows_affected`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `full_scan`, 1 AS `last_statement`, 1 AS `last_statement_latency`, 1 AS `current_memory`, 1 AS `last_wait`, 1 AS `last_wait_latency`, 1 AS `source`, 1 AS `trx_latency`, 1 AS `trx_state`, 1 AS `trx_autocommit`, 1 AS `pid`, 1 AS `program_name` ;

-- --------------------------------------------------------

--
-- Structure for view `x$ps_digest_95th_percentile_by_avg_us`
--
DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$ps_digest_95th_percentile_by_avg_us`  AS SELECT 1 AS `avg_us`, 1 AS `percentile` ;

-- --------------------------------------------------------

--
-- Structure for view `x$ps_digest_avg_latency_distribution`
--
DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$ps_digest_avg_latency_distribution`  AS SELECT 1 AS `cnt`, 1 AS `avg_us` ;

-- --------------------------------------------------------

--
-- Structure for view `x$ps_schema_table_statistics_io`
--
DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$ps_schema_table_statistics_io`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `count_read`, 1 AS `sum_number_of_bytes_read`, 1 AS `sum_timer_read`, 1 AS `count_write`, 1 AS `sum_number_of_bytes_write`, 1 AS `sum_timer_write`, 1 AS `count_misc`, 1 AS `sum_timer_misc` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_flattened_keys`
--
DROP TABLE IF EXISTS `x$schema_flattened_keys`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_flattened_keys`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `index_name`, 1 AS `non_unique`, 1 AS `subpart_exists`, 1 AS `index_columns` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_index_statistics`
--
DROP TABLE IF EXISTS `x$schema_index_statistics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_index_statistics`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `index_name`, 1 AS `rows_selected`, 1 AS `select_latency`, 1 AS `rows_inserted`, 1 AS `insert_latency`, 1 AS `rows_updated`, 1 AS `update_latency`, 1 AS `rows_deleted`, 1 AS `delete_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_tables_with_full_table_scans`
--
DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_tables_with_full_table_scans`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `rows_full_scanned`, 1 AS `latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_table_lock_waits`
--
DROP TABLE IF EXISTS `x$schema_table_lock_waits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_table_lock_waits`  AS SELECT 1 AS `object_schema`, 1 AS `object_name`, 1 AS `waiting_thread_id`, 1 AS `waiting_pid`, 1 AS `waiting_account`, 1 AS `waiting_lock_type`, 1 AS `waiting_lock_duration`, 1 AS `waiting_query`, 1 AS `waiting_query_secs`, 1 AS `waiting_query_rows_affected`, 1 AS `waiting_query_rows_examined`, 1 AS `blocking_thread_id`, 1 AS `blocking_pid`, 1 AS `blocking_account`, 1 AS `blocking_lock_type`, 1 AS `blocking_lock_duration`, 1 AS `sql_kill_blocking_query`, 1 AS `sql_kill_blocking_connection` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_table_statistics`
--
DROP TABLE IF EXISTS `x$schema_table_statistics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_table_statistics`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `total_latency`, 1 AS `rows_fetched`, 1 AS `fetch_latency`, 1 AS `rows_inserted`, 1 AS `insert_latency`, 1 AS `rows_updated`, 1 AS `update_latency`, 1 AS `rows_deleted`, 1 AS `delete_latency`, 1 AS `io_read_requests`, 1 AS `io_read`, 1 AS `io_read_latency`, 1 AS `io_write_requests`, 1 AS `io_write`, 1 AS `io_write_latency`, 1 AS `io_misc_requests`, 1 AS `io_misc_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$schema_table_statistics_with_buffer`
--
DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$schema_table_statistics_with_buffer`  AS SELECT 1 AS `table_schema`, 1 AS `table_name`, 1 AS `rows_fetched`, 1 AS `fetch_latency`, 1 AS `rows_inserted`, 1 AS `insert_latency`, 1 AS `rows_updated`, 1 AS `update_latency`, 1 AS `rows_deleted`, 1 AS `delete_latency`, 1 AS `io_read_requests`, 1 AS `io_read`, 1 AS `io_read_latency`, 1 AS `io_write_requests`, 1 AS `io_write`, 1 AS `io_write_latency`, 1 AS `io_misc_requests`, 1 AS `io_misc_latency`, 1 AS `innodb_buffer_allocated`, 1 AS `innodb_buffer_data`, 1 AS `innodb_buffer_free`, 1 AS `innodb_buffer_pages`, 1 AS `innodb_buffer_pages_hashed`, 1 AS `innodb_buffer_pages_old`, 1 AS `innodb_buffer_rows_cached` ;

-- --------------------------------------------------------

--
-- Structure for view `x$session`
--
DROP TABLE IF EXISTS `x$session`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$session`  AS SELECT 1 AS `thd_id`, 1 AS `conn_id`, 1 AS `user`, 1 AS `db`, 1 AS `command`, 1 AS `state`, 1 AS `time`, 1 AS `current_statement`, 1 AS `execution_engine`, 1 AS `statement_latency`, 1 AS `progress`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_examined`, 1 AS `rows_sent`, 1 AS `rows_affected`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `full_scan`, 1 AS `last_statement`, 1 AS `last_statement_latency`, 1 AS `current_memory`, 1 AS `last_wait`, 1 AS `last_wait_latency`, 1 AS `source`, 1 AS `trx_latency`, 1 AS `trx_state`, 1 AS `trx_autocommit`, 1 AS `pid`, 1 AS `program_name` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statements_with_errors_or_warnings`
--
DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statements_with_errors_or_warnings`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `errors`, 1 AS `error_pct`, 1 AS `warnings`, 1 AS `warning_pct`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statements_with_full_table_scans`
--
DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statements_with_full_table_scans`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `no_index_used_count`, 1 AS `no_good_index_used_count`, 1 AS `no_index_used_pct`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_sent_avg`, 1 AS `rows_examined_avg`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statements_with_runtimes_in_95th_percentile`
--
DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statements_with_runtimes_in_95th_percentile`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `full_scan`, 1 AS `exec_count`, 1 AS `err_count`, 1 AS `warn_count`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `avg_latency`, 1 AS `rows_sent`, 1 AS `rows_sent_avg`, 1 AS `rows_examined`, 1 AS `rows_examined_avg`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statements_with_sorting`
--
DROP TABLE IF EXISTS `x$statements_with_sorting`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statements_with_sorting`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `sort_merge_passes`, 1 AS `avg_sort_merges`, 1 AS `sorts_using_scans`, 1 AS `sort_using_range`, 1 AS `rows_sorted`, 1 AS `avg_rows_sorted`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statements_with_temp_tables`
--
DROP TABLE IF EXISTS `x$statements_with_temp_tables`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statements_with_temp_tables`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `exec_count`, 1 AS `total_latency`, 1 AS `memory_tmp_tables`, 1 AS `disk_tmp_tables`, 1 AS `avg_tmp_tables_per_query`, 1 AS `tmp_tables_to_disk_pct`, 1 AS `first_seen`, 1 AS `last_seen`, 1 AS `digest` ;

-- --------------------------------------------------------

--
-- Structure for view `x$statement_analysis`
--
DROP TABLE IF EXISTS `x$statement_analysis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$statement_analysis`  AS SELECT 1 AS `query`, 1 AS `db`, 1 AS `full_scan`, 1 AS `exec_count`, 1 AS `exec_secondary_count`, 1 AS `err_count`, 1 AS `warn_count`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `avg_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_sent_avg`, 1 AS `rows_examined`, 1 AS `rows_examined_avg`, 1 AS `rows_affected`, 1 AS `rows_affected_avg`, 1 AS `tmp_tables`, 1 AS `tmp_disk_tables`, 1 AS `rows_sorted`, 1 AS `sort_merge_passes`, 1 AS `max_controlled_memory`, 1 AS `max_total_memory`, 1 AS `digest`, 1 AS `first_seen`, 1 AS `last_seen` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary`
--
DROP TABLE IF EXISTS `x$user_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary`  AS SELECT 1 AS `user`, 1 AS `statements`, 1 AS `statement_latency`, 1 AS `statement_avg_latency`, 1 AS `table_scans`, 1 AS `file_ios`, 1 AS `file_io_latency`, 1 AS `current_connections`, 1 AS `total_connections`, 1 AS `unique_hosts`, 1 AS `current_memory`, 1 AS `total_memory_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary_by_file_io`
--
DROP TABLE IF EXISTS `x$user_summary_by_file_io`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary_by_file_io`  AS SELECT 1 AS `user`, 1 AS `ios`, 1 AS `io_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary_by_file_io_type`
--
DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary_by_file_io_type`  AS SELECT 1 AS `user`, 1 AS `event_name`, 1 AS `total`, 1 AS `latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary_by_stages`
--
DROP TABLE IF EXISTS `x$user_summary_by_stages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary_by_stages`  AS SELECT 1 AS `user`, 1 AS `event_name`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary_by_statement_latency`
--
DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary_by_statement_latency`  AS SELECT 1 AS `user`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `x$user_summary_by_statement_type`
--
DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$user_summary_by_statement_type`  AS SELECT 1 AS `user`, 1 AS `statement`, 1 AS `total`, 1 AS `total_latency`, 1 AS `max_latency`, 1 AS `lock_latency`, 1 AS `cpu_latency`, 1 AS `rows_sent`, 1 AS `rows_examined`, 1 AS `rows_affected`, 1 AS `full_scans` ;

-- --------------------------------------------------------

--
-- Structure for view `x$waits_by_host_by_latency`
--
DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$waits_by_host_by_latency`  AS SELECT 1 AS `host`, 1 AS `event`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$waits_by_user_by_latency`
--
DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$waits_by_user_by_latency`  AS SELECT 1 AS `user`, 1 AS `event`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$waits_global_by_latency`
--
DROP TABLE IF EXISTS `x$waits_global_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$waits_global_by_latency`  AS SELECT 1 AS `events`, 1 AS `total`, 1 AS `total_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$wait_classes_global_by_avg_latency`
--
DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$wait_classes_global_by_avg_latency`  AS SELECT 1 AS `event_class`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

-- --------------------------------------------------------

--
-- Structure for view `x$wait_classes_global_by_latency`
--
DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `x$wait_classes_global_by_latency`  AS SELECT 1 AS `event_class`, 1 AS `total`, 1 AS `total_latency`, 1 AS `min_latency`, 1 AS `avg_latency`, 1 AS `max_latency` ;

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индекси за таблица `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индекси за таблица `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения за таблица `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
