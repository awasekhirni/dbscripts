# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin_settings"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `welcome_text` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `welcome_subtitle` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `keywords` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `result_request` INTEGER(10) UNSIGNED NOT NULL COMMENT 'The max number of shots per request',
    `status_page` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
    `email_verification` ENUM('0','1') COLLATE utf8_general_ci NOT NULL COMMENT '0 Off, 1 On',
    `email_no_reply` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_admin` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `captcha` ENUM('on','off') COLLATE utf8_general_ci NOT NULL DEFAULT 'on',
    `file_size_allowed` INTEGER(11) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
    `google_analytics` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `paypal_account` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `twitter` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `facebook` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `googleplus` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `instagram` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `google_adsense` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `currency_symbol` CHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `currency_code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `min_donation_amount` INTEGER(11) UNSIGNED NOT NULL,
    `min_campaign_amount` INTEGER(11) UNSIGNED NOT NULL,
    `max_campaign_amount` INTEGER(11) UNSIGNED NOT NULL,
    `payment_gateway` ENUM('Paypal','Stripe') COLLATE utf8_general_ci NOT NULL DEFAULT 'Paypal',
    `paypal_sandbox` ENUM('true','false') COLLATE utf8_general_ci NOT NULL DEFAULT 'true',
    `min_width_height_image` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fee_donation` INTEGER(10) UNSIGNED NOT NULL,
    `auto_approve_campaigns` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '1',
    `stripe_secret_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `stripe_public_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `max_donation_amount` INTEGER(10) UNSIGNED NOT NULL,
    `enable_paypal` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `enable_stripe` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `enable_bank_transfer` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `bank_swift_code` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_number` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `branch_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `branch_address` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `iban` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date_format` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `link_privacy` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `link_terms` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `currency_position` ENUM('left','right') COLLATE utf8_general_ci NOT NULL DEFAULT 'left',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `max_campaign_amount` ON `admin_settings` (`max_campaign_amount`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mode` ENUM('on','off') COLLATE utf8_general_ci NOT NULL DEFAULT 'on',
    `image` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `slug` ON `categories` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "countries"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `countries` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `country_code` VARCHAR(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `country_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "migrations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `migrations` (
    `migration` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `batch` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `show_navbar` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0 No, 1 Yes',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `token` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_hash` ON `password_resets` (`token`);

CREATE INDEX `email` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "payment_gateways"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_gateways` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `enabled` ENUM('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `sandbox` ENUM('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
    `fee` DECIMAL(3,1) NOT NULL,
    `fee_cents` DECIMAL(2,2) NOT NULL,
    `email` VARCHAR(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `key_secret` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `bank_info` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reserved"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `reserved` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `name` ON `reserved` (`name`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `countries_id` CHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` CHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `avatar` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('pending','active','suspended','delete') COLLATE utf8_general_ci NOT NULL DEFAULT 'active',
    `role` ENUM('normal','admin') COLLATE utf8_general_ci NOT NULL DEFAULT 'normal',
    `remember_token` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `token` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `confirmation_code` VARCHAR(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `created_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `paypal_account` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_gateway` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bank` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `oauth_uid` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `oauth_provider` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `email` ON `users` (`email`);

CREATE INDEX `username` ON `users` (`status`);

CREATE INDEX `role` ON `users` (`role`);

# ---------------------------------------------------------------------- #
# Add table "campaigns"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `campaigns` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `small_image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `large_image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) UNSIGNED NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `status` ENUM('active','pending') COLLATE utf8_general_ci NOT NULL DEFAULT 'active',
    `token_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `goal` INTEGER(11) UNSIGNED NOT NULL,
    `location` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `finalized` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0 No 1 Yes',
    `categories_id` INTEGER(10) UNSIGNED NOT NULL,
    `featured` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `deadline` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `token_id` ON `campaigns` (`token_id`);

CREATE INDEX `author_id` ON `campaigns` (`user_id`,`status`,`token_id`);

CREATE INDEX `image` ON `campaigns` (`small_image`);

CREATE INDEX `goal` ON `campaigns` (`goal`);

CREATE INDEX `categories_id` ON `campaigns` (`categories_id`);

# ---------------------------------------------------------------------- #
# Add table "campaigns_reported"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `campaigns_reported` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `campaigns_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "likes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `likes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `campaigns_id` INTEGER(10) UNSIGNED NOT NULL,
    `status` ENUM('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "rewards"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `rewards` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `campaigns_id` INTEGER(10) UNSIGNED NOT NULL,
    `title` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `amount` INTEGER(10) UNSIGNED NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `quantity` INTEGER(10) UNSIGNED NOT NULL,
    `delivery` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "updates"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `updates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `campaigns_id` INTEGER(10) UNSIGNED NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `token_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `token_id` ON `updates` (`token_id`);

CREATE INDEX `author_id` ON `updates` (`token_id`);

CREATE INDEX `image` ON `updates` (`image`);

CREATE INDEX `category_id` ON `updates` (`campaigns_id`);

# ---------------------------------------------------------------------- #
# Add table "withdrawals"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdrawals` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `campaigns_id` INTEGER(10) UNSIGNED NOT NULL,
    `status` ENUM('pending','paid') COLLATE utf8_general_ci NOT NULL DEFAULT 'pending',
    `amount` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `gateway` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date_paid` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `txn_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `campaings_id` ON `withdrawals` (`campaigns_id`);

# ---------------------------------------------------------------------- #
# Add table "donations"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `donations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `campaigns_id` INTEGER(11) UNSIGNED NOT NULL,
    `txn_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fullname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `postal_code` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `donation` INTEGER(11) UNSIGNED NOT NULL,
    `payment_gateway` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `oauth_uid` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `comment` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `anonymous` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0 No, 1 Yes',
    `rewards_id` INTEGER(10) UNSIGNED NOT NULL,
    `bank_swift_code` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_number` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `branch_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `branch_address` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `iban` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `approved` ENUM('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '1',
    `bank_transfer` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `campaigns_id` ON `donations` (`campaigns_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `campaigns` ADD CONSTRAINT `categories_campaigns` 
    FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

ALTER TABLE `campaigns` ADD CONSTRAINT `users_campaigns` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `campaigns_reported` ADD CONSTRAINT `campaigns_campaigns_reported` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

ALTER TABLE `campaigns_reported` ADD CONSTRAINT `users_campaigns_reported` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `donations` ADD CONSTRAINT `campaigns_donations` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

ALTER TABLE `donations` ADD CONSTRAINT `rewards_donations` 
    FOREIGN KEY (`rewards_id`) REFERENCES `rewards` (`id`);

ALTER TABLE `likes` ADD CONSTRAINT `campaigns_likes` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

ALTER TABLE `likes` ADD CONSTRAINT `users_likes` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `rewards` ADD CONSTRAINT `campaigns_rewards` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

ALTER TABLE `updates` ADD CONSTRAINT `campaigns_updates` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

ALTER TABLE `withdrawals` ADD CONSTRAINT `campaigns_withdrawals` 
    FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);
