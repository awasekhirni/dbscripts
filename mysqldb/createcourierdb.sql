# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          courierdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:45                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

# ---------------------------------------------------------------------- #
# Add table "branches"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `branches` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faqs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `faqs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `answer` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `header_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `header_subtitle` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `service_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `service_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `aboutus_keyword` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `aboutus_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `aboutus_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `testimonial_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `testimonial_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `search_currier_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `search_currier_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `footer_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gallery_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gallery_details` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_notification` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `email_sent_from` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_template` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_api` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_notification` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `registration_verification` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `email_verification` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `sms_verification` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `base_currency` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `base_currency_symbol` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `departure_currier` INTEGER(11),
    `upcoming_currier` INTEGER(11),
    `total_deliver` INTEGER(11),
    `about_us_quote_one` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about_us_quote_two` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about_us_quote_three` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `map` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
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
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` ENUM('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "services"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `services` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `icon` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `details` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "socials"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `socials` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "testimonials"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `testimonials` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `designation` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "units"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `units` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` ENUM('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_verified_at` TIMESTAMP,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` ENUM('Manager','Staff') COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` ENUM('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
    `branch_id` INTEGER(10) UNSIGNED NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE INDEX `users_branch_id_index` ON `users` (`branch_id`);

# ---------------------------------------------------------------------- #
# Add table "visitor_messages"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `visitor_messages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `messages` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "courier_types"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `courier_types` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `unit_id` INTEGER(10) UNSIGNED NOT NULL,
    `price` DOUBLE(8,2) NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` ENUM('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `courier_types_unit_id_index` ON `courier_types` (`unit_id`);

# ---------------------------------------------------------------------- #
# Add table "currier_infos"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `currier_infos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sender_branch_id` INTEGER(10) UNSIGNED NOT NULL,
    `sender_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sender_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sender_phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sender_address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `receiver_branch_id` INTEGER(10) UNSIGNED NOT NULL,
    `receiver_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `receiver_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `receiver_phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `receiver_address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sender_branch_staff_id` INTEGER(10) UNSIGNED,
    `receiver_branch_staff_id` INTEGER(10) UNSIGNED,
    `invoice_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `code` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_receiver_id` INTEGER(11),
    `payment_branch_id` INTEGER(11),
    `payment_method_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_status` ENUM('Unpaid','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
    `payment_transaction_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_date` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_balance` DOUBLE(8,2),
    `payment_transaction_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('Received','Delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Delivered',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `currier_infos_sender_branch_id_index` ON `currier_infos` (`sender_branch_id`);

CREATE INDEX `currier_infos_receiver_branch_id_index` ON `currier_infos` (`receiver_branch_id`);

CREATE INDEX `currier_infos_sender_branch_staff_id_index` ON `currier_infos` (`sender_branch_staff_id`);

CREATE INDEX `currier_infos_receiver_branch_staff_id_index` ON `currier_infos` (`receiver_branch_staff_id`);

# ---------------------------------------------------------------------- #
# Add table "currier_product_infos"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `currier_product_infos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `currier_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currier_type` INTEGER(11) NOT NULL,
    `currier_quantity` INTEGER(11) NOT NULL,
    `currier_fee` DOUBLE(8,2) NOT NULL,
    `currier_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `currier_info_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `currier_product_infos_currier_info_id_index` ON `currier_product_infos` (`currier_info_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `courier_types` ADD CONSTRAINT `courier_types_unit_id_foreign` 
    FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `currier_infos` ADD CONSTRAINT `currier_infos_receiver_branch_id_foreign` 
    FOREIGN KEY (`receiver_branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `currier_infos` ADD CONSTRAINT `currier_infos_receiver_branch_staff_id_foreign` 
    FOREIGN KEY (`receiver_branch_staff_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `currier_infos` ADD CONSTRAINT `currier_infos_sender_branch_id_foreign` 
    FOREIGN KEY (`sender_branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `currier_infos` ADD CONSTRAINT `currier_infos_sender_branch_staff_id_foreign` 
    FOREIGN KEY (`sender_branch_staff_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `currier_product_infos` ADD CONSTRAINT `currier_product_infos_currier_info_id_foreign` 
    FOREIGN KEY (`currier_info_id`) REFERENCES `currier_infos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `users` ADD CONSTRAINT `users_branch_id_foreign` 
    FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
