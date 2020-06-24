# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          lead_spot.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:37                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "activity_log"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `activity_log` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `log_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `subject_id` BIGINT(20) UNSIGNED,
    `subject_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `causer_id` BIGINT(20) UNSIGNED,
    `causer_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `properties` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `causer` ON `activity_log` (`causer_id`,`causer_type`);

CREATE INDEX `activity_log_log_name_index` ON `activity_log` (`log_name`);

CREATE INDEX `subject` ON `activity_log` (`subject_id`,`subject_type`);

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `contact_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_type` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'staff',
    `address` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

# ---------------------------------------------------------------------- #
# Add table "app_setting"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `app_setting` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `site_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_favicon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `google_map_api` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_header_code` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_footer_code` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site_copyright` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `facebook_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instagram_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gplus_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `linkedin_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slider_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slider_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slider_status` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remember_token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "callhistory"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `callhistory` (
    `callhistory_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `customer_id` INTEGER(11),
    `assigned_to` INTEGER(11),
    `date` DATE,
    `duration` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `start_time` TIME,
    `end_time` TIME,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`callhistory_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "city"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `city` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `state_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "country"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `country` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `dial_code` INTEGER(11) NOT NULL,
    `currency_name` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `symbol` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_code` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer` (
    `customer_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `mobile_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country_id` INTEGER(11),
    `state_id` INTEGER(11),
    `city_id` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`customer_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense` (
    `expense_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATE,
    `amount` DOUBLE,
    `payment` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`expense_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "failed_jobs"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `failed_jobs` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `connection` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `queue` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "lead"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `lead` (
    `lead_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `mobile_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country_id` INTEGER(10) UNSIGNED,
    `state_id` INTEGER(10) UNSIGNED,
    `city_id` INTEGER(10) UNSIGNED,
    `status` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `source` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `assigned_to` INTEGER(10) UNSIGNED,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "media"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `media` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL,
    `collection_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `file_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mime_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `disk` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `size` INTEGER(10) UNSIGNED NOT NULL,
    `manipulations` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `custom_properties` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `responsive_images` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order_column` INTEGER(10) UNSIGNED,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `media_model_type_model_id_index` ON `media` (`model_type`,`model_id`);

# ---------------------------------------------------------------------- #
# Add table "meeting"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `meeting` (
    `meeting_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATE,
    `assigned_to` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`meeting_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "migrations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `migrations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `migration` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "model_has_roles"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `model_has_roles` (
    `role_id` BIGINT(20) UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `model_has_roles_model_id_model_type_index` ON `model_has_roles` (`model_id`,`model_type`);

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `product` (
    `product_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `unit` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `tax` DOUBLE(8,2),
    `rate` DOUBLE,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'product , service',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`product_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "quotation"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `quotation` (
    `quotation_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE,
    `customer_id` INTEGER(11),
    `assigned_to` INTEGER(11),
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `total_amount` DOUBLE,
    `discount` DOUBLE(8,2) DEFAULT 0.00,
    `status` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`quotation_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "quotation_item"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `quotation_item` (
    `quotation_item_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `quotation_id` INTEGER(10) UNSIGNED,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rate` DOUBLE,
    `unit` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `quantity` DOUBLE(8,2),
    `tax` DOUBLE(8,2) DEFAULT 0.00,
    `amount` DOUBLE,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`quotation_item_id`)
)
ENGINE = INNODB;

CREATE INDEX `quotation_item_quotation_id_foreign` ON `quotation_item` (`quotation_id`);

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_default` TINYINT(4) NOT NULL DEFAULT 0,
    `is_hidden` TINYINT(4) NOT NULL DEFAULT 0,
    `enabled` TINYINT(4) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "saleorder"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `saleorder` (
    `saleorder_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE,
    `customer_id` INTEGER(11),
    `assigned_to` INTEGER(11),
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `total_amount` DOUBLE,
    `discount` DOUBLE(8,2),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`saleorder_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "saleorder_item"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `saleorder_item` (
    `saleorder_item_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `saleorder_id` INTEGER(10) UNSIGNED,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rate` DOUBLE,
    `unit` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `quantity` DOUBLE(8,2),
    `tax` DOUBLE(8,2),
    `amount` DOUBLE,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`saleorder_item_id`)
)
ENGINE = INNODB;

CREATE INDEX `saleorder_item_saleorder_id_foreign` ON `saleorder_item` (`saleorder_id`);

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `settings_key_index` ON `settings` (`key`);

# ---------------------------------------------------------------------- #
# Add table "state"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `state` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `country_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "static_data"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `static_data` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `value` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `label` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) DEFAULT 1,
    `sequence` INTEGER(10) UNSIGNED DEFAULT 0,
    `color` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "task"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `task` (
    `task_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATE,
    `priority` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `related` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'customer /lead/ expense',
    `related_id` INTEGER(10) UNSIGNED COMMENT 'customer id,lead id,expense id',
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`task_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "todo"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `todo` (
    `todo_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED,
    `user_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATE,
    `time` TIME,
    `is_check` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`todo_id`)
)
ENGINE = INNODB;

CREATE INDEX `todo_user_id_index` ON `todo` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `contact_number` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `profile_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gender` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `activation_token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'staff',
    `api_token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_verified_at` TIMESTAMP,
    `status` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
    `banned` TINYINT(4) NOT NULL DEFAULT 0,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE UNIQUE INDEX `users_username_unique` ON `users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "model_has_permissions"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `model_has_permissions` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`)
)
ENGINE = INNODB;

CREATE INDEX `model_has_permissions_model_id_model_type_index` ON `model_has_permissions` (`model_id`,`model_type`);

# ---------------------------------------------------------------------- #
# Add table "role_has_permissions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `role_has_permissions` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `role_has_permissions_role_id_foreign` ON `role_has_permissions` (`role_id`);

CREATE INDEX `role_has_permissions_permission_id` ON `role_has_permissions` (`permission_id`);

# ---------------------------------------------------------------------- #
# Add table "role_user"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `role_user` (
    `user_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`)
)
ENGINE = INNODB;

CREATE INDEX `role_user_user_id_index` ON `role_user` (`user_id`);

CREATE INDEX `role_user_role_id_index` ON `role_user` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "user_profiles"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_profiles` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `gender` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `dob` DATE,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `state` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `pincode` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_profiles_user_id_foreign` ON `user_profiles` (`user_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `model_has_permissions` ADD CONSTRAINT `model_has_permissions_permission_id` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `quotation_item` ADD CONSTRAINT `quotation_item_quotation_id_foreign` 
    FOREIGN KEY (`quotation_id`) REFERENCES `quotation` (`quotation_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_permission_id` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_user` ADD CONSTRAINT `role_user_role_id_index` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `role_user` ADD CONSTRAINT `role_user_user_id` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `saleorder_item` ADD CONSTRAINT `saleorder_item_saleorder_id_foreign` 
    FOREIGN KEY (`saleorder_id`) REFERENCES `saleorder` (`saleorder_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_profiles` ADD CONSTRAINT `user_profiles_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
