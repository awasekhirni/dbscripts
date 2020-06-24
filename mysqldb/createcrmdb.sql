# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crmdb.dez                                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "installer"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `installer` (
    `id` INTEGER(1) NOT NULL,
    `installer_flag` INTEGER(1) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_accounts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_accounts` (
    `account_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `balance` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`account_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_activities"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_activities` (
    `activities_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user` INTEGER(11) NOT NULL,
    `module` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `module_field_id` INTEGER(11),
    `activity` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `activity_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `icon` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'fa-coffee',
    `link` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `value1` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `value2` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`activities_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_allowed_ip"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_allowed_ip` (
    `allowed_ip_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `allowed_ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('active','reject','pending') COLLATE utf8_general_ci DEFAULT 'pending',
    PRIMARY KEY (`allowed_ip_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_checklists"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_checklists` (
    `checklist_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `module` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `module_id` INTEGER(11),
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `finished` INTEGER(11) DEFAULT 0,
    `create_datetime` DATETIME,
    `added_from` INTEGER(11),
    `finished_from` INTEGER(11),
    `list_order` INTEGER(11),
    PRIMARY KEY (`checklist_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_client_menu"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_client_menu` (
    `menu_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `label` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `link` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `icon` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `parent` INTEGER(11) NOT NULL,
    `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `sort` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`menu_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_config"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_config` (
    `config_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`config_key`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_contract_type"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_contract_type` (
    `contract_type_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `contract_type` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`contract_type_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_countries"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_countries` (
    `id` INTEGER(6) NOT NULL AUTO_INCREMENT,
    `value` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_currencies"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_currencies` (
    `code` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `symbol` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `xrate` DECIMAL(12,5),
    PRIMARY KEY (`code`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_customer_group"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_customer_group` (
    `customer_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'customer group,item group',
    `customer_group` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`customer_group_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_dashboard"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_dashboard` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `col` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `order_no` INTEGER(2) NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `report` TINYINT(1) NOT NULL DEFAULT 0,
    `for_staff` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_days"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_days` (
    `day_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `day` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`day_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_departments"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_departments` (
    `departments_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `deptname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `department_head_id` INTEGER(11) COMMENT 'department_head_id == user_id',
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `encryption` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `host` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `password` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `mailbox` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `unread_email` TINYINT(1) NOT NULL DEFAULT 0,
    `delete_mail_after_import` TINYINT(1) NOT NULL DEFAULT 0,
    `last_postmaster_run` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`departments_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_designations"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_designations` (
    `designations_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `departments_id` INTEGER(11) NOT NULL,
    `designations` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`designations_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_expense_category"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_expense_category` (
    `expense_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `expense_category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`expense_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_form"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_form` (
    `form_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `form_name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `tbl_name` VARCHAR(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `table_id` VARCHAR(110) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`form_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_goal_type"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_goal_type` (
    `goal_type_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tbl_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `query` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`goal_type_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_holiday"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_holiday` (
    `holiday_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `event_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `location` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `color` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`holiday_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_hourly_rate"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_hourly_rate` (
    `hourly_rate_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `hourly_grade` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `hourly_rate` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`hourly_rate_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_income_category"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_income_category` (
    `income_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `income_category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`income_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_job_circular"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_job_circular` (
    `job_circular_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `job_title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `designations_id` INTEGER(11) NOT NULL,
    `vacancy_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `posted_date` DATE NOT NULL,
    `employment_type` ENUM('contractual','full_time','part_time') COLLATE utf8_general_ci NOT NULL DEFAULT 'full_time',
    `experience` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `age` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `salary_range` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_date` DATE NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('published','unpublished') COLLATE utf8_general_ci NOT NULL DEFAULT 'unpublished' COMMENT '1=publish 2=unpublish',
    `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`job_circular_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_kb_category"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_kb_category` (
    `kb_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sort` INTEGER(2) NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`kb_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_knowledgebase"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_knowledgebase` (
    `kb_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `kb_category_id` INTEGER(11) NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `for_all` ENUM('Yes','No') COLLATE utf8_general_ci DEFAULT 'No',
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `total_view` INTEGER(11) NOT NULL DEFAULT 0,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`kb_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_languages"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_languages` (
    `code` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `name` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `icon` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `active` INTEGER(2) DEFAULT 0,
    PRIMARY KEY (`code`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_lead_source"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_lead_source` (
    `lead_source_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lead_source` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`lead_source_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_lead_status"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_lead_status` (
    `lead_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lead_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lead_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_no` INTEGER(11),
    PRIMARY KEY (`lead_status_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_leave_category"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_leave_category` (
    `leave_category_id` INTEGER(2) NOT NULL AUTO_INCREMENT,
    `leave_category` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `leave_quota` INTEGER(2) NOT NULL,
    PRIMARY KEY (`leave_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_locales"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_locales` (
    `locale` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `code` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `icon` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`locale`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_menu"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_menu` (
    `menu_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `label` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `link` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `icon` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `parent` INTEGER(11) NOT NULL DEFAULT 0,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `status` TINYINT(1) DEFAULT 1 COMMENT '1= active 0=inactive',
    PRIMARY KEY (`menu_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_migrations"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_migrations` (
    `version` BIGINT(20) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_offence_category"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_offence_category` (
    `offence_id` INTEGER(2) NOT NULL AUTO_INCREMENT,
    `offence_category` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`offence_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_online_payment"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_online_payment` (
    `online_payment_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `gateway_name` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `icon` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`online_payment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_opportunities"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_opportunities` (
    `opportunities_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `opportunity_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `stages` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `probability` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `close_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `opportunities_state_reason_id` INTEGER(2) NOT NULL,
    `expected_revenue` DECIMAL(10,2) NOT NULL,
    `new_link` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `next_action` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `next_action_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`opportunities_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_opportunities_state_reason"                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_opportunities_state_reason` (
    `opportunities_state_reason_id` INTEGER(2) NOT NULL AUTO_INCREMENT,
    `opportunities_state` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `opportunities_state_reason` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`opportunities_state_reason_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_outgoing_emails"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_outgoing_emails` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sent_to` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sent_from` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `subject` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_sent` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `delivered` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_payment_methods"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_payment_methods` (
    `payment_methods_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `method_name` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Paypal',
    PRIMARY KEY (`payment_methods_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_penalty_category"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_penalty_category` (
    `penalty_id` INTEGER(2) NOT NULL AUTO_INCREMENT,
    `penalty_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fine_amount` INTEGER(11) NOT NULL,
    `penalty_days` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`penalty_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_performance_indicator"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_performance_indicator` (
    `performance_indicator_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `designations_id` INTEGER(2) NOT NULL,
    `customer_experiece_management` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `marketing` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `management` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `administration` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `presentation_skill` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `quality_of_work` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `efficiency` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `integrity` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `professionalism` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `team_work` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `critical_thinking` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `conflict_management` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `attendance` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    `ability_to_meed_deadline` TINYINT(1) COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
    PRIMARY KEY (`performance_indicator_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_priorities"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_priorities` (
    `priority` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_priority"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_priority` (
    `priority_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `priority` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`priority_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_project"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_project` (
    `project_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `project_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `client_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `progress` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `calculate_progress` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `start_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `alert_overdue` TINYINT(1) NOT NULL DEFAULT 0,
    `project_cost` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `demo_url` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `project_status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notify_client` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL,
    `timer_status` ENUM('on','off') COLLATE utf8_general_ci,
    `timer_started_by` INTEGER(11),
    `start_time` INTEGER(11),
    `logged_time` INTEGER(11),
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `hourly_rate` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fixed_rate` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `project_settings` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `with_tasks` ENUM('yes','no') COLLATE utf8_general_ci NOT NULL DEFAULT 'no',
    `estimate_hours` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`project_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_project_settings"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_project_settings` (
    `settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `settings` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`settings_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_quotationforms"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_quotationforms` (
    `quotationforms_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `quotationforms_title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `quotationforms_code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `quotationforms_status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'enabled' COMMENT 'enabled/disabled',
    `quotations_created_by_id` INTEGER(11) NOT NULL,
    `quotationforms_date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`quotationforms_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_reminders"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_reminders` (
    `reminder_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATETIME NOT NULL,
    `notified` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `module` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `module_id` INTEGER(11) NOT NULL,
    `user_id` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notify_by_email` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `created_by` INTEGER(11) NOT NULL,
    PRIMARY KEY (`reminder_id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tbl_reminders` (`module`);

CREATE INDEX `rel_type` ON `tbl_reminders` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_template"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_template` (
    `salary_template_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_grade` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `basic_salary` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `overtime_salary` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_template_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_saved_items"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_saved_items` (
    `saved_items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `item_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(18,2) DEFAULT 0.00,
    `customer_group_id` INTEGER(11) NOT NULL DEFAULT 0,
    `unit_type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `tax_rates_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_tax_rate` DECIMAL(18,2) DEFAULT 0.00,
    `item_tax_total` DECIMAL(18,2) DEFAULT 0.00,
    `quantity` DECIMAL(18,2) DEFAULT 0.00,
    `total_cost` DECIMAL(18,2) DEFAULT 0.00,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`saved_items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_sessions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_sessions` (
    `id` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `tbl_sessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "tbl_status"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_status` (
    `status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`status_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_stock_category"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_stock_category` (
    `stock_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `stock_category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`stock_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_stock_sub_category"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_stock_sub_category` (
    `stock_sub_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `stock_category_id` INTEGER(11) NOT NULL,
    `stock_sub_category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`stock_sub_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_suppliers"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_suppliers` (
    `supplier_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `mobile` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `permission` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`supplier_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_tax_rates"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_tax_rates` (
    `tax_rates_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tax_rate_name` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
    `tax_rate_percent` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
ENGINE = INNODB;

CREATE INDEX `Index 1` ON `tbl_tax_rates` (`tax_rates_id`);

# ---------------------------------------------------------------------- #
# Add table "tbl_tickets"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_tickets` (
    `tickets_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) DEFAULT 0,
    `ticket_code` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `subject` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `departments_id` INTEGER(11),
    `reporter` INTEGER(10) DEFAULT 0,
    `priority` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `upload_file` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_reply` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`tickets_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_tickets_replies"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_tickets_replies` (
    `tickets_replies_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `tickets_id` BIGINT(10),
    `ticket_reply_id` INTEGER(11) DEFAULT 0,
    `body` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `replier` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `replierid` INTEGER(10),
    `attachment` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`tickets_replies_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_todo"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_todo` (
    `todo_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `user_id` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `due_date` DATE NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 0 COMMENT '1= in_progress 2= on hold 3= done',
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    `order` INTEGER(11) NOT NULL,
    PRIMARY KEY (`todo_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_transfer"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_transfer` (
    `transfer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `to_account_id` INTEGER(11) NOT NULL,
    `from_account_id` INTEGER(11) NOT NULL,
    `amount` DECIMAL(18,2) NOT NULL,
    `payment_methods_id` INTEGER(11) NOT NULL,
    `reference` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('Cleared','Uncleared','Reconciled','Void') COLLATE utf8_general_ci NOT NULL DEFAULT 'Cleared',
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATE NOT NULL,
    `type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Transfer',
    `permission` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachement` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`transfer_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_user_role"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_user_role` (
    `user_role_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `designations_id` INTEGER(11),
    `menu_id` INTEGER(11) NOT NULL,
    `view` INTEGER(11) DEFAULT 0,
    `created` INTEGER(11) DEFAULT 0,
    `edited` INTEGER(11) DEFAULT 0,
    `deleted` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`user_role_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_users"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_users` (
    `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `role_id` INTEGER(11) NOT NULL DEFAULT 2,
    `activated` TINYINT(1) NOT NULL DEFAULT 0,
    `banned` TINYINT(4) NOT NULL DEFAULT 0,
    `ban_reason` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `new_password_key` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `new_password_requested` DATETIME,
    `new_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `new_email_key` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `last_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `last_login` DATETIME,
    `created` DATETIME,
    `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `online_time` INTEGER(32) NOT NULL DEFAULT 0 COMMENT '1 = online 0 = offline ',
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `active_email` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_email_type` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_encription` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_action` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_host_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_port` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `smtp_additional_flag` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `last_postmaster_run` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `media_path_slug` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`user_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `username` ON `tbl_users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "tbl_working_days"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_working_days` (
    `working_days_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `day_id` INTEGER(5) NOT NULL,
    `start_hours` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_hours` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `flag` TINYINT(1) NOT NULL,
    PRIMARY KEY (`working_days_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_account_details"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_account_details` (
    `account_details_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `fullname` VARCHAR(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `employment_id` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `company` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `city` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `locale` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'en_US',
    `address` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '-',
    `phone` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '-',
    `mobile` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
    `skype` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
    `language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'english',
    `designations_id` INTEGER(11) DEFAULT 0,
    `avatar` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'uploads/default_avatar.jpg',
    `joining_date` DATE,
    `present_address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `date_of_birth` DATE,
    `gender` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `maratial_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `father_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `mother_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `passport` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `direction` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`account_details_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_advance_salary"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_advance_salary` (
    `advance_salary_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `advance_amount` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `deduct_month` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reason` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `request_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `status` TINYINT(2) NOT NULL DEFAULT 0 COMMENT '0 =pending,1=accpect , 2 = reject and 3 = paid',
    `approve_by` INTEGER(11),
    PRIMARY KEY (`advance_salary_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_announcements"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_announcements` (
    `announcements_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `status` ENUM('published','unpublished') COLLATE utf8_general_ci NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
    `view_status` TINYINT(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `all_client` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`announcements_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_client_role"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_client_role` (
    `client_role_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `menu_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`client_role_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_custom_field"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_custom_field` (
    `custom_field_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `form_id` INTEGER(11),
    `field_label` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `default_value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `help_text` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `field_type` ENUM('text','textarea','dropdown','date','checkbox','numeric','url','email') COLLATE utf8_general_ci NOT NULL,
    `required` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false',
    `status` ENUM('active','deactive') COLLATE utf8_general_ci NOT NULL DEFAULT 'deactive',
    `show_on_table` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `visible_for_admin` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `visible_for_client` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `show_on_details` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`custom_field_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_discipline"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_discipline` (
    `discipline_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `offence_id` INTEGER(5) NOT NULL,
    `penalty_id` INTEGER(5) NOT NULL,
    `discipline_break_date` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `discipline_action_date` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `discipline_remarks` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `discipline_comments` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`discipline_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_draft"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_draft` (
    `draft_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `to` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message_body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `attach_file` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_file_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message_time` DATETIME NOT NULL,
    `deleted` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    PRIMARY KEY (`draft_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_email_templates"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_email_templates` (
    `email_templates_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `email_group` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `subject` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `template_body` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`email_templates_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_employee_award"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_employee_award` (
    `employee_award_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `award_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `gift_item` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `award_amount` INTEGER(5) NOT NULL,
    `award_date` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `view_status` TINYINT(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
    `given_date` DATE,
    PRIMARY KEY (`employee_award_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_employee_bank"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_employee_bank` (
    `employee_bank_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `bank_name` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `branch_name` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_name` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_number` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `routing_number` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `type_of_account` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`employee_bank_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_employee_document"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_employee_document` (
    `document_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `resume` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `resume_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `resume_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_letter` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_letter_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_letter_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `joining_letter` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `joining_letter_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `joining_letter_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contract_paper` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contract_paper_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contract_paper_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `id_proff` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `id_proff_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `id_proff_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `other_document` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`document_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_employee_payroll"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_employee_payroll` (
    `payroll_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `salary_template_id` INTEGER(11),
    `hourly_rate_id` INTEGER(11),
    PRIMARY KEY (`payroll_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_files"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_files` (
    `files_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `uploaded_by` INTEGER(11) NOT NULL,
    `date_posted` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`files_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_goal_tracking"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_goal_tracking` (
    `goal_tracking_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `subject` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `goal_type_id` INTEGER(11) NOT NULL,
    `achievement` INTEGER(10) NOT NULL,
    `start_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_id` INTEGER(11) DEFAULT 0,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notify_goal_achive` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notify_goal_not_achive` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_send` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`goal_tracking_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_inbox"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_inbox` (
    `inbox_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `to` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `from` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message_body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `attach_file` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_file_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message_time` DATETIME NOT NULL,
    `view_status` TINYINT(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
    `favourites` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0= no 1=yes',
    `notify_me` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '1=on 0=off',
    `deleted` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    PRIMARY KEY (`inbox_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_job_appliactions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_job_appliactions` (
    `job_appliactions_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `job_circular_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mobile` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cover_letter` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `resume` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `application_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0=pending 1=accept 2 = reject',
    `apply_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `send_email` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `interview_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`job_appliactions_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_leave_application"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_leave_application` (
    `leave_application_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `leave_category_id` INTEGER(2) NOT NULL,
    `reason` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `leave_type` ENUM('single_day','multiple_days','hours') COLLATE utf8_general_ci NOT NULL DEFAULT 'single_day',
    `hours` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `leave_start_date` DATE NOT NULL,
    `leave_end_date` DATE,
    `application_status` INTEGER(2) NOT NULL DEFAULT 1 COMMENT '1=pending,2=accepted 3=rejected',
    `view_status` TINYINT(1) NOT NULL DEFAULT 2,
    `application_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `attachment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `approve_by` INTEGER(11),
    PRIMARY KEY (`leave_application_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_milestones"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_milestones` (
    `milestones_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `milestone_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `start_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `client_visible` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`milestones_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_notes"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_notes` (
    `notes_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `is_client` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `notes` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `added_by` INTEGER(11) NOT NULL,
    `added_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`notes_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_notifications"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_notifications` (
    `notifications_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `read` INTEGER(11) NOT NULL DEFAULT 0,
    `read_inline` TINYINT(1) NOT NULL DEFAULT 0,
    `date` DATETIME NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `from_user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `to_user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `icon` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`notifications_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_overtime"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_overtime` (
    `overtime_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `overtime_date` DATE NOT NULL,
    `overtime_hours` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` ENUM('pending','approved','rejected') COLLATE utf8_general_ci NOT NULL DEFAULT 'pending',
    PRIMARY KEY (`overtime_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_performance_apprisal"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_performance_apprisal` (
    `performance_appraisal_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(2) NOT NULL,
    `general_remarks` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `appraisal_month` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customer_experiece_management` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `marketing` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `management` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `administration` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `presentation_skill` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `quality_of_work` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `efficiency` TINYINT(1) COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
    `integrity` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `professionalism` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `team_work` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `critical_thinking` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `conflict_management` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `attendance` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    `ability_to_meed_deadline` TINYINT(1) COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
    PRIMARY KEY (`performance_appraisal_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_pinaction"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_pinaction` (
    `pinaction_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `module_id` INTEGER(11) NOT NULL,
    `module_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`pinaction_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_private_chat"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_private_chat` (
    `private_chat_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `chat_title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`private_chat_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_private_chat_messages"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_private_chat_messages` (
    `private_chat_messages_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `private_chat_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `message_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`private_chat_messages_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_private_chat_users"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_private_chat_users` (
    `private_chat_users_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `private_chat_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `to_user_id` INTEGER(11) NOT NULL,
    `active` INTEGER(11) NOT NULL COMMENT '0 == minimize chat,1 == open chat and  2 == close chat ',
    `unread` INTEGER(11) NOT NULL,
    `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'keep last message id',
    PRIMARY KEY (`private_chat_users_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_proposals"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_proposals` (
    `proposals_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `subject` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `module` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `module_id` INTEGER(11) DEFAULT 0,
    `proposal_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `proposal_month` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `proposal_year` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `due_date` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `alert_overdue` TINYINT(1) DEFAULT 0,
    `currency` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `tax` INTEGER(11) NOT NULL DEFAULT 0,
    `total_tax` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
    `date_sent` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `proposal_deleted` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `emailed` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `show_client` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `convert` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `convert_module` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `convert_module_id` INTEGER(11) DEFAULT 0,
    `converted_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci,
    `discount_percent` INTEGER(2) NOT NULL DEFAULT 0,
    `discount_total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `adjustment` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `show_quantity_as` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `allowed_cmments` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
    PRIMARY KEY (`proposals_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `reference_no` ON `tbl_proposals` (`reference_no`);

# ---------------------------------------------------------------------- #
# Add table "tbl_purchases"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_purchases` (
    `purchase_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `supplier_id` INTEGER(11),
    `reference_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total` DECIMAL(20,2),
    `update_stock` ENUM('Yes','No') COLLATE utf8_general_ci DEFAULT 'Yes',
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `emailed` ENUM('Yes','No') COLLATE utf8_general_ci,
    `date_sent` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_by` INTEGER(11),
    `user_id` INTEGER(11),
    `purchase_date` DATE,
    `due_date` DATE,
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_general_ci,
    `discount_percent` DECIMAL(10,2),
    `adjustment` DECIMAL(18,2),
    `discount_total` DECIMAL(18,2),
    `show_quantity_as` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `total_tax` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax` DECIMAL(20,2),
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`purchase_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_allowance"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_allowance` (
    `salary_allowance_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_template_id` INTEGER(11) NOT NULL,
    `allowance_label` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `allowance_value` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_allowance_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_deduction"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_deduction` (
    `salary_deduction_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_template_id` INTEGER(11) NOT NULL,
    `deduction_label` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `deduction_value` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_deduction_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_payment"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_payment` (
    `salary_payment_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `payment_month` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fine_deduction` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `comments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paid_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `deduct_from` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'deduct from means tracking deduct from which account',
    PRIMARY KEY (`salary_payment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_payment_allowance"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_payment_allowance` (
    `salary_payment_allowance_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_payment_id` INTEGER(11) NOT NULL,
    `salary_payment_allowance_label` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `salary_payment_allowance_value` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_payment_allowance_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_payment_deduction"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_payment_deduction` (
    `salary_payment_deduction` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_payment_id` INTEGER(11) NOT NULL,
    `salary_payment_deduction_label` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `salary_payment_deduction_value` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_payment_deduction`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_payment_details"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_payment_details` (
    `salary_payment_details_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `salary_payment_id` INTEGER(11) NOT NULL,
    `salary_payment_details_label` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `salary_payment_details_value` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_payment_details_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_salary_payslip"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_salary_payslip` (
    `payslip_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `payslip_number` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `salary_payment_id` INTEGER(5) NOT NULL,
    `payslip_generate_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`payslip_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_sent"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_sent` (
    `sent_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `to` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message_body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `attach_file` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_file_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_filename` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message_time` DATETIME NOT NULL,
    `deleted` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    PRIMARY KEY (`sent_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_stock"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_stock` (
    `stock_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `stock_sub_category_id` INTEGER(11) NOT NULL,
    `item_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `total_stock` INTEGER(5),
    PRIMARY KEY (`stock_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_training"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_training` (
    `training_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `assigned_by` INTEGER(11) NOT NULL,
    `training_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `vendor_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `start_date` DATE NOT NULL,
    `finish_date` DATE NOT NULL,
    `training_cost` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = started, 2 = completed, 3 = terminated',
    `performance` TINYINT(1) DEFAULT 0 COMMENT '0 = not concluded, 1 = satisfactory, 2 = average, 3 = poor, 4 = excellent',
    `remarks` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `upload_file` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`training_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_assign_item"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_assign_item` (
    `assign_item_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `stock_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `assign_inventory` INTEGER(5) NOT NULL,
    `assign_date` DATE NOT NULL,
    PRIMARY KEY (`assign_item_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_attendance"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_attendance` (
    `attendance_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `leave_application_id` INTEGER(11) DEFAULT 0,
    `date_in` DATE,
    `date_out` DATE,
    `attendance_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'status 0=absent 1=present 3 = onleave',
    `clocking_status` TINYINT(1) NOT NULL,
    PRIMARY KEY (`attendance_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_clock"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_clock` (
    `clock_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `attendance_id` INTEGER(11) NOT NULL,
    `clockin_time` TIME,
    `clockout_time` TIME,
    `comments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `clocking_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1= clockin_time',
    `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`clock_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_clock_history"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_clock_history` (
    `clock_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `clock_id` INTEGER(11) NOT NULL,
    `clockin_edit` TIME NOT NULL,
    `clockout_edit` TIME,
    `reason` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '1=pending and 2 = accept  3= reject',
    `notify_me` TINYINT(4) NOT NULL DEFAULT 1,
    `view_status` TINYINT(4) NOT NULL DEFAULT 2,
    `request_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`clock_history_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_item_history"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_item_history` (
    `item_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `stock_id` INTEGER(11) NOT NULL,
    `inventory` INTEGER(5) NOT NULL,
    `purchase_date` DATE NOT NULL,
    PRIMARY KEY (`item_history_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_purchase_payments"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_purchase_payments` (
    `payments_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `purchase_id` INTEGER(11),
    `trans_id` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_method` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `amount` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `notes` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_date` DATE,
    `month_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `year_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `paid_to` INTEGER(11) NOT NULL,
    `paid_by` INTEGER(11),
    `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `account_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deduct from which account',
    PRIMARY KEY (`payments_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_bug"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_bug` (
    `bug_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `issue_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `project_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `task_id` INTEGER(11) NOT NULL DEFAULT 0,
    `bug_title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bug_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bug_status` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `priority` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `severity` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reproducibility` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reporter` INTEGER(11),
    `created_time` TIMESTAMP,
    `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_visible` VARCHAR(8) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`bug_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_calls"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_calls` (
    `calls_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `leads_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `client_id` INTEGER(11),
    `user_id` INTEGER(11),
    `date` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `call_summary` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`calls_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_client"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_client` (
    `client_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `primary_contact` INTEGER(11),
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `email` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `short_note` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `website` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `phone` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `mobile` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `fax` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `zipcode` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `skype_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `linkedin` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `facebook` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `twitter` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `language` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `vat` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hosting_company` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hostname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `port` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `password` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_status` TINYINT(1) NOT NULL COMMENT '1 = person and 2 = company',
    `profile_photo` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `leads_id` INTEGER(11) NOT NULL,
    `latitude` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `longitude` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `customer_group_id` INTEGER(11),
    `active` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sms_notification` TINYINT(1),
    PRIMARY KEY (`client_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_credit_note"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_credit_note` (
    `credit_note_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_id` INTEGER(11),
    `project_id` INTEGER(11) DEFAULT 0,
    `credit_note_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `credit_note_month` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `credit_note_year` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `discount_percent` INTEGER(2),
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `tax` INTEGER(11) NOT NULL DEFAULT 0,
    `total_tax` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
    `date_saved` TIMESTAMP NOT NULL DEFAULT '2018-12-12 05:30:00',
    `emailed` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_visible` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
    `adjustment` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `discount_total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `show_quantity_as` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`credit_note_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_credit_note_items"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_credit_note_items` (
    `credit_note_items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `credit_note_id` INTEGER(11) NOT NULL,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    `item_tax_rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(10,2) DEFAULT 0.00,
    `quantity` DECIMAL(10,2) DEFAULT 0.00,
    `item_tax_total` DECIMAL(10,2) DEFAULT 0.00,
    `total_cost` DECIMAL(10,2) DEFAULT 0.00,
    `date_saved` TIMESTAMP NOT NULL DEFAULT '2018-12-12 05:30:00',
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `order` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`credit_note_items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_credit_used"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_credit_used` (
    `credit_used_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoices_id` INTEGER(11) NOT NULL,
    `credit_note_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `date` DATE NOT NULL,
    `date_applied` DATETIME NOT NULL,
    `amount` DECIMAL(18,3) NOT NULL,
    `payments_id` INTEGER(11),
    PRIMARY KEY (`credit_used_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_estimate_items"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_estimate_items` (
    `estimate_items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `estimates_id` INTEGER(11) NOT NULL,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    `item_tax_rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(10,2) DEFAULT 0.00,
    `quantity` DECIMAL(10,2) DEFAULT 0.00,
    `item_tax_total` DECIMAL(10,2) DEFAULT 0.00,
    `total_cost` DECIMAL(10,2) DEFAULT 0.00,
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `order` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`estimate_items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_estimates"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_estimates` (
    `estimates_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_id` INTEGER(11),
    `project_id` INTEGER(11) DEFAULT 0,
    `estimate_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `estimate_month` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `estimate_year` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `due_date` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `alert_overdue` TINYINT(1) NOT NULL DEFAULT 0,
    `currency` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `discount_percent` INTEGER(2),
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `tax` INTEGER(11) NOT NULL DEFAULT 0,
    `total_tax` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
    `date_sent` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `est_deleted` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `emailed` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `show_client` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `invoiced` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `invoices_id` INTEGER(11) NOT NULL DEFAULT 0,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_visible` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
    `adjustment` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `discount_total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `show_quantity_as` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`estimates_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `reference_no` ON `tbl_estimates` (`reference_no`);

# ---------------------------------------------------------------------- #
# Add table "tbl_invoices"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_invoices` (
    `invoices_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `recur_start_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `recur_end_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `reference_no` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_id` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11),
    `invoice_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `invoice_month` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `invoice_year` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `due_date` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `alert_overdue` TINYINT(1) NOT NULL DEFAULT 0,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `tax` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total_tax` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `discount_percent` INTEGER(2),
    `recurring` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `recuring_frequency` INTEGER(11) NOT NULL DEFAULT 31,
    `recur_frequency` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `recur_next_date` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
    `status` ENUM('Cancelled','Unpaid','Paid','draft','partially_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
    `archived` INTEGER(11) DEFAULT 0,
    `date_sent` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `inv_deleted` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `emailed` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `show_client` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
    `viewed` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `allow_paypal` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
    `allow_stripe` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
    `allow_2checkout` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
    `allow_authorize` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `allow_ccavenue` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `allow_braintree` ENUM('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
    `allow_mollie` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `allow_payumoney` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `allow_tapPayment` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'Yes',
    `allow_razorpay` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_visible` ENUM('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
    `adjustment` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `discount_total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `show_quantity_as` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`invoices_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `reference_no` ON `tbl_invoices` (`reference_no`);

# ---------------------------------------------------------------------- #
# Add table "tbl_items"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_items` (
    `items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoices_id` INTEGER(11) NOT NULL,
    `item_tax_rate` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_tax_total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `quantity` DECIMAL(18,2) DEFAULT 0.00,
    `total_cost` DECIMAL(18,2) DEFAULT 0.00,
    `item_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(18,2) DEFAULT 0.00,
    `order` INTEGER(11) DEFAULT 0,
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_leads"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_leads` (
    `leads_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lead_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `client_id` INTEGER(11),
    `organization` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lead_status_id` INTEGER(11),
    `lead_source_id` INTEGER(11),
    `imported_from_email` TINYINT(1) DEFAULT 0,
    `email_integration_uid` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `contact_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mobile` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `facebook` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `skype` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `twitter` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `converted_client_id` INTEGER(11) NOT NULL DEFAULT 0,
    `index_no` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`leads_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_mettings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_mettings` (
    `mettings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `leads_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `meeting_subject` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `attendees` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `start_date` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_date` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `location` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`mettings_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_payments"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_payments` (
    `payments_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoices_id` INTEGER(11) NOT NULL,
    `trans_id` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payer_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_method` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `amount` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `notes` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_date` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `month_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `year_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `paid_by` INTEGER(11) NOT NULL,
    `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `account_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deposit from which account',
    PRIMARY KEY (`payments_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_proposals_items"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_proposals_items` (
    `proposals_items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `proposals_id` INTEGER(11) NOT NULL,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    `item_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `quantity` DECIMAL(10,2) DEFAULT 0.00,
    `unit_cost` DECIMAL(10,2) DEFAULT 0.00,
    `item_tax_rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_tax_total` DECIMAL(10,2) DEFAULT 0.00,
    `total_cost` DECIMAL(10,2) DEFAULT 0.00,
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `order` INTEGER(11) DEFAULT 0,
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`proposals_items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_purchase_items"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_purchase_items` (
    `items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `purchase_id` INTEGER(11) NOT NULL,
    `item_tax_rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_tax_total` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `quantity` DECIMAL(10,2) DEFAULT 0.00,
    `total_cost` DECIMAL(10,2) DEFAULT 0.00,
    `item_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(10,2) DEFAULT 0.00,
    `order` INTEGER(11) DEFAULT 0,
    `date_saved` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_quotation_details"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_quotation_details` (
    `quotation_details_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `quotations_id` INTEGER(11) NOT NULL,
    `quotation_form_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `quotation_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`quotation_details_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_quotations"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_quotations` (
    `quotations_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `quotations_form_title` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11),
    `client_id` INTEGER(11),
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mobile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `quotations_amount` DECIMAL(10,2),
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reviewer_id` INTEGER(11),
    `reviewed_date` DATE,
    `quotations_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `quotations_status` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending' COMMENT 'completed/pending',
    PRIMARY KEY (`quotations_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_return_stock"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_return_stock` (
    `return_stock_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `module` ENUM('client','supplier') COLLATE latin1_swedish_ci,
    `module_id` INTEGER(11),
    `main_status` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `invoices_id` INTEGER(11),
    `reference_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total` DECIMAL(20,2),
    `update_stock` ENUM('Yes','No') COLLATE utf8_general_ci DEFAULT 'Yes',
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `emailed` ENUM('Yes','No') COLLATE utf8_general_ci,
    `date_sent` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_by` INTEGER(11),
    `user_id` INTEGER(11),
    `return_stock_date` DATE,
    `due_date` DATE,
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_general_ci,
    `discount_percent` DECIMAL(10,2),
    `adjustment` DECIMAL(18,2),
    `discount_total` DECIMAL(18,2),
    `show_quantity_as` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created` TIMESTAMP NOT NULL DEFAULT '2019-05-05 06:00:00',
    `total_tax` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax` DECIMAL(20,2),
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`return_stock_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_return_stock_items"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_return_stock_items` (
    `items_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `return_stock_id` INTEGER(11) NOT NULL,
    `invoice_items_id` INTEGER(11),
    `item_tax_rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `item_tax_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `item_tax_total` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `quantity` DECIMAL(10,2) DEFAULT 0.00,
    `total_cost` DECIMAL(10,2) DEFAULT 0.00,
    `item_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
    `item_desc` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_cost` DECIMAL(10,2) DEFAULT 0.00,
    `order` INTEGER(11) DEFAULT 0,
    `date_saved` TIMESTAMP NOT NULL DEFAULT '2019-05-05 06:00:00',
    `unit` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `hsn_code` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `saved_items_id` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`items_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_return_stock_payments"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_return_stock_payments` (
    `payments_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `return_stock_id` INTEGER(11),
    `trans_id` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_method` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `amount` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
    `notes` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_date` DATE,
    `month_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `year_paid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `module` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `paid_to` INTEGER(11),
    `paid_by` INTEGER(11),
    `created_date` TIMESTAMP DEFAULT '0000-00-00 00:00:00',
    `account_id` INTEGER(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deduct from which account',
    PRIMARY KEY (`payments_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_task"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_task` (
    `task_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11),
    `milestones_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `goal_tracking_id` INTEGER(11),
    `sub_task_id` INTEGER(11),
    `transactions_id` INTEGER(11),
    `task_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `task_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `task_start_date` DATE NOT NULL,
    `due_date` DATE NOT NULL,
    `task_created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `task_status` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `task_progress` INTEGER(2) NOT NULL,
    `calculate_progress` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `task_hour` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tasks_notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `timer_status` ENUM('on','off') COLLATE utf8_general_ci NOT NULL DEFAULT 'off',
    `timer_started_by` INTEGER(11),
    `start_time` INTEGER(11),
    `logged_time` INTEGER(11) NOT NULL DEFAULT 0,
    `leads_id` INTEGER(11),
    `bug_id` INTEGER(11),
    `created_by` INTEGER(11),
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_visible` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `custom_date` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `hourly_rate` DECIMAL(18,2) DEFAULT 0.00,
    `billable` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `index_no` INTEGER(10) NOT NULL,
    PRIMARY KEY (`task_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_task_attachment"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_task_attachment` (
    `task_attachment_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `task_id` INTEGER(11),
    `user_id` INTEGER(11),
    `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `upload_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `leads_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `project_id` INTEGER(11),
    `bug_id` INTEGER(11),
    PRIMARY KEY (`task_attachment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_task_comment"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_task_comment` (
    `task_comment_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `task_id` INTEGER(11),
    `user_id` INTEGER(11),
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `comments_attachment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment_datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `leads_id` INTEGER(11),
    `opportunities_id` INTEGER(11),
    `project_id` INTEGER(11),
    `bug_id` INTEGER(11),
    `goal_tracking_id` INTEGER(11),
    `task_attachment_id` INTEGER(11) DEFAULT 0,
    `uploaded_files_id` INTEGER(11) DEFAULT 0,
    `comments_reply_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`task_comment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_task_uploaded_files"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_task_uploaded_files` (
    `uploaded_files_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `task_attachment_id` INTEGER(11) NOT NULL,
    `files` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `uploaded_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `file_name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `size` INTEGER(10) NOT NULL,
    `ext` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `is_image` INTEGER(2) NOT NULL,
    `image_width` INTEGER(5) NOT NULL,
    `image_height` INTEGER(5) NOT NULL,
    PRIMARY KEY (`uploaded_files_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_tasks_timer"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_tasks_timer` (
    `tasks_timer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `task_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11),
    `timer_status` ENUM('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'off',
    `start_time` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `end_time` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `date_timed` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `reason` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `edited_by` INTEGER(11),
    `project_id` INTEGER(11),
    PRIMARY KEY (`tasks_timer_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_transactions"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_transactions` (
    `transactions_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11),
    `account_id` INTEGER(11) NOT NULL,
    `invoices_id` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `type` ENUM('Income','Expense','Transfer') COLLATE utf8_general_ci NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `amount` DECIMAL(18,2) NOT NULL,
    `recurring_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `repeat_every` INTEGER(11),
    `recurring` ENUM('Yes','No') COLLATE utf8_general_ci,
    `total_cycles` INTEGER(11),
    `done_cycles` INTEGER(11),
    `custom_recurring` TINYINT(1) DEFAULT 0,
    `last_recurring_date` DATE,
    `recurring_from` INTEGER(11),
    `paid_by` INTEGER(11) NOT NULL DEFAULT 0,
    `payment_methods_id` INTEGER(11) NOT NULL,
    `reference` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('non_approved','paid','unpaid') COLLATE utf8_general_ci DEFAULT 'non_approved',
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tags` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tax` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `date` DATE NOT NULL,
    `create_date` DATETIME,
    `debit` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `credit` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `total_balance` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `transfer_id` INTEGER(11) NOT NULL DEFAULT 0,
    `permission` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachement` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_visible` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `added_by` INTEGER(11) NOT NULL DEFAULT 0,
    `paid` INTEGER(11) NOT NULL DEFAULT 0,
    `billable` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `deposit` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deposit_2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `under_55` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`transactions_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_uploaded_files"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_uploaded_files` (
    `uploaded_files_id` INTEGER(11) NOT NULL,
    `files_id` INTEGER(11) NOT NULL,
    `files` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `uploaded_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `file_name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `size` INTEGER(10) NOT NULL,
    `ext` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `is_image` INTEGER(2) NOT NULL,
    `image_width` INTEGER(5) NOT NULL,
    `image_height` INTEGER(5) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_account_details` ADD CONSTRAINT `tbl_designations_tbl_account_details` 
    FOREIGN KEY (`designations_id`) REFERENCES `tbl_designations` (`designations_id`);

ALTER TABLE `tbl_account_details` ADD CONSTRAINT `tbl_locales_tbl_account_details` 
    FOREIGN KEY (`locale`) REFERENCES `tbl_locales` (`locale`);

ALTER TABLE `tbl_account_details` ADD CONSTRAINT `tbl_users_tbl_account_details` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_advance_salary` ADD CONSTRAINT `tbl_users_tbl_advance_salary` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_announcements` ADD CONSTRAINT `tbl_users_tbl_announcements` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_assign_item` ADD CONSTRAINT `tbl_stock_tbl_assign_item` 
    FOREIGN KEY (`stock_id`) REFERENCES `tbl_stock` (`stock_id`);

ALTER TABLE `tbl_assign_item` ADD CONSTRAINT `tbl_users_tbl_assign_item` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_attendance` ADD CONSTRAINT `tbl_leave_application_tbl_attendance` 
    FOREIGN KEY (`leave_application_id`) REFERENCES `tbl_leave_application` (`leave_application_id`);

ALTER TABLE `tbl_attendance` ADD CONSTRAINT `tbl_users_tbl_attendance` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_bug` ADD CONSTRAINT `tbl_opportunities_tbl_bug` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_bug` ADD CONSTRAINT `tbl_project_tbl_bug` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_bug` ADD CONSTRAINT `tbl_task_tbl_bug` 
    FOREIGN KEY (`task_id`) REFERENCES `tbl_task` (`task_id`);

ALTER TABLE `tbl_calls` ADD CONSTRAINT `tbl_client_tbl_calls` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_calls` ADD CONSTRAINT `tbl_leads_tbl_calls` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_calls` ADD CONSTRAINT `tbl_opportunities_tbl_calls` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_calls` ADD CONSTRAINT `tbl_users_tbl_calls` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_client` ADD CONSTRAINT `tbl_customer_group_tbl_client` 
    FOREIGN KEY (`customer_group_id`) REFERENCES `tbl_customer_group` (`customer_group_id`);

ALTER TABLE `tbl_client` ADD CONSTRAINT `tbl_leads_tbl_client` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_client_role` ADD CONSTRAINT `tbl_client_menu_tbl_client_role` 
    FOREIGN KEY (`menu_id`) REFERENCES `tbl_client_menu` (`menu_id`);

ALTER TABLE `tbl_client_role` ADD CONSTRAINT `tbl_menu_tbl_client_role` 
    FOREIGN KEY (`menu_id`) REFERENCES `tbl_menu` (`menu_id`);

ALTER TABLE `tbl_client_role` ADD CONSTRAINT `tbl_users_tbl_client_role` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_clock` ADD CONSTRAINT `tbl_attendance_tbl_clock` 
    FOREIGN KEY (`attendance_id`) REFERENCES `tbl_attendance` (`attendance_id`);

ALTER TABLE `tbl_clock_history` ADD CONSTRAINT `tbl_clock_tbl_clock_history` 
    FOREIGN KEY (`clock_id`) REFERENCES `tbl_clock` (`clock_id`);

ALTER TABLE `tbl_clock_history` ADD CONSTRAINT `tbl_users_tbl_clock_history` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_credit_note` ADD CONSTRAINT `tbl_client_tbl_credit_note` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_credit_note` ADD CONSTRAINT `tbl_project_tbl_credit_note` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_credit_note` ADD CONSTRAINT `tbl_users_tbl_credit_note` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_credit_note_items` ADD CONSTRAINT `tbl_credit_note_tbl_credit_note_items` 
    FOREIGN KEY (`credit_note_id`) REFERENCES `tbl_credit_note` (`credit_note_id`);

ALTER TABLE `tbl_credit_note_items` ADD CONSTRAINT `tbl_items_tbl_credit_note_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_items` (`items_id`);

ALTER TABLE `tbl_credit_note_items` ADD CONSTRAINT `tbl_purchase_items_tbl_credit_note_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_purchase_items` (`items_id`);

ALTER TABLE `tbl_credit_note_items` ADD CONSTRAINT `tbl_return_stock_items_tbl_credit_note_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_return_stock_items` (`items_id`);

ALTER TABLE `tbl_credit_note_items` ADD CONSTRAINT `tbl_saved_items_tbl_credit_note_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_credit_note_tbl_credit_used` 
    FOREIGN KEY (`credit_note_id`) REFERENCES `tbl_credit_note` (`credit_note_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_invoices_tbl_credit_used` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_payments_tbl_credit_used` 
    FOREIGN KEY (`payments_id`) REFERENCES `tbl_payments` (`payments_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_purchase_payments_tbl_credit_used` 
    FOREIGN KEY (`payments_id`) REFERENCES `tbl_purchase_payments` (`payments_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_return_stock_payments_tbl_credit_used` 
    FOREIGN KEY (`payments_id`) REFERENCES `tbl_return_stock_payments` (`payments_id`);

ALTER TABLE `tbl_credit_used` ADD CONSTRAINT `tbl_users_tbl_credit_used` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_custom_field` ADD CONSTRAINT `tbl_form_tbl_custom_field` 
    FOREIGN KEY (`form_id`) REFERENCES `tbl_form` (`form_id`);

ALTER TABLE `tbl_designations` ADD CONSTRAINT `tbl_departments_tbl_designations` 
    FOREIGN KEY (`departments_id`) REFERENCES `tbl_departments` (`departments_id`);

ALTER TABLE `tbl_discipline` ADD CONSTRAINT `tbl_offence_category_tbl_discipline` 
    FOREIGN KEY (`offence_id`) REFERENCES `tbl_offence_category` (`offence_id`);

ALTER TABLE `tbl_discipline` ADD CONSTRAINT `tbl_penalty_category_tbl_discipline` 
    FOREIGN KEY (`penalty_id`) REFERENCES `tbl_penalty_category` (`penalty_id`);

ALTER TABLE `tbl_discipline` ADD CONSTRAINT `tbl_users_tbl_discipline` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_draft` ADD CONSTRAINT `tbl_users_tbl_draft` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_email_templates` ADD CONSTRAINT `tbl_currencies_tbl_email_templates` 
    FOREIGN KEY (`code`) REFERENCES `tbl_currencies` (`code`);

ALTER TABLE `tbl_email_templates` ADD CONSTRAINT `tbl_languages_tbl_email_templates` 
    FOREIGN KEY (`code`) REFERENCES `tbl_languages` (`code`);

ALTER TABLE `tbl_employee_award` ADD CONSTRAINT `tbl_users_tbl_employee_award` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_employee_bank` ADD CONSTRAINT `tbl_users_tbl_employee_bank` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_employee_document` ADD CONSTRAINT `tbl_users_tbl_employee_document` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_employee_payroll` ADD CONSTRAINT `tbl_hourly_rate_tbl_employee_payroll` 
    FOREIGN KEY (`hourly_rate_id`) REFERENCES `tbl_hourly_rate` (`hourly_rate_id`);

ALTER TABLE `tbl_employee_payroll` ADD CONSTRAINT `tbl_salary_template_tbl_employee_payroll` 
    FOREIGN KEY (`salary_template_id`) REFERENCES `tbl_salary_template` (`salary_template_id`);

ALTER TABLE `tbl_employee_payroll` ADD CONSTRAINT `tbl_users_tbl_employee_payroll` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_estimate_items` ADD CONSTRAINT `tbl_estimates_tbl_estimate_items` 
    FOREIGN KEY (`estimates_id`) REFERENCES `tbl_estimates` (`estimates_id`);

ALTER TABLE `tbl_estimate_items` ADD CONSTRAINT `tbl_items_tbl_estimate_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_items` (`items_id`);

ALTER TABLE `tbl_estimate_items` ADD CONSTRAINT `tbl_purchase_items_tbl_estimate_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_purchase_items` (`items_id`);

ALTER TABLE `tbl_estimate_items` ADD CONSTRAINT `tbl_return_stock_items_tbl_estimate_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_return_stock_items` (`items_id`);

ALTER TABLE `tbl_estimate_items` ADD CONSTRAINT `tbl_saved_items_tbl_estimate_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_estimates` ADD CONSTRAINT `tbl_client_tbl_estimates` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_estimates` ADD CONSTRAINT `tbl_invoices_tbl_estimates` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_estimates` ADD CONSTRAINT `tbl_project_tbl_estimates` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_estimates` ADD CONSTRAINT `tbl_users_tbl_estimates` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_files` ADD CONSTRAINT `tbl_project_tbl_files` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_goal_tracking` ADD CONSTRAINT `tbl_accounts_tbl_goal_tracking` 
    FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_goal_tracking` ADD CONSTRAINT `tbl_goal_type_tbl_goal_tracking` 
    FOREIGN KEY (`goal_type_id`) REFERENCES `tbl_goal_type` (`goal_type_id`);

ALTER TABLE `tbl_inbox` ADD CONSTRAINT `tbl_users_tbl_inbox` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_invoices` ADD CONSTRAINT `tbl_client_tbl_invoices` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_invoices` ADD CONSTRAINT `tbl_project_tbl_invoices` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_invoices` ADD CONSTRAINT `tbl_users_tbl_invoices` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_item_history` ADD CONSTRAINT `tbl_stock_tbl_item_history` 
    FOREIGN KEY (`stock_id`) REFERENCES `tbl_stock` (`stock_id`);

ALTER TABLE `tbl_items` ADD CONSTRAINT `tbl_invoices_tbl_items` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_items` ADD CONSTRAINT `tbl_purchase_items_tbl_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_purchase_items` (`items_id`);

ALTER TABLE `tbl_items` ADD CONSTRAINT `tbl_return_stock_items_tbl_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_return_stock_items` (`items_id`);

ALTER TABLE `tbl_items` ADD CONSTRAINT `tbl_saved_items_tbl_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_job_appliactions` ADD CONSTRAINT `tbl_job_circular_tbl_job_appliactions` 
    FOREIGN KEY (`job_circular_id`) REFERENCES `tbl_job_circular` (`job_circular_id`);

ALTER TABLE `tbl_job_circular` ADD CONSTRAINT `tbl_designations_tbl_job_circular` 
    FOREIGN KEY (`designations_id`) REFERENCES `tbl_designations` (`designations_id`);

ALTER TABLE `tbl_knowledgebase` ADD CONSTRAINT `tbl_kb_category_tbl_knowledgebase` 
    FOREIGN KEY (`kb_category_id`) REFERENCES `tbl_kb_category` (`kb_category_id`);

ALTER TABLE `tbl_leads` ADD CONSTRAINT `tbl_client_tbl_leads` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_leads` ADD CONSTRAINT `tbl_lead_source_tbl_leads` 
    FOREIGN KEY (`lead_source_id`) REFERENCES `tbl_lead_source` (`lead_source_id`);

ALTER TABLE `tbl_leads` ADD CONSTRAINT `tbl_lead_status_tbl_leads` 
    FOREIGN KEY (`lead_status_id`) REFERENCES `tbl_lead_status` (`lead_status_id`);

ALTER TABLE `tbl_leads` ADD CONSTRAINT `tbl_status_tbl_leads` 
    FOREIGN KEY (`lead_status_id`) REFERENCES `tbl_status` (`status_id`);

ALTER TABLE `tbl_leave_application` ADD CONSTRAINT `tbl_leave_category_tbl_leave_application` 
    FOREIGN KEY (`leave_category_id`) REFERENCES `tbl_leave_category` (`leave_category_id`);

ALTER TABLE `tbl_leave_application` ADD CONSTRAINT `tbl_users_tbl_leave_application` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_locales` ADD CONSTRAINT `tbl_currencies_tbl_locales` 
    FOREIGN KEY (`code`) REFERENCES `tbl_currencies` (`code`);

ALTER TABLE `tbl_locales` ADD CONSTRAINT `tbl_languages_tbl_locales` 
    FOREIGN KEY (`code`) REFERENCES `tbl_languages` (`code`);

ALTER TABLE `tbl_mettings` ADD CONSTRAINT `tbl_leads_tbl_mettings` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_mettings` ADD CONSTRAINT `tbl_opportunities_tbl_mettings` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_mettings` ADD CONSTRAINT `tbl_users_tbl_mettings` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_milestones` ADD CONSTRAINT `tbl_project_tbl_milestones` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_milestones` ADD CONSTRAINT `tbl_users_tbl_milestones` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_notes` ADD CONSTRAINT `tbl_users_tbl_notes` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_notifications` ADD CONSTRAINT `tbl_users_tbl_notifications` 
    FOREIGN KEY (`from_user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_overtime` ADD CONSTRAINT `tbl_users_tbl_overtime` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_payments` ADD CONSTRAINT `tbl_accounts_tbl_payments` 
    FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_payments` ADD CONSTRAINT `tbl_invoices_tbl_payments` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_performance_apprisal` ADD CONSTRAINT `tbl_users_tbl_performance_apprisal` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_performance_indicator` ADD CONSTRAINT `tbl_designations_tbl_performance_indicator` 
    FOREIGN KEY (`designations_id`) REFERENCES `tbl_designations` (`designations_id`);

ALTER TABLE `tbl_pinaction` ADD CONSTRAINT `tbl_users_tbl_pinaction` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_private_chat` ADD CONSTRAINT `tbl_users_tbl_private_chat` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_private_chat_messages` ADD CONSTRAINT `tbl_private_chat_tbl_private_chat_messages` 
    FOREIGN KEY (`private_chat_id`) REFERENCES `tbl_private_chat` (`private_chat_id`);

ALTER TABLE `tbl_private_chat_messages` ADD CONSTRAINT `tbl_users_tbl_private_chat_messages` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_private_chat_users` ADD CONSTRAINT `tbl_private_chat_tbl_private_chat_users` 
    FOREIGN KEY (`private_chat_id`) REFERENCES `tbl_private_chat` (`private_chat_id`);

ALTER TABLE `tbl_private_chat_users` ADD CONSTRAINT `tbl_users_tbl_private_chat_users` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_proposals` ADD CONSTRAINT `tbl_users_tbl_proposals` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_proposals_items` ADD CONSTRAINT `tbl_items_tbl_proposals_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_items` (`items_id`);

ALTER TABLE `tbl_proposals_items` ADD CONSTRAINT `tbl_proposals_tbl_proposals_items` 
    FOREIGN KEY (`proposals_id`) REFERENCES `tbl_proposals` (`proposals_id`);

ALTER TABLE `tbl_proposals_items` ADD CONSTRAINT `tbl_purchase_items_tbl_proposals_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_purchase_items` (`items_id`);

ALTER TABLE `tbl_proposals_items` ADD CONSTRAINT `tbl_return_stock_items_tbl_proposals_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_return_stock_items` (`items_id`);

ALTER TABLE `tbl_proposals_items` ADD CONSTRAINT `tbl_saved_items_tbl_proposals_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_purchase_items` ADD CONSTRAINT `tbl_items_tbl_purchase_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_items` (`items_id`);

ALTER TABLE `tbl_purchase_items` ADD CONSTRAINT `tbl_purchases_tbl_purchase_items` 
    FOREIGN KEY (`purchase_id`) REFERENCES `tbl_purchases` (`purchase_id`);

ALTER TABLE `tbl_purchase_items` ADD CONSTRAINT `tbl_return_stock_items_tbl_purchase_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_return_stock_items` (`items_id`);

ALTER TABLE `tbl_purchase_items` ADD CONSTRAINT `tbl_saved_items_tbl_purchase_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_purchase_payments` ADD CONSTRAINT `tbl_accounts_tbl_purchase_payments` 
    FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_purchase_payments` ADD CONSTRAINT `tbl_purchases_tbl_purchase_payments` 
    FOREIGN KEY (`purchase_id`) REFERENCES `tbl_purchases` (`purchase_id`);

ALTER TABLE `tbl_purchases` ADD CONSTRAINT `tbl_suppliers_tbl_purchases` 
    FOREIGN KEY (`supplier_id`) REFERENCES `tbl_suppliers` (`supplier_id`);

ALTER TABLE `tbl_purchases` ADD CONSTRAINT `tbl_users_tbl_purchases` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_quotation_details` ADD CONSTRAINT `tbl_quotations_tbl_quotation_details` 
    FOREIGN KEY (`quotations_id`) REFERENCES `tbl_quotations` (`quotations_id`);

ALTER TABLE `tbl_quotations` ADD CONSTRAINT `tbl_client_tbl_quotations` 
    FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`);

ALTER TABLE `tbl_quotations` ADD CONSTRAINT `tbl_users_tbl_quotations` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_return_stock` ADD CONSTRAINT `tbl_invoices_tbl_return_stock` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_return_stock` ADD CONSTRAINT `tbl_users_tbl_return_stock` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_return_stock_items` ADD CONSTRAINT `tbl_items_tbl_return_stock_items` 
    FOREIGN KEY (`invoice_items_id`) REFERENCES `tbl_items` (`items_id`);

ALTER TABLE `tbl_return_stock_items` ADD CONSTRAINT `tbl_purchase_items_tbl_return_stock_items` 
    FOREIGN KEY (`invoice_items_id`) REFERENCES `tbl_purchase_items` (`items_id`);

ALTER TABLE `tbl_return_stock_items` ADD CONSTRAINT `tbl_return_stock_tbl_return_stock_items` 
    FOREIGN KEY (`return_stock_id`) REFERENCES `tbl_return_stock` (`return_stock_id`);

ALTER TABLE `tbl_return_stock_items` ADD CONSTRAINT `tbl_saved_items_tbl_return_stock_items` 
    FOREIGN KEY (`saved_items_id`) REFERENCES `tbl_saved_items` (`saved_items_id`);

ALTER TABLE `tbl_return_stock_items` ADD CONSTRAINT `tbl_stock_tbl_return_stock_items` 
    FOREIGN KEY (`return_stock_id`) REFERENCES `tbl_stock` (`stock_id`);

ALTER TABLE `tbl_return_stock_payments` ADD CONSTRAINT `tbl_accounts_tbl_return_stock_payments` 
    FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_return_stock_payments` ADD CONSTRAINT `tbl_return_stock_tbl_return_stock_payments` 
    FOREIGN KEY (`return_stock_id`) REFERENCES `tbl_return_stock` (`return_stock_id`);

ALTER TABLE `tbl_return_stock_payments` ADD CONSTRAINT `tbl_stock_tbl_return_stock_payments` 
    FOREIGN KEY (`return_stock_id`) REFERENCES `tbl_stock` (`stock_id`);

ALTER TABLE `tbl_salary_allowance` ADD CONSTRAINT `tbl_salary_template_tbl_salary_allowance` 
    FOREIGN KEY (`salary_template_id`) REFERENCES `tbl_salary_template` (`salary_template_id`);

ALTER TABLE `tbl_salary_deduction` ADD CONSTRAINT `tbl_salary_template_tbl_salary_deduction` 
    FOREIGN KEY (`salary_template_id`) REFERENCES `tbl_salary_template` (`salary_template_id`);

ALTER TABLE `tbl_salary_payment` ADD CONSTRAINT `tbl_users_tbl_salary_payment` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_salary_payment_allowance` ADD CONSTRAINT `tbl_salary_payment_tbl_salary_payment_allowance` 
    FOREIGN KEY (`salary_payment_id`) REFERENCES `tbl_salary_payment` (`salary_payment_id`);

ALTER TABLE `tbl_salary_payment_deduction` ADD CONSTRAINT `tbl_salary_payment_tbl_salary_payment_deduction` 
    FOREIGN KEY (`salary_payment_id`) REFERENCES `tbl_salary_payment` (`salary_payment_id`);

ALTER TABLE `tbl_salary_payment_details` ADD CONSTRAINT `tbl_salary_payment_tbl_salary_payment_details` 
    FOREIGN KEY (`salary_payment_id`) REFERENCES `tbl_salary_payment` (`salary_payment_id`);

ALTER TABLE `tbl_salary_payslip` ADD CONSTRAINT `tbl_salary_payment_tbl_salary_payslip` 
    FOREIGN KEY (`salary_payment_id`) REFERENCES `tbl_salary_payment` (`salary_payment_id`);

ALTER TABLE `tbl_saved_items` ADD CONSTRAINT `tbl_customer_group_tbl_saved_items` 
    FOREIGN KEY (`customer_group_id`) REFERENCES `tbl_customer_group` (`customer_group_id`);

ALTER TABLE `tbl_sent` ADD CONSTRAINT `tbl_users_tbl_sent` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_stock` ADD CONSTRAINT `tbl_stock_category_tbl_stock` 
    FOREIGN KEY (`stock_sub_category_id`) REFERENCES `tbl_stock_category` (`stock_category_id`);

ALTER TABLE `tbl_stock` ADD CONSTRAINT `tbl_stock_sub_category_tbl_stock` 
    FOREIGN KEY (`stock_sub_category_id`) REFERENCES `tbl_stock_sub_category` (`stock_sub_category_id`);

ALTER TABLE `tbl_stock_sub_category` ADD CONSTRAINT `tbl_stock_category_tbl_stock_sub_category` 
    FOREIGN KEY (`stock_category_id`) REFERENCES `tbl_stock_category` (`stock_category_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_bug_tbl_task` 
    FOREIGN KEY (`bug_id`) REFERENCES `tbl_bug` (`bug_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_goal_tracking_tbl_task` 
    FOREIGN KEY (`goal_tracking_id`) REFERENCES `tbl_goal_tracking` (`goal_tracking_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_leads_tbl_task` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_milestones_tbl_task` 
    FOREIGN KEY (`milestones_id`) REFERENCES `tbl_milestones` (`milestones_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_opportunities_tbl_task` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_project_tbl_task` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_task` ADD CONSTRAINT `tbl_transactions_tbl_task` 
    FOREIGN KEY (`transactions_id`) REFERENCES `tbl_transactions` (`transactions_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_bug_tbl_task_attachment` 
    FOREIGN KEY (`bug_id`) REFERENCES `tbl_bug` (`bug_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_leads_tbl_task_attachment` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_opportunities_tbl_task_attachment` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_project_tbl_task_attachment` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_task_tbl_task_attachment` 
    FOREIGN KEY (`task_id`) REFERENCES `tbl_task` (`task_id`);

ALTER TABLE `tbl_task_attachment` ADD CONSTRAINT `tbl_users_tbl_task_attachment` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_bug_tbl_task_comment` 
    FOREIGN KEY (`bug_id`) REFERENCES `tbl_bug` (`bug_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_files_tbl_task_comment` 
    FOREIGN KEY (`uploaded_files_id`) REFERENCES `tbl_files` (`files_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_goal_tracking_tbl_task_comment` 
    FOREIGN KEY (`goal_tracking_id`) REFERENCES `tbl_goal_tracking` (`goal_tracking_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_leads_tbl_task_comment` 
    FOREIGN KEY (`leads_id`) REFERENCES `tbl_leads` (`leads_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_opportunities_tbl_task_comment` 
    FOREIGN KEY (`opportunities_id`) REFERENCES `tbl_opportunities` (`opportunities_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_project_tbl_task_comment` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_task_tbl_task_comment` 
    FOREIGN KEY (`task_id`) REFERENCES `tbl_task` (`task_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_task_attachment_tbl_task_comment` 
    FOREIGN KEY (`task_attachment_id`) REFERENCES `tbl_task_attachment` (`task_attachment_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_task_uploaded_files_tbl_task_comment` 
    FOREIGN KEY (`uploaded_files_id`) REFERENCES `tbl_task_uploaded_files` (`uploaded_files_id`);

ALTER TABLE `tbl_task_comment` ADD CONSTRAINT `tbl_users_tbl_task_comment` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_task_uploaded_files` ADD CONSTRAINT `tbl_task_attachment_tbl_task_uploaded_files` 
    FOREIGN KEY (`task_attachment_id`) REFERENCES `tbl_task_attachment` (`task_attachment_id`);

ALTER TABLE `tbl_tasks_timer` ADD CONSTRAINT `tbl_project_tbl_tasks_timer` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_tasks_timer` ADD CONSTRAINT `tbl_task_tbl_tasks_timer` 
    FOREIGN KEY (`task_id`) REFERENCES `tbl_task` (`task_id`);

ALTER TABLE `tbl_tasks_timer` ADD CONSTRAINT `tbl_users_tbl_tasks_timer` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_tickets` ADD CONSTRAINT `tbl_departments_tbl_tickets` 
    FOREIGN KEY (`departments_id`) REFERENCES `tbl_departments` (`departments_id`);

ALTER TABLE `tbl_tickets` ADD CONSTRAINT `tbl_project_tbl_tickets` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_training` ADD CONSTRAINT `tbl_users_tbl_training` 
    FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

ALTER TABLE `tbl_transactions` ADD CONSTRAINT `tbl_accounts_tbl_transactions` 
    FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_transactions` ADD CONSTRAINT `tbl_invoices_tbl_transactions` 
    FOREIGN KEY (`invoices_id`) REFERENCES `tbl_invoices` (`invoices_id`);

ALTER TABLE `tbl_transactions` ADD CONSTRAINT `tbl_payment_methods_tbl_transactions` 
    FOREIGN KEY (`payment_methods_id`) REFERENCES `tbl_payment_methods` (`payment_methods_id`);

ALTER TABLE `tbl_transactions` ADD CONSTRAINT `tbl_project_tbl_transactions` 
    FOREIGN KEY (`project_id`) REFERENCES `tbl_project` (`project_id`);

ALTER TABLE `tbl_transactions` ADD CONSTRAINT `tbl_transfer_tbl_transactions` 
    FOREIGN KEY (`transfer_id`) REFERENCES `tbl_transfer` (`transfer_id`);

ALTER TABLE `tbl_transfer` ADD CONSTRAINT `tbl_accounts_tbl_transfer` 
    FOREIGN KEY (`to_account_id`) REFERENCES `tbl_accounts` (`account_id`);

ALTER TABLE `tbl_transfer` ADD CONSTRAINT `tbl_payment_methods_tbl_transfer` 
    FOREIGN KEY (`payment_methods_id`) REFERENCES `tbl_payment_methods` (`payment_methods_id`);

ALTER TABLE `tbl_uploaded_files` ADD CONSTRAINT `tbl_files_tbl_uploaded_files` 
    FOREIGN KEY (`uploaded_files_id`) REFERENCES `tbl_files` (`files_id`);

ALTER TABLE `tbl_uploaded_files` ADD CONSTRAINT `tbl_task_uploaded_files_tbl_uploaded_files` 
    FOREIGN KEY (`uploaded_files_id`) REFERENCES `tbl_task_uploaded_files` (`uploaded_files_id`);

ALTER TABLE `tbl_user_role` ADD CONSTRAINT `tbl_client_menu_tbl_user_role` 
    FOREIGN KEY (`menu_id`) REFERENCES `tbl_client_menu` (`menu_id`);

ALTER TABLE `tbl_user_role` ADD CONSTRAINT `tbl_designations_tbl_user_role` 
    FOREIGN KEY (`designations_id`) REFERENCES `tbl_designations` (`designations_id`);

ALTER TABLE `tbl_user_role` ADD CONSTRAINT `tbl_menu_tbl_user_role` 
    FOREIGN KEY (`menu_id`) REFERENCES `tbl_menu` (`menu_id`);

ALTER TABLE `tbl_working_days` ADD CONSTRAINT `tbl_days_tbl_working_days` 
    FOREIGN KEY (`day_id`) REFERENCES `tbl_days` (`day_id`);
