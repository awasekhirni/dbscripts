# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          bookstoredb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:44                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin` (
    `name` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `pass` VARCHAR(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    PRIMARY KEY (`name`, `pass`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `customers` (
    `customerid` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `address` VARCHAR(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `city` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `zip_code` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `country` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    PRIMARY KEY (`customerid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `orderid` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `customerid` INTEGER(10) UNSIGNED NOT NULL,
    `amount` DECIMAL(6,2),
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ship_name` CHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `ship_address` CHAR(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `ship_city` CHAR(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `ship_zip_code` CHAR(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `ship_country` CHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    PRIMARY KEY (`orderid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "publisher"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `publisher` (
    `publisherid` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `publisher_name` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    PRIMARY KEY (`publisherid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "books"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `books` (
    `book_isbn` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `book_title` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci,
    `book_author` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_general_ci,
    `book_image` VARCHAR(40) CHARACTER SET latin1 COLLATE latin1_general_ci,
    `book_descr` TEXT CHARACTER SET latin1 COLLATE latin1_general_ci,
    `book_price` DECIMAL(6,2) NOT NULL,
    `publisherid` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`book_isbn`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "order_items"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_items` (
    `orderid` INTEGER(10) UNSIGNED NOT NULL,
    `book_isbn` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
    `item_price` DECIMAL(6,2) NOT NULL,
    `quantity` TINYINT(3) UNSIGNED NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `books` ADD CONSTRAINT `publisher_books` 
    FOREIGN KEY (`publisherid`) REFERENCES `publisher` (`publisherid`);

ALTER TABLE `order_items` ADD CONSTRAINT `books_order_items` 
    FOREIGN KEY (`book_isbn`) REFERENCES `books` (`book_isbn`);

ALTER TABLE `order_items` ADD CONSTRAINT `orders_order_items` 
    FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`);

ALTER TABLE `orders` ADD CONSTRAINT `customers_orders` 
    FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`);
