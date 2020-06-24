# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          bookstoredb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:44                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `books` DROP FOREIGN KEY `publisher_books`;

ALTER TABLE `order_items` DROP FOREIGN KEY `books_order_items`;

ALTER TABLE `order_items` DROP FOREIGN KEY `orders_order_items`;

ALTER TABLE `orders` DROP FOREIGN KEY `customers_orders`;

# ---------------------------------------------------------------------- #
# Drop table "order_items"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `order_items`;

# ---------------------------------------------------------------------- #
# Drop table "books"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `books` DROP PRIMARY KEY;

DROP TABLE `books`;

# ---------------------------------------------------------------------- #
# Drop table "publisher"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `publisher` MODIFY `publisherid` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `publisher` DROP PRIMARY KEY;

DROP TABLE `publisher`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `orderid` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "customers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customers` MODIFY `customerid` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `customers` DROP PRIMARY KEY;

DROP TABLE `customers`;

# ---------------------------------------------------------------------- #
# Drop table "admin"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `admin` DROP PRIMARY KEY;

DROP TABLE `admin`;
