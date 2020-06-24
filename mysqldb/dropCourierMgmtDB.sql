# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          couriermgmtdb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-18 14:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "zone"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `zone` MODIFY `zone_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `zone` DROP PRIMARY KEY;

DROP TABLE `zone`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `cookie_id` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `token` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `userlevel` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `lastlogin` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `newsletter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

# ---------------------------------------------------------------------- #
# Drop table "textsmsnexmo"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `textsmsnexmo` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `textsmsnexmo` ALTER COLUMN `active_nex` DROP DEFAULT;

ALTER TABLE `textsmsnexmo` DROP PRIMARY KEY;

DROP TABLE `textsmsnexmo`;

# ---------------------------------------------------------------------- #
# Drop table "textsms"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `textsms` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `textsms` ALTER COLUMN `active_twi` DROP DEFAULT;

ALTER TABLE `textsms` DROP PRIMARY KEY;

DROP TABLE `textsms`;

# ---------------------------------------------------------------------- #
# Drop table "styles"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `styles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `styles` DROP PRIMARY KEY;

DROP TABLE `styles`;

# ---------------------------------------------------------------------- #
# Drop table "sms_templates"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sms_templates` MODIFY `id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `sms_templates` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `sms_templates` DROP PRIMARY KEY;

DROP TABLE `sms_templates`;

# ---------------------------------------------------------------------- #
# Drop table "shipping_mode"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shipping_mode` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shipping_mode` DROP PRIMARY KEY;

DROP TABLE `shipping_mode`;

# ---------------------------------------------------------------------- #
# Drop table "shipping_line"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shipping_line` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shipping_line` DROP PRIMARY KEY;

DROP TABLE `shipping_line`;

# ---------------------------------------------------------------------- #
# Drop table "ship_rate"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ship_rate` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ship_rate` DROP PRIMARY KEY;

DROP TABLE `ship_rate`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `reg_allowed` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `user_limit` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `reg_verify` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `notify_admin` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `auto_verify` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `user_perpage` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `mailer` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `is_ssl` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "packaging"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `packaging` MODIFY `id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `packaging` DROP PRIMARY KEY;

DROP TABLE `packaging`;

# ---------------------------------------------------------------------- #
# Drop table "offices"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `offices` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `offices` DROP PRIMARY KEY;

DROP TABLE `offices`;

# ---------------------------------------------------------------------- #
# Drop table "news"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `news` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `news` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `news` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `news` DROP PRIMARY KEY;

DROP TABLE `news`;

# ---------------------------------------------------------------------- #
# Drop table "met_payment"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `met_payment` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `met_payment` DROP PRIMARY KEY;

DROP TABLE `met_payment`;

# ---------------------------------------------------------------------- #
# Drop table "incoterm"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `incoterm` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `incoterm` DROP PRIMARY KEY;

DROP TABLE `incoterm`;

# ---------------------------------------------------------------------- #
# Drop table "email_templates"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_templates` MODIFY `id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `email_templates` DROP PRIMARY KEY;

DROP TABLE `email_templates`;

# ---------------------------------------------------------------------- #
# Drop table "detail_container_tmp"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `detail_container_tmp` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `detail_container_tmp` DROP PRIMARY KEY;

DROP TABLE `detail_container_tmp`;

# ---------------------------------------------------------------------- #
# Drop table "detail_container"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `detail_container` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `detail_container` DROP PRIMARY KEY;

DROP TABLE `detail_container`;

# ---------------------------------------------------------------------- #
# Drop table "courier_track"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `courier_track` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `courier_track` DROP PRIMARY KEY;

DROP TABLE `courier_track`;

# ---------------------------------------------------------------------- #
# Drop table "courier_com"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `courier_com` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `courier_com` DROP PRIMARY KEY;

DROP TABLE `courier_com`;

# ---------------------------------------------------------------------- #
# Drop table "consolidate"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `consolidate` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `consolidate` DROP PRIMARY KEY;

DROP TABLE `consolidate`;

# ---------------------------------------------------------------------- #
# Drop table "cons_tmp"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cons_tmp` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `cons_tmp` DROP PRIMARY KEY;

DROP TABLE `cons_tmp`;

# ---------------------------------------------------------------------- #
# Drop table "cons_products"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cons_products` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `cons_products` DROP PRIMARY KEY;

DROP TABLE `cons_products`;

# ---------------------------------------------------------------------- #
# Drop table "category"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `category` MODIFY `id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `category` DROP PRIMARY KEY;

DROP TABLE `category`;

# ---------------------------------------------------------------------- #
# Drop table "c_tracking"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `c_tracking` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `c_tracking` DROP PRIMARY KEY;

DROP TABLE `c_tracking`;

# ---------------------------------------------------------------------- #
# Drop table "add_courier"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `add_courier` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `add_courier` DROP PRIMARY KEY;

DROP TABLE `add_courier`;

# ---------------------------------------------------------------------- #
# Drop table "add_container"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `add_container` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `add_container` DROP PRIMARY KEY;

DROP TABLE `add_container`;

# ---------------------------------------------------------------------- #
# Drop table "add_consolidate"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `add_consolidate` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `add_consolidate` DROP PRIMARY KEY;

DROP TABLE `add_consolidate`;
