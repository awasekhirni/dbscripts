# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          internetbankingdb.dez                           #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:35                                #
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
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_username_unique` ON `admins` (`username`);

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

# ---------------------------------------------------------------------- #
# Add table "banks"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `banks` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `p_time` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `min_amount` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `max_amount` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `fixed_charge` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `percent_charge` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_at` TIMESTAMP,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blogs"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `blogs` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `image` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "branches"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `branches` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "contacts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `contacts` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `icon` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faqs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `faqs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "feedback"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `feedback` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `hyip_id` INTEGER(191),
    `ip` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "gateways"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `gateways` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `main_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `minamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `maxamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fixed_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `percent_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val3` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Website',
    `val4` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Industry Type',
    `val5` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Channel ID',
    `val6` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Transaction URL',
    `val7` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Transaction Status URL',
    `status` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
# Add table "partners"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `partners` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `url` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `id` INTEGER(191) NOT NULL,
    `email` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "public_contacts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `public_contacts` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `last_name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `subject` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `message` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "services"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `services` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `icon` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `branding` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `favicon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_from` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_body` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_notification` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_api` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_notification` TINYINT(1) NOT NULL DEFAULT 0,
    `email_verification` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_verification` TINYINT(1) NOT NULL DEFAULT 0,
    `registration` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `script` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `service_subtitle` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_thumbnail` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cur` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cur_symbol` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `facebook_api` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fag` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `footer_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `bal_trans_fixed_charge` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `bal_trans_per_charge` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `video_section_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `video_section_dec` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `video_link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about_subtitle` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `video_section_banner` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `service_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `faq_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `faq_subtitle` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `blog_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `blog_subtitle` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `subtitle` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `banner` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `btn_name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `btn_link` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "social_icons"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `social_icons` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `icon` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `link` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subscribes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscribes` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `account_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `avatar` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `balance` FLOAT(8,2) DEFAULT 0.00,
    `amount` FLOAT(8,2) DEFAULT 0.00,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_verified` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_time` VARCHAR(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_time` VARCHAR(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `verified_send` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_banned` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE UNIQUE INDEX `users_username_unique` ON `users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "wmethods"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `wmethods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `minamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `maxamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `fixed_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `percent_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `val1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "advertisements"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `advertisements` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL DEFAULT 0,
    `image` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `url` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `type` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `size` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `script` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `impression` INTEGER(11) NOT NULL DEFAULT 0,
    `click` INTEGER(191) NOT NULL DEFAULT 0,
    `price` FLOAT(8,2) NOT NULL DEFAULT 0.00,
    `start_date` DATE,
    `end_date` DATE,
    `day` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `ad_for` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '1',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deposits"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposits` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `gateway_id` INTEGER(11),
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `usd_amo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btc_amo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btc_wallet` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trx` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `try` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191),
    `trxid` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `amount` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
    `balance` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
    `fee` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
    `p_time` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `type` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `details` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdraws"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraws` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `wmethod_id` INTEGER(11) NOT NULL,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `fee` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `account` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `advertisements` ADD CONSTRAINT `users_advertisements` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `gateways_deposits` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `users_deposits` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `transactions` ADD CONSTRAINT `users_transactions` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `withdraws` ADD CONSTRAINT `users_withdraws` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `withdraws` ADD CONSTRAINT `wmethods_withdraws` 
    FOREIGN KEY (`wmethod_id`) REFERENCES `wmethods` (`id`);
