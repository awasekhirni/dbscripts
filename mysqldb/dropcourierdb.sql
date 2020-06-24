# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          courierdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:45                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `courier_types` DROP FOREIGN KEY `courier_types_unit_id_foreign`;

ALTER TABLE `currier_infos` DROP FOREIGN KEY `currier_infos_receiver_branch_id_foreign`;

ALTER TABLE `currier_infos` DROP FOREIGN KEY `currier_infos_receiver_branch_staff_id_foreign`;

ALTER TABLE `currier_infos` DROP FOREIGN KEY `currier_infos_sender_branch_id_foreign`;

ALTER TABLE `currier_infos` DROP FOREIGN KEY `currier_infos_sender_branch_staff_id_foreign`;

ALTER TABLE `currier_product_infos` DROP FOREIGN KEY `currier_product_infos_currier_info_id_foreign`;

ALTER TABLE `users` DROP FOREIGN KEY `users_branch_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "currier_product_infos"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currier_product_infos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currier_product_infos` DROP PRIMARY KEY;

DROP TABLE `currier_product_infos`;

# ---------------------------------------------------------------------- #
# Drop table "currier_infos"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currier_infos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currier_infos` ALTER COLUMN `payment_status` DROP DEFAULT;

ALTER TABLE `currier_infos` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `currier_infos` DROP PRIMARY KEY;

DROP TABLE `currier_infos`;

# ---------------------------------------------------------------------- #
# Drop table "courier_types"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `courier_types` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `courier_types` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `courier_types` DROP PRIMARY KEY;

DROP TABLE `courier_types`;

# ---------------------------------------------------------------------- #
# Drop table "visitor_messages"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `visitor_messages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `visitor_messages` DROP PRIMARY KEY;

DROP TABLE `visitor_messages`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "units"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `units` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `units` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `units` DROP PRIMARY KEY;

DROP TABLE `units`;

# ---------------------------------------------------------------------- #
# Drop table "testimonials"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `testimonials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `testimonials` DROP PRIMARY KEY;

DROP TABLE `testimonials`;

# ---------------------------------------------------------------------- #
# Drop table "socials"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `socials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `socials` DROP PRIMARY KEY;

DROP TABLE `socials`;

# ---------------------------------------------------------------------- #
# Drop table "services"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `services` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `services` DROP PRIMARY KEY;

DROP TABLE `services`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `password_resets` ALTER COLUMN `status` DROP DEFAULT;

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `general_settings` ALTER COLUMN `email_notification` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `sms_notification` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `registration_verification` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `email_verification` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `sms_verification` DROP DEFAULT;

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "branches"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `branches` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `branches` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `branches` DROP PRIMARY KEY;

DROP TABLE `branches`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;
