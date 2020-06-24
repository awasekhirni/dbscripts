# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          lead_spot.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:37                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `model_has_permissions` DROP FOREIGN KEY `model_has_permissions_permission_id`;

ALTER TABLE `quotation_item` DROP FOREIGN KEY `quotation_item_quotation_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_permission_id`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_role_id_foreign`;

ALTER TABLE `role_user` DROP FOREIGN KEY `role_user_role_id_index`;

ALTER TABLE `role_user` DROP FOREIGN KEY `role_user_user_id`;

ALTER TABLE `saleorder_item` DROP FOREIGN KEY `saleorder_item_saleorder_id_foreign`;

ALTER TABLE `user_profiles` DROP FOREIGN KEY `user_profiles_user_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "user_profiles"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_profiles` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_profiles` DROP PRIMARY KEY;

DROP TABLE `user_profiles`;

# ---------------------------------------------------------------------- #
# Drop table "role_user"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `role_user` MODIFY `user_id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `role_user` DROP PRIMARY KEY;

DROP TABLE `role_user`;

# ---------------------------------------------------------------------- #
# Drop table "role_has_permissions"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `role_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_permissions"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `model_has_permissions` MODIFY `permission_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `model_has_permissions` DROP PRIMARY KEY;

DROP TABLE `model_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `user_type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `banned` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "todo"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `todo` MODIFY `todo_id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `todo` ALTER COLUMN `is_check` DROP DEFAULT;

ALTER TABLE `todo` DROP PRIMARY KEY;

DROP TABLE `todo`;

# ---------------------------------------------------------------------- #
# Drop table "task"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `task` MODIFY `task_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `task` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `task` DROP PRIMARY KEY;

DROP TABLE `task`;

# ---------------------------------------------------------------------- #
# Drop table "static_data"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `static_data` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `static_data` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `static_data` ALTER COLUMN `sequence` DROP DEFAULT;

ALTER TABLE `static_data` DROP PRIMARY KEY;

DROP TABLE `static_data`;

# ---------------------------------------------------------------------- #
# Drop table "state"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `state` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `state` DROP PRIMARY KEY;

DROP TABLE `state`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "saleorder_item"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `saleorder_item` MODIFY `saleorder_item_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `saleorder_item` DROP PRIMARY KEY;

DROP TABLE `saleorder_item`;

# ---------------------------------------------------------------------- #
# Drop table "saleorder"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `saleorder` MODIFY `saleorder_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `saleorder` DROP PRIMARY KEY;

DROP TABLE `saleorder`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `roles` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `roles` ALTER COLUMN `is_hidden` DROP DEFAULT;

ALTER TABLE `roles` ALTER COLUMN `enabled` DROP DEFAULT;

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "quotation_item"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `quotation_item` MODIFY `quotation_item_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `quotation_item` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `quotation_item` DROP PRIMARY KEY;

DROP TABLE `quotation_item`;

# ---------------------------------------------------------------------- #
# Drop table "quotation"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `quotation` MODIFY `quotation_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `quotation` ALTER COLUMN `discount` DROP DEFAULT;

ALTER TABLE `quotation` DROP PRIMARY KEY;

DROP TABLE `quotation`;

# ---------------------------------------------------------------------- #
# Drop table "product"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product` MODIFY `product_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product` DROP PRIMARY KEY;

DROP TABLE `product`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_roles"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `model_has_roles`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "meeting"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `meeting` MODIFY `meeting_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `meeting` DROP PRIMARY KEY;

DROP TABLE `meeting`;

# ---------------------------------------------------------------------- #
# Drop table "media"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `media` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `media` DROP PRIMARY KEY;

DROP TABLE `media`;

# ---------------------------------------------------------------------- #
# Drop table "lead"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `lead`;

# ---------------------------------------------------------------------- #
# Drop table "failed_jobs"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `failed_jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `failed_jobs` ALTER COLUMN `failed_at` DROP DEFAULT;

ALTER TABLE `failed_jobs` DROP PRIMARY KEY;

DROP TABLE `failed_jobs`;

# ---------------------------------------------------------------------- #
# Drop table "expense"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense` MODIFY `expense_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `expense` DROP PRIMARY KEY;

DROP TABLE `expense`;

# ---------------------------------------------------------------------- #
# Drop table "customer"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer` MODIFY `customer_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `customer` DROP PRIMARY KEY;

DROP TABLE `customer`;

# ---------------------------------------------------------------------- #
# Drop table "country"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `country` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `country` DROP PRIMARY KEY;

DROP TABLE `country`;

# ---------------------------------------------------------------------- #
# Drop table "city"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `city` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `city` DROP PRIMARY KEY;

DROP TABLE `city`;

# ---------------------------------------------------------------------- #
# Drop table "callhistory"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `callhistory` MODIFY `callhistory_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `callhistory` DROP PRIMARY KEY;

DROP TABLE `callhistory`;

# ---------------------------------------------------------------------- #
# Drop table "app_setting"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `app_setting` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `app_setting` DROP PRIMARY KEY;

DROP TABLE `app_setting`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` ALTER COLUMN `user_type` DROP DEFAULT;

ALTER TABLE `admins` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;

# ---------------------------------------------------------------------- #
# Drop table "activity_log"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `activity_log` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `activity_log` DROP PRIMARY KEY;

DROP TABLE `activity_log`;
