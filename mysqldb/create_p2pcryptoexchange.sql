# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          p2pcryptoexchange.dez                           #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:18                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin_password_resets"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `admin_password_resets_email_index` ON `admin_password_resets` (`email`);

CREATE INDEX `admin_password_resets_token_index` ON `admin_password_resets` (`token`);

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mobile` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `login_time` DATETIME,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

# ---------------------------------------------------------------------- #
# Add table "basic_settings"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `basic_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sitename` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `usd_rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_sym` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `registration` TINYINT(1) NOT NULL DEFAULT 0,
    `email_verification` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_verification` TINYINT(1) NOT NULL DEFAULT 0,
    `email_notification` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_notification` TINYINT(4) NOT NULL DEFAULT 0,
    `withdraw_status` TINYINT(1) NOT NULL DEFAULT 0,
    `withdraw_charge` DOUBLE DEFAULT 0,
    `captcha` TINYINT(4) NOT NULL DEFAULT 0,
    `decimal` INTEGER(2) NOT NULL,
    `refcom` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `about` BLOB NOT NULL,
    `policy` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `google_map` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `terms` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `copyright` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `fb_comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trx_charge` INTEGER(11) NOT NULL,
    `banner_title` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `banner_sub_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cryptos"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `cryptos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `usd_rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deal_convertions"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `deal_convertions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `deal_id` INTEGER(11) NOT NULL,
    `type` INTEGER(11) NOT NULL,
    `deal_detail` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "etemplates"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `etemplates` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `esender` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mobile` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `emessage` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smsapi` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
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
    `currency` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menus"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `menus` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `slug` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` BLOB NOT NULL,
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
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sub_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ticket_comments"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticket_comments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ticket_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` INTEGER(11) NOT NULL,
    `comment` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tickets"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tickets` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ticket` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `subject` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL,
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
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `verification_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone_verify` TINYINT(4) NOT NULL DEFAULT 0,
    `email_verify` TINYINT(4) NOT NULL DEFAULT 0,
    `email_time` DATETIME,
    `phone_time` DATETIME,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `login_time` DATETIME,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `zip_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `tauth` INTEGER(11) NOT NULL DEFAULT 1,
    `tfver` INTEGER(11),
    `secretcode` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

# ---------------------------------------------------------------------- #
# Add table "advertise_deals"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `advertise_deals` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `add_type` INTEGER(11) NOT NULL,
    `to_user_id` INTEGER(11) NOT NULL,
    `from_user_id` INTEGER(11) NOT NULL,
    `trans_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount_to` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `usd_amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `coin_amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `gateway_id` INTEGER(11) NOT NULL,
    `method_id` INTEGER(11) NOT NULL,
    `currency_id` INTEGER(11) NOT NULL,
    `price` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `term_detail` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payment_detail` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crypto_addvertises"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_addvertises` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `add_type` INTEGER(11) NOT NULL,
    `gateway_id` INTEGER(11) NOT NULL,
    `method_id` INTEGER(11) NOT NULL,
    `currency_id` INTEGER(11) NOT NULL,
    `margin` INTEGER(11) NOT NULL,
    `price` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `min_amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `max_amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `term_detail` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payment_detail` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
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
# Add table "trxes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `trxes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `main_amo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trx` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_crypto_balances"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_crypto_balances` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `gateway_id` INTEGER(11) NOT NULL,
    `balance` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_logins"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_logins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `user_ip` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `location` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `advertise_deals` ADD CONSTRAINT `gateways_advertise_deals` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `crypto_addvertises` ADD CONSTRAINT `gateways_crypto_addvertises` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `crypto_addvertises` ADD CONSTRAINT `users_crypto_addvertises` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `gateways_deposits` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `users_deposits` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `trxes` ADD CONSTRAINT `users_trxes` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_crypto_balances` ADD CONSTRAINT `gateways_user_crypto_balances` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `user_crypto_balances` ADD CONSTRAINT `users_user_crypto_balances` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_logins` ADD CONSTRAINT `users_user_logins` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
