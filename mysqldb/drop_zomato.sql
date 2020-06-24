# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          mysql_zomato_development.dez                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:02                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `booking_tables` DROP FOREIGN KEY `fk_rails_190cc7f369`;

ALTER TABLE `booking_tables` DROP FOREIGN KEY `fk_rails_6784cfe125`;

ALTER TABLE `food_items` DROP FOREIGN KEY `fk_rails_ea28736128`;

ALTER TABLE `food_items` DROP FOREIGN KEY `fk_rails_f6476d3ec3`;

ALTER TABLE `menu_cards` DROP FOREIGN KEY `fk_rails_82242faa23`;

ALTER TABLE `order_items` DROP FOREIGN KEY `fk_rails_e3cb28f071`;

ALTER TABLE `order_items` DROP FOREIGN KEY `fk_rails_ecec0c691f`;

ALTER TABLE `orders` DROP FOREIGN KEY `fk_rails_9af093cac8`;

ALTER TABLE `orders` DROP FOREIGN KEY `fk_rails_f868b47f6a`;

ALTER TABLE `reviews` DROP FOREIGN KEY `fk_rails_74a66bd6c5`;

ALTER TABLE `reviews` DROP FOREIGN KEY `fk_rails_8173017a90`;

# ---------------------------------------------------------------------- #
# Drop table "order_items"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_items` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `order_items` ALTER COLUMN `sub_total` DROP DEFAULT;

ALTER TABLE `order_items` DROP PRIMARY KEY;

DROP TABLE `order_items`;

# ---------------------------------------------------------------------- #
# Drop table "reviews"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reviews` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `reviews` ALTER COLUMN `approve` DROP DEFAULT;

ALTER TABLE `reviews` DROP PRIMARY KEY;

DROP TABLE `reviews`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `total_price` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "menu_cards"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menu_cards` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `menu_cards` DROP PRIMARY KEY;

DROP TABLE `menu_cards`;

# ---------------------------------------------------------------------- #
# Drop table "food_items"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `food_items` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `food_items` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `food_items` ALTER COLUMN `veg` DROP DEFAULT;

ALTER TABLE `food_items` DROP PRIMARY KEY;

DROP TABLE `food_items`;

# ---------------------------------------------------------------------- #
# Drop table "booking_tables"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `booking_tables` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `booking_tables` DROP PRIMARY KEY;

DROP TABLE `booking_tables`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `admin` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `provider` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `schema_migrations` DROP PRIMARY KEY;

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "restaurants"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `restaurants` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `restaurants` DROP PRIMARY KEY;

DROP TABLE `restaurants`;

# ---------------------------------------------------------------------- #
# Drop table "restaurant_categories"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `restaurant_categories` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `restaurant_categories` DROP PRIMARY KEY;

DROP TABLE `restaurant_categories`;

# ---------------------------------------------------------------------- #
# Drop table "food_categories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `food_categories` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `food_categories` DROP PRIMARY KEY;

DROP TABLE `food_categories`;

# ---------------------------------------------------------------------- #
# Drop table "ar_internal_metadata"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ar_internal_metadata` DROP PRIMARY KEY;

DROP TABLE `ar_internal_metadata`;
