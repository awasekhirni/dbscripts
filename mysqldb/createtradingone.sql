# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          tradingone.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-18 14:13                                #
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
    `username` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
    `title` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `color` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `google_map` BLOB NOT NULL,
    `start_date` DATETIME NOT NULL,
    `currency` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `symbol` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `deci` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_reg` INTEGER(2) NOT NULL DEFAULT 1,
    `email_verify` TINYINT(1) NOT NULL,
    `phone_verify` TINYINT(1) NOT NULL,
    `withdraw_status` TINYINT(1) NOT NULL,
    `repeat_status` TINYINT(1) NOT NULL,
    `email_notify` TINYINT(1) NOT NULL,
    `phone_notify` TINYINT(1) NOT NULL,
    `google_recap` TINYINT(1) NOT NULL,
    `google_site_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `google_secret_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `reference` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `reference_bonus` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `reference_percent` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `from_email` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_body` LONGBLOB NOT NULL,
    `smsapi` BLOB NOT NULL,
    `breadcrumb` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` BLOB NOT NULL,
    `footer_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `footer_image` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `copy_text` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "compounds"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `compounds` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `compound` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` BLOB NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menus"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `menus` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `about_subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about_leftText` BLOB,
    `about_rightText` BLOB,
    `service_subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `plan_subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `investor_subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

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
# Add table "payment_logs"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_logs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `member_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `custom` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `payment_type` INTEGER(11) NOT NULL,
    `amount` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `charge` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `net_amount` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `usd` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `btc_amo` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `btc_acc` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `try` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_methods"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `main_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `minamo` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
    `maxamo` VARCHAR(190) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
    `rate` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `fix` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `percent` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `val1` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `val2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `currency` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Method Currency',
    `status` TINYINT(4) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "plans"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `plans` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `minimum` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `maximum` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `percent` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` INTEGER(11) NOT NULL,
    `compound_id` INTEGER(5) NOT NULL,
    `status` TINYINT(4) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_categories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `image` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `price` INTEGER(11) NOT NULL,
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `trade_status` TINYINT(4) NOT NULL DEFAULT 0,
    `category_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "services"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `services` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `subtitle` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
# Add table "testimonials"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `testimonials` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `position` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `message` BLOB NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "trades"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `trades` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `old_price` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `new_price` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gain_loss` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `username` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT user-default.png,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `reference` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `under_reference` INTEGER(11) NOT NULL,
    `email_verify` TINYINT(1) NOT NULL,
    `email_code` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_time` DATETIME NOT NULL,
    `phone_verify` TINYINT(1) NOT NULL,
    `phone_code` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone_time` DATETIME NOT NULL,
    `balance` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `login_time` DATETIME,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

# ---------------------------------------------------------------------- #
# Add table "withdraw_logs"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraw_logs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `method_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `net_amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `send_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdraw_methods"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraw_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `withdraw_min` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `withdraw_max` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `fix` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `percent` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `duration` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) NOT NULL,
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
    `user_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `amount` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `rate` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `charge` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `net_amount` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `payment_type` TINYINT(4) NOT NULL,
    `message` BLOB,
    `status` TINYINT(1) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "investments"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `investments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `trx_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `plan_id` INTEGER(11) NOT NULL,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchases"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchases` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `transaction_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `user_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "repeat_logs"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `repeat_logs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `trx_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `investment_id` INTEGER(11) NOT NULL,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `made_time` DATETIME NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "repeats"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `repeats` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `investment_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `repeat_time` DATETIME NOT NULL,
    `made_time` DATETIME,
    `total_repeat` INTEGER(11) NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "supports"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `supports` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `subject` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ticket_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL,
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
    `user_id` INTEGER(11) NOT NULL,
    `user_ip` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `location` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_logs"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_logs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount_type` TINYINT(4) NOT NULL,
    `charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `post_bal` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_trade_logs"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_trade_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `purchase_trx_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `old_balance` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `new_balance` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `new_price` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gain_loss` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `trade_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deposit_images"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposit_images` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `deposit_id` INTEGER(11) NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "support_messages"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `support_messages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `support_id` INTEGER(11) NOT NULL,
    `ticket_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` INTEGER(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `deposit_images` ADD CONSTRAINT `deposits_deposit_images` 
    FOREIGN KEY (`deposit_id`) REFERENCES `deposits` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `users_deposits` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `investments` ADD CONSTRAINT `plans_investments` 
    FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

ALTER TABLE `investments` ADD CONSTRAINT `users_investments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `plans` ADD CONSTRAINT `compounds_plans` 
    FOREIGN KEY (`compound_id`) REFERENCES `compounds` (`id`);

ALTER TABLE `purchases` ADD CONSTRAINT `products_purchases` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `purchases` ADD CONSTRAINT `users_purchases` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `repeat_logs` ADD CONSTRAINT `investments_repeat_logs` 
    FOREIGN KEY (`investment_id`) REFERENCES `investments` (`id`);

ALTER TABLE `repeat_logs` ADD CONSTRAINT `users_repeat_logs` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `repeats` ADD CONSTRAINT `users_repeats` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `support_messages` ADD CONSTRAINT `supports_support_messages` 
    FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`);

ALTER TABLE `supports` ADD CONSTRAINT `users_supports` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `trades` ADD CONSTRAINT `products_trades` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `user_logins` ADD CONSTRAINT `users_user_logins` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_logs` ADD CONSTRAINT `users_user_logs` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_trade_logs` ADD CONSTRAINT `trades_user_trade_logs` 
    FOREIGN KEY (`trade_id`) REFERENCES `trades` (`id`);

ALTER TABLE `user_trade_logs` ADD CONSTRAINT `users_user_trade_logs` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `withdraw_logs` ADD CONSTRAINT `users_withdraw_logs` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
