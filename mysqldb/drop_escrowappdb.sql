# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          escrowappdb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:20                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `deposits` DROP FOREIGN KEY `gateways_deposits`;

ALTER TABLE `deposits` DROP FOREIGN KEY `users_deposits`;

ALTER TABLE `escrows` DROP FOREIGN KEY `users_escrows`;

ALTER TABLE `milestones` DROP FOREIGN KEY `escrows_milestones`;

ALTER TABLE `milestones` DROP FOREIGN KEY `users_milestones`;

ALTER TABLE `reports` DROP FOREIGN KEY `milestones_reports`;

ALTER TABLE `trxes` DROP FOREIGN KEY `users_trxes`;

ALTER TABLE `user_logins` DROP FOREIGN KEY `users_user_logins`;

ALTER TABLE `withdraw_logs` DROP FOREIGN KEY `users_withdraw_logs`;

# ---------------------------------------------------------------------- #
# Drop table "user_logins"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_logins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_logins` DROP PRIMARY KEY;

DROP TABLE `user_logins`;

# ---------------------------------------------------------------------- #
# Drop table "trxes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trxes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `trxes` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `trxes` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `trxes` ALTER COLUMN `main_amo` DROP DEFAULT;

ALTER TABLE `trxes` ALTER COLUMN `charge` DROP DEFAULT;

ALTER TABLE `trxes` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `trxes` DROP PRIMARY KEY;

DROP TABLE `trxes`;

# ---------------------------------------------------------------------- #
# Drop table "reports"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reports` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reports` ALTER COLUMN `report_from` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `report_against` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `is_read` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `read_type1` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `read_type2` DROP DEFAULT;

ALTER TABLE `reports` DROP PRIMARY KEY;

DROP TABLE `reports`;

# ---------------------------------------------------------------------- #
# Drop table "milestones"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `milestones` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `milestones` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `milestones` ALTER COLUMN `is_read` DROP DEFAULT;

ALTER TABLE `milestones` DROP PRIMARY KEY;

DROP TABLE `milestones`;

# ---------------------------------------------------------------------- #
# Drop table "escrows"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `escrows` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `escrows` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `escrows` DROP PRIMARY KEY;

DROP TABLE `escrows`;

# ---------------------------------------------------------------------- #
# Drop table "deposits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposits` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposits` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `deposits` ALTER COLUMN `try` DROP DEFAULT;

ALTER TABLE `deposits` DROP PRIMARY KEY;

DROP TABLE `deposits`;

# ---------------------------------------------------------------------- #
# Drop table "withdraw_methods"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraw_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraw_methods` DROP PRIMARY KEY;

DROP TABLE `withdraw_methods`;

# ---------------------------------------------------------------------- #
# Drop table "withdraw_logs"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraw_logs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraw_logs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `withdraw_logs` DROP PRIMARY KEY;

DROP TABLE `withdraw_logs`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `phone_verify` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_verify` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `refer` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "teams"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `teams` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `teams` DROP PRIMARY KEY;

DROP TABLE `teams`;

# ---------------------------------------------------------------------- #
# Drop table "subscribers"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscribers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `subscribers` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `subscribers` DROP PRIMARY KEY;

DROP TABLE `subscribers`;

# ---------------------------------------------------------------------- #
# Drop table "socials"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `socials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `socials` DROP PRIMARY KEY;

DROP TABLE `socials`;

# ---------------------------------------------------------------------- #
# Drop table "sliders"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sliders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sliders` DROP PRIMARY KEY;

DROP TABLE `sliders`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `hit` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `password_resets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `password_resets` DROP PRIMARY KEY;

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "our_clients"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `our_clients` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `our_clients` DROP PRIMARY KEY;

DROP TABLE `our_clients`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "menus"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menus` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `menus` DROP PRIMARY KEY;

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "gateways"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gateways` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gateways` DROP PRIMARY KEY;

DROP TABLE `gateways`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "etemplates"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `etemplates` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `etemplates` DROP PRIMARY KEY;

DROP TABLE `etemplates`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "basic_settings"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `basic_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `basic_settings` ALTER COLUMN `registration` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `email_verification` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `sms_verification` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `email_notification` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `sms_notification` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `withdraw_status` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `withdraw_charge` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `captcha` DROP DEFAULT;

ALTER TABLE `basic_settings` ALTER COLUMN `refcom` DROP DEFAULT;

ALTER TABLE `basic_settings` DROP PRIMARY KEY;

DROP TABLE `basic_settings`;

# ---------------------------------------------------------------------- #
# Drop table "ads"                                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ads` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ads` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `ads` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `ads` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `ads` DROP PRIMARY KEY;

DROP TABLE `ads`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;

# ---------------------------------------------------------------------- #
# Drop table "admin_password_resets"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `admin_password_resets`;
