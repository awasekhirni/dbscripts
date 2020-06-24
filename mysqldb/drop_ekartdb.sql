# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ekartdbone.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 21:00                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `order_items` DROP FOREIGN KEY `order_items_ibfk_1`;

ALTER TABLE `transactions` DROP FOREIGN KEY `transactions_ibfk_1`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `transactions` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

# ---------------------------------------------------------------------- #
# Drop table "order_items"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `order_items` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `order_items` DROP PRIMARY KEY;

DROP TABLE `order_items`;

# ---------------------------------------------------------------------- #
# Drop table "wallet_transactions"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `wallet_transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `wallet_transactions` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `wallet_transactions` ALTER COLUMN `last_updated` DROP DEFAULT;

ALTER TABLE `wallet_transactions` DROP PRIMARY KEY;

DROP TABLE `wallet_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "unit"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `unit` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `unit` DROP PRIMARY KEY;

DROP TABLE `unit`;

# ---------------------------------------------------------------------- #
# Drop table "time_slots"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `time_slots` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `time_slots` DROP PRIMARY KEY;

DROP TABLE `time_slots`;

# ---------------------------------------------------------------------- #
# Drop table "subcategory"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subcategory` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `subcategory` DROP PRIMARY KEY;

DROP TABLE `subcategory`;

# ---------------------------------------------------------------------- #
# Drop table "slider"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `slider` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `slider` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `slider` DROP PRIMARY KEY;

DROP TABLE `slider`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "seller"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `seller` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `seller` ALTER COLUMN `last_updated` DROP DEFAULT;

ALTER TABLE `seller` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `seller` DROP PRIMARY KEY;

DROP TABLE `seller`;

# ---------------------------------------------------------------------- #
# Drop table "sections"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sections` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sections` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `sections` DROP PRIMARY KEY;

DROP TABLE `sections`;

# ---------------------------------------------------------------------- #
# Drop table "promo_codes"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `promo_codes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `promo_codes` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `promo_codes` DROP PRIMARY KEY;

DROP TABLE `promo_codes`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `row_order` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "product_variant"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_variant` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_variant` DROP PRIMARY KEY;

DROP TABLE `product_variant`;

# ---------------------------------------------------------------------- #
# Drop table "payment_requests"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_requests` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payment_requests` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `payment_requests` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `payment_requests` DROP PRIMARY KEY;

DROP TABLE `payment_requests`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "offers"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `offers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `offers` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `offers` DROP PRIMARY KEY;

DROP TABLE `offers`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `date_sent` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "invoice"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoice` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoice` DROP PRIMARY KEY;

DROP TABLE `invoice`;

# ---------------------------------------------------------------------- #
# Drop table "fund_transfers"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fund_transfers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `fund_transfers` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `fund_transfers` DROP PRIMARY KEY;

DROP TABLE `fund_transfers`;

# ---------------------------------------------------------------------- #
# Drop table "faq"                                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faq` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `faq` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `faq` DROP PRIMARY KEY;

DROP TABLE `faq`;

# ---------------------------------------------------------------------- #
# Drop table "devices"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `devices` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `devices` DROP PRIMARY KEY;

DROP TABLE `devices`;

# ---------------------------------------------------------------------- #
# Drop table "delivery_boys"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `delivery_boys` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `delivery_boys` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `delivery_boys` ALTER COLUMN `date_created` DROP DEFAULT;

ALTER TABLE `delivery_boys` DROP PRIMARY KEY;

DROP TABLE `delivery_boys`;

# ---------------------------------------------------------------------- #
# Drop table "city"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `city` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `city` DROP PRIMARY KEY;

DROP TABLE `city`;

# ---------------------------------------------------------------------- #
# Drop table "category"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `category` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `category` DROP PRIMARY KEY;

DROP TABLE `category`;

# ---------------------------------------------------------------------- #
# Drop table "area"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `area` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `area` DROP PRIMARY KEY;

DROP TABLE `area`;

# ---------------------------------------------------------------------- #
# Drop table "admin"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `admin` DROP PRIMARY KEY;

DROP TABLE `admin`;
