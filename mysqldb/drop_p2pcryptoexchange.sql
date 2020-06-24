# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          p2pcryptoexchange.dez                           #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:18                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `advertise_deals` DROP FOREIGN KEY `gateways_advertise_deals`;

ALTER TABLE `crypto_addvertises` DROP FOREIGN KEY `gateways_crypto_addvertises`;

ALTER TABLE `crypto_addvertises` DROP FOREIGN KEY `users_crypto_addvertises`;

ALTER TABLE `deposits` DROP FOREIGN KEY `gateways_deposits`;

ALTER TABLE `deposits` DROP FOREIGN KEY `users_deposits`;

ALTER TABLE `trxes` DROP FOREIGN KEY `users_trxes`;

ALTER TABLE `user_crypto_balances` DROP FOREIGN KEY `gateways_user_crypto_balances`;

ALTER TABLE `user_crypto_balances` DROP FOREIGN KEY `users_user_crypto_balances`;

ALTER TABLE `user_logins` DROP FOREIGN KEY `users_user_logins`;

# ---------------------------------------------------------------------- #
# Drop table "user_logins"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_logins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_logins` DROP PRIMARY KEY;

DROP TABLE `user_logins`;

# ---------------------------------------------------------------------- #
# Drop table "user_crypto_balances"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_crypto_balances` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_crypto_balances` DROP PRIMARY KEY;

DROP TABLE `user_crypto_balances`;

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
# Drop table "crypto_addvertises"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crypto_addvertises` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `crypto_addvertises` DROP PRIMARY KEY;

DROP TABLE `crypto_addvertises`;

# ---------------------------------------------------------------------- #
# Drop table "advertise_deals"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `advertise_deals` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `advertise_deals` DROP PRIMARY KEY;

DROP TABLE `advertise_deals`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `phone_verify` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_verify` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `tauth` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "tickets"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tickets` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tickets` DROP PRIMARY KEY;

DROP TABLE `tickets`;

# ---------------------------------------------------------------------- #
# Drop table "ticket_comments"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticket_comments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ticket_comments` DROP PRIMARY KEY;

DROP TABLE `ticket_comments`;

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
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `password_resets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `password_resets` DROP PRIMARY KEY;

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
# Drop table "etemplates"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `etemplates` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `etemplates` DROP PRIMARY KEY;

DROP TABLE `etemplates`;

# ---------------------------------------------------------------------- #
# Drop table "deal_convertions"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deal_convertions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deal_convertions` DROP PRIMARY KEY;

DROP TABLE `deal_convertions`;

# ---------------------------------------------------------------------- #
# Drop table "currencies"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currencies` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currencies` DROP PRIMARY KEY;

DROP TABLE `currencies`;

# ---------------------------------------------------------------------- #
# Drop table "cryptos"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cryptos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `cryptos` DROP PRIMARY KEY;

DROP TABLE `cryptos`;

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
