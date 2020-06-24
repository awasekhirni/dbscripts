# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          internetbankingdb.dez                           #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:35                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `advertisements` DROP FOREIGN KEY `users_advertisements`;

ALTER TABLE `deposits` DROP FOREIGN KEY `gateways_deposits`;

ALTER TABLE `deposits` DROP FOREIGN KEY `users_deposits`;

ALTER TABLE `transactions` DROP FOREIGN KEY `users_transactions`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `users_withdraws`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `wmethods_withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "withdraws"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraws` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraws` ALTER COLUMN `fee` DROP DEFAULT;

ALTER TABLE `withdraws` DROP PRIMARY KEY;

DROP TABLE `withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactions` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `transactions` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `transactions` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `transactions` ALTER COLUMN `fee` DROP DEFAULT;

ALTER TABLE `transactions` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

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
# Drop table "advertisements"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `advertisements` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `advertisements` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `advertisements` ALTER COLUMN `impression` DROP DEFAULT;

ALTER TABLE `advertisements` ALTER COLUMN `click` DROP DEFAULT;

ALTER TABLE `advertisements` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `advertisements` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `advertisements` DROP PRIMARY KEY;

DROP TABLE `advertisements`;

# ---------------------------------------------------------------------- #
# Drop table "wmethods"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `wmethods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `wmethods` ALTER COLUMN `minamo` DROP DEFAULT;

ALTER TABLE `wmethods` ALTER COLUMN `maxamo` DROP DEFAULT;

ALTER TABLE `wmethods` ALTER COLUMN `fixed_charge` DROP DEFAULT;

ALTER TABLE `wmethods` ALTER COLUMN `percent_charge` DROP DEFAULT;

ALTER TABLE `wmethods` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `wmethods` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `wmethods` DROP PRIMARY KEY;

DROP TABLE `wmethods`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_banned` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "subscribes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscribes` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `subscribes` DROP PRIMARY KEY;

DROP TABLE `subscribes`;

# ---------------------------------------------------------------------- #
# Drop table "social_icons"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `social_icons` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `social_icons` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `social_icons` DROP PRIMARY KEY;

DROP TABLE `social_icons`;

# ---------------------------------------------------------------------- #
# Drop table "sliders"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sliders` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `sliders` DROP PRIMARY KEY;

DROP TABLE `sliders`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `email_notification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `sms_notification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_verification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `sms_verification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `registration` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `bal_trans_fixed_charge` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `bal_trans_per_charge` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "services"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `services` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `services` DROP PRIMARY KEY;

DROP TABLE `services`;

# ---------------------------------------------------------------------- #
# Drop table "public_contacts"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `public_contacts` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `public_contacts` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `public_contacts` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `public_contacts` DROP PRIMARY KEY;

DROP TABLE `public_contacts`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `password_resets` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `password_resets` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `password_resets` ALTER COLUMN `updated_at` DROP DEFAULT;

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "partners"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `partners` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `partners` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `partners` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `partners` DROP PRIMARY KEY;

DROP TABLE `partners`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `languages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "gateways"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gateways` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gateways` DROP PRIMARY KEY;

DROP TABLE `gateways`;

# ---------------------------------------------------------------------- #
# Drop table "feedback"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `feedback` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `feedback` DROP PRIMARY KEY;

DROP TABLE `feedback`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "contacts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `contacts` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `contacts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `contacts` DROP PRIMARY KEY;

DROP TABLE `contacts`;

# ---------------------------------------------------------------------- #
# Drop table "branches"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `branches` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `branches` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `branches` DROP PRIMARY KEY;

DROP TABLE `branches`;

# ---------------------------------------------------------------------- #
# Drop table "blogs"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `blogs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `blogs` DROP PRIMARY KEY;

DROP TABLE `blogs`;

# ---------------------------------------------------------------------- #
# Drop table "banks"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `banks` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `banks` ALTER COLUMN `min_amount` DROP DEFAULT;

ALTER TABLE `banks` ALTER COLUMN `max_amount` DROP DEFAULT;

ALTER TABLE `banks` ALTER COLUMN `fixed_charge` DROP DEFAULT;

ALTER TABLE `banks` ALTER COLUMN `percent_charge` DROP DEFAULT;

ALTER TABLE `banks` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `banks` DROP PRIMARY KEY;

DROP TABLE `banks`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;
