# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ledgerbook.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "account_groups"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `account_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_debit` TINYINT(1) DEFAULT 0,
    `is_credit` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "account_types"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `account_types` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `account_group_id` BIGINT(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "accounting_entries"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounting_entries` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `accounting_transaction_id` BIGINT(11),
    `account_id` BIGINT(11),
    `debit` DECIMAL(10,2),
    `credit` DECIMAL(10,2),
    `memo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `has_cleared` TINYINT(1) DEFAULT 0,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `accountable_id` BIGINT(11),
    `accountable_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `statement_id` BIGINT(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "accounting_transactions"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounting_transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document_id` BIGINT(11),
    `document_number` BIGINT(11),
    `memo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `recorded_on` DATE,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `transaction_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_void` TINYINT(1) DEFAULT 0,
    `department_id` BIGINT(11),
    `class_id` BIGINT(11),
    `location_id` BIGINT(11),
    `accountable_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `accountable_id` BIGINT(11),
    `reversal_id` BIGINT(11),
    `batch_id` BIGINT(11),
    `total` DECIMAL(10,2),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "accounts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `account_type_id` BIGINT(11),
    `number` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bank_number` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_inactive` TINYINT(1) DEFAULT 0,
    `parent_id` BIGINT(11),
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `company_id` BIGINT(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "batch_imports"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `batch_imports` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `batch_id` INTEGER(11),
    `accountable_id` INTEGER(11),
    `accountable_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `recorded_on` DATE,
    `payee` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `account_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(10,2),
    `created_at` DATETIME,
    `updated_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "batches"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `batches` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `date` DATE,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `finalized` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `authorizable_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `authorizable_id` BIGINT(11),
    `created_at` DATETIME,
    `updated_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles_users"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles_users` (
    `user_id` BIGINT(11),
    `role_id` BIGINT(11),
    `created_at` DATETIME,
    `updated_at` DATETIME
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`);

# ---------------------------------------------------------------------- #
# Add table "statements"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `statements` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account_id` BIGINT(11),
    `started_on` DATE,
    `ended_on` DATE,
    `beginning_balance` DECIMAL(10,2),
    `ending_balance` DECIMAL(10,2),
    `is_closed` TINYINT(1),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `crypted_password` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `salt` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `remember_token` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `remember_token_expires_at` DATETIME,
    `activation_code` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `activated_at` DATETIME,
    `state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'passive',
    `deleted_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `batch_imports` ADD CONSTRAINT `accounts_batch_imports` 
    FOREIGN KEY (`accountable_id`) REFERENCES `accounts` (`id`);
