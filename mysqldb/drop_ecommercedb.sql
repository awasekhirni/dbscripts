# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ecommercedb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:58                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `addresses` DROP FOREIGN KEY `addresses_ibfk_1`;

ALTER TABLE `cards` DROP FOREIGN KEY `cards_ibfk_1`;

ALTER TABLE `customer` DROP FOREIGN KEY `customer_ibfk_1`;

ALTER TABLE `employee` DROP FOREIGN KEY `employee_ibfk_1`;

ALTER TABLE `employee` DROP FOREIGN KEY `employee_ibfk_2`;

ALTER TABLE `ordereditems` DROP FOREIGN KEY `ordereditems_ibfk_1`;

ALTER TABLE `ordereditems` DROP FOREIGN KEY `ordereditems_ibfk_2`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_ibfk_1`;

ALTER TABLE `payment` DROP FOREIGN KEY `payment_ibfk_1`;

ALTER TABLE `returnment` DROP FOREIGN KEY `returnment_ibfk_1`;

ALTER TABLE `returnment` DROP FOREIGN KEY `returnment_ibfk_2`;

ALTER TABLE `reviews` DROP FOREIGN KEY `reviews_ibfk_1`;

ALTER TABLE `reviews` DROP FOREIGN KEY `reviews_ibfk_2`;

ALTER TABLE `shipment` DROP FOREIGN KEY `shipment_ibfk_1`;

ALTER TABLE `shoppingcart` DROP FOREIGN KEY `shoppingcart_ibfk_1`;

ALTER TABLE `shoppingcart` DROP FOREIGN KEY `shoppingcart_ibfk_2`;

ALTER TABLE `wishlist` DROP FOREIGN KEY `wishlist_ibfk_1`;

ALTER TABLE `wishlist` DROP FOREIGN KEY `wishlist_ibfk_2`;

# ---------------------------------------------------------------------- #
# Drop table "returnment"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `returnment` DROP PRIMARY KEY;

DROP TABLE `returnment`;

# ---------------------------------------------------------------------- #
# Drop table "ordereditems"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ordereditems` DROP PRIMARY KEY;

DROP TABLE `ordereditems`;

# ---------------------------------------------------------------------- #
# Drop table "cards"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `cards` DROP PRIMARY KEY;

DROP TABLE `cards`;

# ---------------------------------------------------------------------- #
# Drop table "addresses"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `addresses` DROP PRIMARY KEY;

DROP TABLE `addresses`;

# ---------------------------------------------------------------------- #
# Drop table "wishlist"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `wishlist` DROP PRIMARY KEY;

DROP TABLE `wishlist`;

# ---------------------------------------------------------------------- #
# Drop table "shoppingcart"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `shoppingcart` DROP PRIMARY KEY;

DROP TABLE `shoppingcart`;

# ---------------------------------------------------------------------- #
# Drop table "shipment"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `shipment` DROP PRIMARY KEY;

DROP TABLE `shipment`;

# ---------------------------------------------------------------------- #
# Drop table "reviews"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `reviews` DROP PRIMARY KEY;

DROP TABLE `reviews`;

# ---------------------------------------------------------------------- #
# Drop table "payment"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `payment` DROP PRIMARY KEY;

DROP TABLE `payment`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `Completed` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "employee"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `employee` DROP PRIMARY KEY;

DROP TABLE `employee`;

# ---------------------------------------------------------------------- #
# Drop table "customer"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `customer` ALTER COLUMN `HasMembership` DROP DEFAULT;

ALTER TABLE `customer` DROP PRIMARY KEY;

DROP TABLE `customer`;

# ---------------------------------------------------------------------- #
# Drop table "person"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `person` ALTER COLUMN `IsEmployee` DROP DEFAULT;

ALTER TABLE `person` DROP PRIMARY KEY;

DROP TABLE `person`;

# ---------------------------------------------------------------------- #
# Drop table "item"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `item` DROP PRIMARY KEY;

DROP TABLE `item`;

# ---------------------------------------------------------------------- #
# Drop table "discount"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `discount` ALTER COLUMN `Valid` DROP DEFAULT;

ALTER TABLE `discount` DROP PRIMARY KEY;

DROP TABLE `discount`;
