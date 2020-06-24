# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ledgerbook.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `batch_imports` DROP FOREIGN KEY `accounts_batch_imports`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `state` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "statements"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `statements` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `statements` DROP PRIMARY KEY;

DROP TABLE `statements`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "roles_users"                                               #
# ---------------------------------------------------------------------- #

DROP TABLE `roles_users`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "batches"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `batches` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `batches` ALTER COLUMN `finalized` DROP DEFAULT;

ALTER TABLE `batches` DROP PRIMARY KEY;

DROP TABLE `batches`;

# ---------------------------------------------------------------------- #
# Drop table "batch_imports"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `batch_imports` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `batch_imports` DROP PRIMARY KEY;

DROP TABLE `batch_imports`;

# ---------------------------------------------------------------------- #
# Drop table "accounts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `accounts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `accounts` ALTER COLUMN `is_inactive` DROP DEFAULT;

ALTER TABLE `accounts` DROP PRIMARY KEY;

DROP TABLE `accounts`;

# ---------------------------------------------------------------------- #
# Drop table "accounting_transactions"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `accounting_transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `accounting_transactions` ALTER COLUMN `is_void` DROP DEFAULT;

ALTER TABLE `accounting_transactions` DROP PRIMARY KEY;

DROP TABLE `accounting_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "accounting_entries"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `accounting_entries` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `accounting_entries` ALTER COLUMN `has_cleared` DROP DEFAULT;

ALTER TABLE `accounting_entries` DROP PRIMARY KEY;

DROP TABLE `accounting_entries`;

# ---------------------------------------------------------------------- #
# Drop table "account_types"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `account_types` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `account_types` DROP PRIMARY KEY;

DROP TABLE `account_types`;

# ---------------------------------------------------------------------- #
# Drop table "account_groups"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `account_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `account_groups` ALTER COLUMN `is_debit` DROP DEFAULT;

ALTER TABLE `account_groups` ALTER COLUMN `is_credit` DROP DEFAULT;

ALTER TABLE `account_groups` DROP PRIMARY KEY;

DROP TABLE `account_groups`;
