# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-18 15:41                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "activity_logs"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `activity_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `action` ENUM('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
    `log_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `log_type_title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `log_type_id` INTEGER(11) NOT NULL DEFAULT 0,
    `changes` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `log_for` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
    `log_for_id` INTEGER(11) NOT NULL DEFAULT 0,
    `log_for2` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `log_for_id2` INTEGER(11),
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "announcements"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `announcements` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `share_with` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_at` DATETIME NOT NULL,
    `files` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `read_by` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `created_by` ON `announcements` (`created_by`);

# ---------------------------------------------------------------------- #
# Add table "ci_sessions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ci_sessions` (
    `id` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `ci_sessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "client_groups"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `client_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_fields"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `placeholder` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `example_variable_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `options` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `field_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `related_to` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `show_in_table` TINYINT(1) NOT NULL DEFAULT 0,
    `show_in_invoice` TINYINT(1) NOT NULL DEFAULT 0,
    `show_in_estimate` TINYINT(1) NOT NULL DEFAULT 0,
    `visible_to_admins_only` TINYINT(1) NOT NULL DEFAULT 0,
    `hide_from_clients` TINYINT(1) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_templates"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_templates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `template_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email_subject` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `default_message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `custom_message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "estimate_forms"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `estimate_forms` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `status` ENUM('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
    `assigned_to` INTEGER(11) NOT NULL,
    `public` TINYINT(1) NOT NULL DEFAULT 0,
    `enable_attachment` TINYINT(4) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense_categories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "help_articles"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `help_articles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME,
    `status` ENUM('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
    `files` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `total_views` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "help_categories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `help_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `type` ENUM('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `status` ENUM('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "items"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `unit_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
    `rate` DOUBLE NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "lead_source"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `lead_source` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "lead_status"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `lead_status` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `color` VARCHAR(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "leads"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `leads` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `company_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `first_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `last_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_date` DATE NOT NULL,
    `website` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "leave_types"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `leave_types` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `status` ENUM('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
    `color` VARCHAR(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `subject` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
    `message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `from_user_id` INTEGER(11) NOT NULL,
    `to_user_id` INTEGER(11) NOT NULL,
    `status` ENUM('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
    `message_id` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    `files` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted_by_users` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `message_from` ON `messages` (`from_user_id`);

CREATE INDEX `message_to` ON `messages` (`to_user_id`);

# ---------------------------------------------------------------------- #
# Add table "notification_settings"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `notification_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `event` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `enable_email` INTEGER(1) NOT NULL DEFAULT 0,
    `enable_web` INTEGER(1) NOT NULL DEFAULT 0,
    `notify_to_team` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `notify_to_team_members` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `notify_to_terms` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `event` ON `notification_settings` (`event`);

# ---------------------------------------------------------------------- #
# Add table "payment_methods"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_methods` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `online_payable` TINYINT(1) NOT NULL DEFAULT 0,
    `available_on_invoice` TINYINT(1) NOT NULL DEFAULT 0,
    `minimum_payment_amount` DOUBLE NOT NULL DEFAULT 0,
    `settings` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "paypal_ipn"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `paypal_ipn` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `transaction_id` TINYTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `ipn_hash` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `ipn_data` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `share_with` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `files` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `permissions` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `setting_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `setting_value` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
    `deleted` TINYINT(1) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `setting_name` ON `settings` (`setting_name`);

# ---------------------------------------------------------------------- #
# Add table "task_status"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `task_status` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `key_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `color` VARCHAR(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taxes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `taxes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TINYTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `percentage` DOUBLE NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "team"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `team` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `members` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ticket_types"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticket_types` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "to_do"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `to_do` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` ENUM('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
    `start_date` DATE,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "clients"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `clients` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `company_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_date` DATE NOT NULL,
    `website` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency_symbol` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `starred_by` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `group_ids` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `is_lead` TINYINT(1) NOT NULL DEFAULT 0,
    `lead_status_id` INTEGER(11) NOT NULL,
    `owner_id` INTEGER(11) NOT NULL,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `lead_source_id` INTEGER(11) NOT NULL,
    `last_lead_status` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `client_migration_date` DATE NOT NULL,
    `vat_number` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `disable_online_payment` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_field_values"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_field_values` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `related_to_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `related_to_id` INTEGER(11) NOT NULL,
    `custom_field_id` INTEGER(11) NOT NULL,
    `value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "events"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `events` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `start_time` TIME,
    `end_time` TIME,
    `created_by` INTEGER(11) NOT NULL,
    `location` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `client_id` INTEGER(11) NOT NULL DEFAULT 0,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `share_with` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `editable_google_event` TINYINT(1) NOT NULL DEFAULT 0,
    `google_event_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    `color` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `recurring` INTEGER(1) NOT NULL DEFAULT 0,
    `repeat_every` INTEGER(11) NOT NULL DEFAULT 0,
    `repeat_type` ENUM('days','weeks','months','years') COLLATE utf8_unicode_ci,
    `no_of_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `last_start_date` DATE,
    `recurring_dates` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `confirmed_by` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `rejected_by` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `created_by` ON `events` (`created_by`);

# ---------------------------------------------------------------------- #
# Add table "leave_applications"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `leave_applications` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `leave_type_id` INTEGER(11) NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `total_hours` DECIMAL(7,2) NOT NULL,
    `total_days` DECIMAL(5,2) NOT NULL,
    `applicant_id` INTEGER(11) NOT NULL,
    `reason` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `status` ENUM('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
    `created_at` DATETIME NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `checked_at` DATETIME,
    `checked_by` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `leave_type_id` ON `leave_applications` (`leave_type_id`);

CREATE INDEX `user_id` ON `leave_applications` (`applicant_id`);

CREATE INDEX `checked_by` ON `leave_applications` (`checked_by`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `last_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `user_type` ENUM('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
    `is_admin` TINYINT(1) NOT NULL DEFAULT 0,
    `role_id` INTEGER(11) NOT NULL DEFAULT 0,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` ENUM('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
    `message_checked_at` DATETIME,
    `client_id` INTEGER(11) NOT NULL DEFAULT 0,
    `notification_checked_at` DATETIME,
    `is_primary_contact` TINYINT(1) NOT NULL DEFAULT 0,
    `job_title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
    `disable_login` TINYINT(1) NOT NULL DEFAULT 0,
    `note` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `alternative_address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `alternative_phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `dob` DATE,
    `ssn` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `gender` ENUM('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
    `sticky_note` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `skype` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `enable_web_notification` TINYINT(1) NOT NULL DEFAULT 1,
    `enable_email_notification` TINYINT(1) NOT NULL DEFAULT 1,
    `created_at` DATETIME,
    `last_online` DATETIME,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_type` ON `users` (`user_type`);

CREATE INDEX `email` ON `users` (`email`);

CREATE INDEX `client_id` ON `users` (`client_id`);

CREATE INDEX `deleted` ON `users` (`deleted`);

# ---------------------------------------------------------------------- #
# Add table "attendance"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `attendance` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `status` ENUM('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
    `user_id` INTEGER(11) NOT NULL,
    `in_time` DATETIME NOT NULL,
    `out_time` DATETIME,
    `checked_by` INTEGER(11),
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `checked_at` DATETIME,
    `reject_reason` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_id` ON `attendance` (`user_id`);

CREATE INDEX `checked_by` ON `attendance` (`checked_by`);

# ---------------------------------------------------------------------- #
# Add table "custom_widgets"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_widgets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `show_title` TINYINT(1) NOT NULL DEFAULT 0,
    `show_border` TINYINT(1) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "dashboards"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `dashboards` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `data` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `color` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_files"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_files` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `file_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `file_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `service_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `file_size` DOUBLE NOT NULL,
    `created_at` DATETIME NOT NULL,
    `client_id` INTEGER(11) NOT NULL DEFAULT 0,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `uploaded_by` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "social_links"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `social_links` (
    `id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `facebook` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `twitter` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `linkedin` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `googleplus` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `digg` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `youtube` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `pinterest` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `instagram` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `github` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `tumblr` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `vine` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "team_member_job_info"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `team_member_job_info` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `date_of_hire` DATE,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    `salary` DOUBLE NOT NULL DEFAULT 0,
    `salary_term` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_id` ON `team_member_job_info` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "checklist_items"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `checklist_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `is_checked` INTEGER(11) NOT NULL DEFAULT 0,
    `task_id` INTEGER(11) NOT NULL DEFAULT 0,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "estimate_items"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `estimate_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `quantity` DOUBLE NOT NULL,
    `unit_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
    `rate` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `estimate_id` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "estimate_requests"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `estimate_requests` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `estimate_form_id` INTEGER(11) NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `client_id` INTEGER(11) NOT NULL,
    `lead_id` INTEGER(11) NOT NULL,
    `assigned_to` INTEGER(11) NOT NULL,
    `status` ENUM('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
    `files` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "estimates"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `estimates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `client_id` INTEGER(11) NOT NULL,
    `estimate_request_id` INTEGER(11) NOT NULL DEFAULT 0,
    `estimate_date` DATE NOT NULL,
    `valid_until` DATE NOT NULL,
    `note` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `last_email_sent_date` DATE,
    `status` ENUM('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
    `tax_id` INTEGER(11) NOT NULL DEFAULT 0,
    `tax_id2` INTEGER(11) NOT NULL DEFAULT 0,
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
    `discount_amount` DOUBLE NOT NULL,
    `discount_amount_type` ENUM('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expenses"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `expenses` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `expense_date` DATE NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `amount` DOUBLE NOT NULL,
    `files` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `tax_id` INTEGER(11) NOT NULL DEFAULT 0,
    `tax_id2` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice_items"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `quantity` DOUBLE NOT NULL,
    `unit_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
    `rate` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `invoice_id` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice_payments"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice_payments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `amount` DOUBLE NOT NULL,
    `payment_date` DATE NOT NULL,
    `payment_method_id` INTEGER(11) NOT NULL,
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `invoice_id` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `transaction_id` TINYTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_by` INTEGER(11) DEFAULT 1,
    `created_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id` ON `invoice_payments` (`id`);

CREATE INDEX `id_2` ON `invoice_payments` (`id`);

# ---------------------------------------------------------------------- #
# Add table "invoices"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoices` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `client_id` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `bill_date` DATE NOT NULL,
    `due_date` DATE NOT NULL,
    `note` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `last_email_sent_date` DATE,
    `status` ENUM('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
    `tax_id` INTEGER(11) NOT NULL DEFAULT 0,
    `tax_id2` INTEGER(11) NOT NULL DEFAULT 0,
    `recurring` TINYINT(4) NOT NULL DEFAULT 0,
    `recurring_invoice_id` INTEGER(11) NOT NULL DEFAULT 0,
    `repeat_every` INTEGER(11) NOT NULL DEFAULT 0,
    `repeat_type` ENUM('days','weeks','months','years') COLLATE utf8_unicode_ci,
    `no_of_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `next_recurring_date` DATE,
    `no_of_cycles_completed` INTEGER(11) NOT NULL DEFAULT 0,
    `due_reminder_date` DATE,
    `recurring_reminder_date` DATE,
    `discount_amount` DOUBLE NOT NULL,
    `discount_amount_type` ENUM('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
    `discount_type` ENUM('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
    `cancelled_at` DATETIME,
    `cancelled_by` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "milestones"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `milestones` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `due_date` DATE NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `notes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `client_id` INTEGER(11) NOT NULL DEFAULT 0,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `files` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `is_public` TINYINT(1) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `notify_to` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `read_by` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `event` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `task_id` INTEGER(11) NOT NULL,
    `project_comment_id` INTEGER(11) NOT NULL,
    `ticket_id` INTEGER(11) NOT NULL,
    `ticket_comment_id` INTEGER(11) NOT NULL,
    `project_file_id` INTEGER(11) NOT NULL,
    `leave_id` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `to_user_id` INTEGER(11) NOT NULL,
    `activity_log_id` INTEGER(11) NOT NULL,
    `client_id` INTEGER(11) NOT NULL,
    `lead_id` INTEGER(11) NOT NULL,
    `invoice_payment_id` INTEGER(11) NOT NULL,
    `invoice_id` INTEGER(11) NOT NULL,
    `estimate_id` INTEGER(11) NOT NULL,
    `estimate_request_id` INTEGER(11) NOT NULL,
    `actual_message_id` INTEGER(11) NOT NULL,
    `parent_message_id` INTEGER(11) NOT NULL,
    `event_id` INTEGER(11) NOT NULL,
    `announcement_id` INTEGER(11) NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_id` ON `notifications` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "project_comments"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `comment_id` INTEGER(11) NOT NULL DEFAULT 0,
    `task_id` INTEGER(11) NOT NULL DEFAULT 0,
    `file_id` INTEGER(11) NOT NULL DEFAULT 0,
    `customer_feedback_id` INTEGER(11) NOT NULL DEFAULT 0,
    `files` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "project_files"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_files` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `file_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `file_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `service_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `file_size` DOUBLE NOT NULL,
    `created_at` DATETIME NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `uploaded_by` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "project_members"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_members` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `is_leader` TINYINT(1) DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "project_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_settings` (
    `project_id` INTEGER(11) NOT NULL,
    `setting_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `setting_value` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `unique_index` ON `project_settings` (`project_id`,`setting_name`);

# ---------------------------------------------------------------------- #
# Add table "project_time"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_time` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME,
    `status` ENUM('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `task_id` INTEGER(11) NOT NULL DEFAULT 0,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "projects"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `projects` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `start_date` DATE,
    `deadline` DATE,
    `client_id` INTEGER(11) NOT NULL,
    `created_date` DATE,
    `created_by` INTEGER(11) NOT NULL DEFAULT 0,
    `status` ENUM('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `price` DOUBLE NOT NULL DEFAULT 0,
    `starred_by` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `estimate_id` INTEGER(11) NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tasks"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tasks` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `project_id` INTEGER(11) NOT NULL,
    `milestone_id` INTEGER(11) NOT NULL DEFAULT 0,
    `assigned_to` INTEGER(11) NOT NULL,
    `deadline` DATE,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `points` TINYINT(4) NOT NULL DEFAULT 1,
    `status` ENUM('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
    `status_id` INTEGER(11) NOT NULL,
    `start_date` DATE,
    `collaborators` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `recurring` TINYINT(1) NOT NULL DEFAULT 0,
    `repeat_every` INTEGER(11) NOT NULL DEFAULT 0,
    `repeat_type` ENUM('days','weeks','months','years') COLLATE utf8_unicode_ci,
    `no_of_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `recurring_task_id` INTEGER(11) NOT NULL DEFAULT 0,
    `no_of_cycles_completed` INTEGER(11) NOT NULL DEFAULT 0,
    `created_date` DATE NOT NULL,
    `next_recurring_date` DATE,
    `reminder_date` DATE NOT NULL,
    `ticket_id` INTEGER(11) NOT NULL,
    `deleted` TINYINT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ticket_comments"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticket_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `ticket_id` INTEGER(11) NOT NULL,
    `files` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tickets"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tickets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `client_id` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `ticket_type_id` INTEGER(11) NOT NULL,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `created_by` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `status` ENUM('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
    `last_activity_at` DATETIME,
    `assigned_to` INTEGER(11) NOT NULL DEFAULT 0,
    `creator_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `creator_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `labels` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `task_id` INTEGER(11) NOT NULL,
    `closed_at` DATETIME NOT NULL,
    `deleted` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `attendance` ADD CONSTRAINT `users_attendance` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `checklist_items` ADD CONSTRAINT `tasks_checklist_items` 
    FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`);

ALTER TABLE `clients` ADD CONSTRAINT `lead_source_clients` 
    FOREIGN KEY (`lead_source_id`) REFERENCES `lead_source` (`id`);

ALTER TABLE `clients` ADD CONSTRAINT `lead_status_clients` 
    FOREIGN KEY (`lead_status_id`) REFERENCES `lead_status` (`id`);

ALTER TABLE `clients` ADD CONSTRAINT `leads_clients` 
    FOREIGN KEY (`lead_status_id`) REFERENCES `leads` (`id`);

ALTER TABLE `custom_field_values` ADD CONSTRAINT `custom_fields_custom_field_values` 
    FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`);

ALTER TABLE `custom_widgets` ADD CONSTRAINT `users_custom_widgets` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `dashboards` ADD CONSTRAINT `users_dashboards` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `estimate_items` ADD CONSTRAINT `estimates_estimate_items` 
    FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`);

ALTER TABLE `estimate_requests` ADD CONSTRAINT `clients_estimate_requests` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `estimate_requests` ADD CONSTRAINT `estimate_forms_estimate_requests` 
    FOREIGN KEY (`estimate_form_id`) REFERENCES `estimate_forms` (`id`);

ALTER TABLE `estimate_requests` ADD CONSTRAINT `estimates_estimate_requests` 
    FOREIGN KEY (`estimate_form_id`) REFERENCES `estimates` (`id`);

ALTER TABLE `estimate_requests` ADD CONSTRAINT `leads_estimate_requests` 
    FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`);

ALTER TABLE `estimates` ADD CONSTRAINT `clients_estimates` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `estimates` ADD CONSTRAINT `estimate_requests_estimates` 
    FOREIGN KEY (`estimate_request_id`) REFERENCES `estimate_requests` (`id`);

ALTER TABLE `estimates` ADD CONSTRAINT `projects_estimates` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `events` ADD CONSTRAINT `clients_events` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `expenses` ADD CONSTRAINT `projects_expenses` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `expenses` ADD CONSTRAINT `users_expenses` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `general_files` ADD CONSTRAINT `clients_general_files` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `general_files` ADD CONSTRAINT `users_general_files` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `invoice_items` ADD CONSTRAINT `invoices_invoice_items` 
    FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

ALTER TABLE `invoice_payments` ADD CONSTRAINT `invoices_invoice_payments` 
    FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

ALTER TABLE `invoice_payments` ADD CONSTRAINT `payment_methods_invoice_payments` 
    FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `clients_invoices` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `projects_invoices` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `leave_applications` ADD CONSTRAINT `leave_types_leave_applications` 
    FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`);

ALTER TABLE `milestones` ADD CONSTRAINT `projects_milestones` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `notes` ADD CONSTRAINT `clients_notes` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `notes` ADD CONSTRAINT `projects_notes` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `notes` ADD CONSTRAINT `users_notes` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `activity_logs_notifications` 
    FOREIGN KEY (`activity_log_id`) REFERENCES `activity_logs` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `announcements_notifications` 
    FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `clients_notifications` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `estimate_requests_notifications` 
    FOREIGN KEY (`estimate_request_id`) REFERENCES `estimate_requests` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `estimates_notifications` 
    FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `events_notifications` 
    FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `invoice_payments_notifications` 
    FOREIGN KEY (`invoice_payment_id`) REFERENCES `invoice_payments` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `invoices_notifications` 
    FOREIGN KEY (`invoice_payment_id`) REFERENCES `invoices` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `leads_notifications` 
    FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `posts_notifications` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `project_comments_notifications` 
    FOREIGN KEY (`project_comment_id`) REFERENCES `project_comments` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `project_files_notifications` 
    FOREIGN KEY (`project_file_id`) REFERENCES `project_files` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `projects_notifications` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `tasks_notifications` 
    FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `ticket_comments_notifications` 
    FOREIGN KEY (`ticket_comment_id`) REFERENCES `ticket_comments` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `tickets_notifications` 
    FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `users_notifications` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `project_comments` ADD CONSTRAINT `projects_project_comments` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `project_comments` ADD CONSTRAINT `tasks_project_comments` 
    FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`);

ALTER TABLE `project_files` ADD CONSTRAINT `projects_project_files` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `project_members` ADD CONSTRAINT `projects_project_members` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `project_members` ADD CONSTRAINT `users_project_members` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `project_settings` ADD CONSTRAINT `projects_project_settings` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `project_time` ADD CONSTRAINT `projects_project_time` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `project_time` ADD CONSTRAINT `tasks_project_time` 
    FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`);

ALTER TABLE `project_time` ADD CONSTRAINT `users_project_time` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `projects` ADD CONSTRAINT `clients_projects` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `projects` ADD CONSTRAINT `estimates_projects` 
    FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`);

ALTER TABLE `social_links` ADD CONSTRAINT `users_social_links` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `tasks` ADD CONSTRAINT `milestones_tasks` 
    FOREIGN KEY (`milestone_id`) REFERENCES `milestones` (`id`);

ALTER TABLE `tasks` ADD CONSTRAINT `projects_tasks` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `tasks` ADD CONSTRAINT `tickets_tasks` 
    FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

ALTER TABLE `team_member_job_info` ADD CONSTRAINT `users_team_member_job_info` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `ticket_comments` ADD CONSTRAINT `tickets_ticket_comments` 
    FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

ALTER TABLE `tickets` ADD CONSTRAINT `clients_tickets` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `tickets` ADD CONSTRAINT `projects_tickets` 
    FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `tickets` ADD CONSTRAINT `tasks_tickets` 
    FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`);

ALTER TABLE `tickets` ADD CONSTRAINT `ticket_types_tickets` 
    FOREIGN KEY (`ticket_type_id`) REFERENCES `ticket_types` (`id`);

ALTER TABLE `users` ADD CONSTRAINT `clients_users` 
    FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

ALTER TABLE `users` ADD CONSTRAINT `roles_users` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
