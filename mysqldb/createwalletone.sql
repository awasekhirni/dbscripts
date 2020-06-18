# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          walletone.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-18 12:49                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER(10) UNSIGNED,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `categories_slug_unique` ON `categories` (`slug`);

CREATE INDEX `categories_parent_id_foreign` ON `categories` (`parent_id`);

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `symbol` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `currencies_code_unique` ON `currencies` (`code`);

# ---------------------------------------------------------------------- #
# Add table "currency_deposit_methods"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency_deposit_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `currency_id` INTEGER(11),
    `deposit_method_id` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `currency_depositmethod_currency_id_` ON `currency_deposit_methods` (`currency_id`);

CREATE INDEX `currencie_deposit_deposit_method_id_index` ON `currency_deposit_methods` (`deposit_method_id`);

# ---------------------------------------------------------------------- #
# Add table "currency_exchange_rates"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency_exchange_rates` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_currency_id` INTEGER(11) NOT NULL,
    `second_currency_id` INTEGER(11) NOT NULL,
    `exchanges_to_second_currency_value` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currency_withdrawal_methods"                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency_withdrawal_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `currency_id` INTEGER(11),
    `withdrawal_method_id` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "data_types"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_types` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_singular` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_plural` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `policy_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `controller` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `generate_permissions` TINYINT(1) NOT NULL DEFAULT 0,
    `server_side` TINYINT(4) NOT NULL DEFAULT 0,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `data_types_name_unique` ON `data_types` (`name`);

CREATE UNIQUE INDEX `data_types_slug_unique` ON `data_types` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "deposit_methods"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposit_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `how_to` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
    `transaction_state_id` INTEGER(11) NOT NULL,
    `deposit_method_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `transaction_receipt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `wallet_id` INTEGER(11),
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "exchanges"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `exchanges` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `first_currency_id` INTEGER(11),
    `second_currency_id` INTEGER(11),
    `gross` DOUBLE,
    `fee` DOUBLE,
    `net` DOUBLE,
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
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `menus_name_unique` ON `menus` (`name`);

# ---------------------------------------------------------------------- #
# Add table "merchants"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `merchants` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `merchant_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `site_url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `success_link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `fail_link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11) DEFAULT 1,
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
    `author_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `excerpt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `pages_slug_unique` ON `pages` (`slug`);

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
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `permissions_key_index` ON `permissions` (`key`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `author_id` INTEGER(11) NOT NULL,
    `category_id` INTEGER(11),
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `seo_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `excerpt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `posts_slug_unique` ON `posts` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "profiles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `profiles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `document_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `document` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `phone_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchases"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchases` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `merchant_id` INTEGER(11) NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `sale_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "receives"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `receives` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `send_id` INTEGER(11) NOT NULL,
    `from_id` INTEGER(11) NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "requests"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `requests` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `attempts` INTEGER(11) NOT NULL DEFAULT 0,
    `merchant_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ref` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_expired` TINYINT(1) NOT NULL,
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_code` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `currency_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `requests_ref_unique` ON `requests` (`ref`);

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `roles_name_unique` ON `roles` (`name`);

# ---------------------------------------------------------------------- #
# Add table "sales"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `sales` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `merchant_id` INTEGER(11) NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `purchase_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sends"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `sends` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `receive_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `to_id` INTEGER(11) NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `group` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `settings_key_unique` ON `settings` (`key`);

# ---------------------------------------------------------------------- #
# Add table "ticketcategories"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticketcategories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ticketcomments"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticketcomments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ticket_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
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
    `user_id` INTEGER(11),
    `ticketcategory_id` INTEGER(11),
    `ticket_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `priority` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `tickets_ticket_id_unique` ON `tickets` (`ticket_id`);

# ---------------------------------------------------------------------- #
# Add table "transaction_states"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `transaction_states` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "transactionable"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactionable` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `request_id` INTEGER(11),
    `transactionable_id` INTEGER(11) NOT NULL,
    `transactionable_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `entity_id` INTEGER(11) NOT NULL,
    `entity_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `currency` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
    `activity_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `money_flow` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `net` DOUBLE(8,2) NOT NULL,
    `balance` DOUBLE,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "translations"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `translations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `column_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `foreign_key` INTEGER(10) UNSIGNED NOT NULL,
    `locale` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique` ON `translations` (`table_name`,`column_name`,`foreign_key`,`locale`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `role_id` INTEGER(10) UNSIGNED,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `first_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `verified` TINYINT(1) NOT NULL DEFAULT 0,
    `merchant` TINYINT(1) NOT NULL DEFAULT 0,
    `social` TINYINT(1) NOT NULL DEFAULT 0,
    `balance` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `account_status` TINYINT(1) NOT NULL DEFAULT 1,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `settings` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `ticketit_admin` TINYINT(1) NOT NULL DEFAULT 0,
    `ticketit_agent` TINYINT(1) NOT NULL DEFAULT 0,
    `currency_id` INTEGER(11) DEFAULT 1,
    `is_ticket_admin` TINYINT(4) DEFAULT 0,
    `verification_token` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE INDEX `users_role_id_foreign` ON `users` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "vouchers"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `vouchers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `voucher_amount` DOUBLE NOT NULL,
    `voucher_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_loader` INTEGER(11),
    `is_loaded` TINYINT(4) DEFAULT 0,
    `voucher_fee` DOUBLE,
    `wallet_id` INTEGER(11),
    `voucher_value` DOUBLE,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `vouchers_voucher_id_unique` ON `vouchers` (`voucher_code`);

# ---------------------------------------------------------------------- #
# Add table "wallets"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `wallets` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `currency_id` INTEGER(11) NOT NULL,
    `amount` DOUBLE DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdrawal_methods"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdrawal_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `comment` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `percentage_fee` DOUBLE(8,2) NOT NULL,
    `fixed_fee` DOUBLE(8,2) NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdrawals"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdrawals` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `transaction_state_id` INTEGER(11) NOT NULL,
    `withdrawal_method_id` INTEGER(11) NOT NULL,
    `gross` DOUBLE(8,2) NOT NULL,
    `fee` DOUBLE(8,2) NOT NULL,
    `net` DOUBLE(8,2) NOT NULL,
    `platform_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `json_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_id` INTEGER(11),
    `currency_symbol` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `wallet_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "data_rows"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_rows` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `data_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `field` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `browse` TINYINT(1) NOT NULL DEFAULT 1,
    `read` TINYINT(1) NOT NULL DEFAULT 1,
    `edit` TINYINT(1) NOT NULL DEFAULT 1,
    `add` TINYINT(1) NOT NULL DEFAULT 1,
    `delete` TINYINT(1) NOT NULL DEFAULT 1,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `data_rows_data_type_id_foreign` ON `data_rows` (`data_type_id`);

# ---------------------------------------------------------------------- #
# Add table "menu_items"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `menu_items` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `menu_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `target` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
    `icon_class` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parent_id` INTEGER(11),
    `order` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `route` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parameters` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `menu_items_menu_id_foreign` ON `menu_items` (`menu_id`);

# ---------------------------------------------------------------------- #
# Add table "permission_role"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `permission_role` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `permission_role_permission_id_index` ON `permission_role` (`permission_id`);

CREATE INDEX `permission_role_role_id_index` ON `permission_role` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "user_roles"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_roles` (
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `user_roles_user_id_index` ON `user_roles` (`user_id`);

CREATE INDEX `user_roles_role_id_index` ON `user_roles` (`role_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `categories` ADD CONSTRAINT `categories_parent_id_foreign` 
    FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `data_rows` ADD CONSTRAINT `data_rows_data_type_id_foreign` 
    FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `menu_items` ADD CONSTRAINT `menu_items_menu_id_foreign` 
    FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `permission_role` ADD CONSTRAINT `permission_role_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `permission_role` ADD CONSTRAINT `permission_role_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_roles` ADD CONSTRAINT `user_roles_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_roles` ADD CONSTRAINT `user_roles_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `users` ADD CONSTRAINT `users_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
