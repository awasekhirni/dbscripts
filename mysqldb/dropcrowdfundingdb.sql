# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `campaigns` DROP FOREIGN KEY `categories_campaigns`;

ALTER TABLE `campaigns` DROP FOREIGN KEY `users_campaigns`;

ALTER TABLE `campaigns_reported` DROP FOREIGN KEY `campaigns_campaigns_reported`;

ALTER TABLE `campaigns_reported` DROP FOREIGN KEY `users_campaigns_reported`;

ALTER TABLE `donations` DROP FOREIGN KEY `campaigns_donations`;

ALTER TABLE `donations` DROP FOREIGN KEY `rewards_donations`;

ALTER TABLE `likes` DROP FOREIGN KEY `campaigns_likes`;

ALTER TABLE `likes` DROP FOREIGN KEY `users_likes`;

ALTER TABLE `rewards` DROP FOREIGN KEY `campaigns_rewards`;

ALTER TABLE `updates` DROP FOREIGN KEY `campaigns_updates`;

ALTER TABLE `withdrawals` DROP FOREIGN KEY `campaigns_withdrawals`;

# ---------------------------------------------------------------------- #
# Drop table "donations"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `donations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `donations` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `donations` ALTER COLUMN `anonymous` DROP DEFAULT;

ALTER TABLE `donations` ALTER COLUMN `approved` DROP DEFAULT;

ALTER TABLE `donations` DROP PRIMARY KEY;

DROP TABLE `donations`;

# ---------------------------------------------------------------------- #
# Drop table "withdrawals"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdrawals` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdrawals` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `withdrawals` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `withdrawals` ALTER COLUMN `date_paid` DROP DEFAULT;

ALTER TABLE `withdrawals` DROP PRIMARY KEY;

DROP TABLE `withdrawals`;

# ---------------------------------------------------------------------- #
# Drop table "updates"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `updates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `updates` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `updates` DROP PRIMARY KEY;

DROP TABLE `updates`;

# ---------------------------------------------------------------------- #
# Drop table "rewards"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `rewards` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `rewards` DROP PRIMARY KEY;

DROP TABLE `rewards`;

# ---------------------------------------------------------------------- #
# Drop table "likes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `likes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `likes` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `likes` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `likes` DROP PRIMARY KEY;

DROP TABLE `likes`;

# ---------------------------------------------------------------------- #
# Drop table "campaigns_reported"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `campaigns_reported` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `campaigns_reported` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `campaigns_reported` DROP PRIMARY KEY;

DROP TABLE `campaigns_reported`;

# ---------------------------------------------------------------------- #
# Drop table "campaigns"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `campaigns` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `campaigns` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `campaigns` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `campaigns` ALTER COLUMN `finalized` DROP DEFAULT;

ALTER TABLE `campaigns` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `campaigns` ALTER COLUMN `deadline` DROP DEFAULT;

ALTER TABLE `campaigns` DROP PRIMARY KEY;

DROP TABLE `campaigns`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `role` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "reserved"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reserved` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reserved` DROP PRIMARY KEY;

DROP TABLE `reserved`;

# ---------------------------------------------------------------------- #
# Drop table "payment_gateways"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_gateways` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_gateways` ALTER COLUMN `enabled` DROP DEFAULT;

ALTER TABLE `payment_gateways` ALTER COLUMN `sandbox` DROP DEFAULT;

ALTER TABLE `payment_gateways` DROP PRIMARY KEY;

DROP TABLE `payment_gateways`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `password_resets` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `password_resets` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `password_resets` DROP PRIMARY KEY;

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `show_navbar` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "countries"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `countries` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `countries` ALTER COLUMN `country_code` DROP DEFAULT;

ALTER TABLE `countries` ALTER COLUMN `country_name` DROP DEFAULT;

ALTER TABLE `countries` DROP PRIMARY KEY;

DROP TABLE `countries`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `mode` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "admin_settings"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admin_settings` ALTER COLUMN `status_page` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `captcha` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `payment_gateway` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `paypal_sandbox` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `auto_approve_campaigns` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `enable_paypal` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `enable_stripe` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `enable_bank_transfer` DROP DEFAULT;

ALTER TABLE `admin_settings` ALTER COLUMN `currency_position` DROP DEFAULT;

ALTER TABLE `admin_settings` DROP PRIMARY KEY;

DROP TABLE `admin_settings`;
