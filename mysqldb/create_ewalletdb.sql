# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ewalletdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:23                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "ewallet_banks"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_banks` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `owner` INTEGER(11) NOT NULL DEFAULT 0,
    `bname` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `baddress` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bcity` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bzip` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bcountry` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bstate` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bphone` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bnameacc` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `baccount` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `btype` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `brtgnum` VARCHAR(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bswift` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `default` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ewallet_cards"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_cards` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `owner` INTEGER(11) NOT NULL DEFAULT 0,
    `ctype` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cname` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cnumber` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `ccvv` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cmonth` TINYINT(2) NOT NULL DEFAULT 0,
    `cyear` SMALLINT(6) NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `default` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ewallet_confirms"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_confirms` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `newuser` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newpass` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newquestion` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newanswer` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newmail` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newfname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newlname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newcompany` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newregnum` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newdrvnum` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newaddress` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newcity` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newcountry` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newstate` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newzip` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newphone` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `newfax` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `sponsor` INTEGER(11) NOT NULL DEFAULT 0,
    `confirm` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cdate` TIMESTAMP(6) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `newuser` ON `ewallet_confirms` (`newuser`);

CREATE INDEX `newmail` ON `ewallet_confirms` (`newmail`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_emails"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_emails` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `value` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'E-Mail Templates';

CREATE UNIQUE INDEX `keyword` ON `ewallet_emails` (`key`);

CREATE INDEX `name` ON `ewallet_emails` (`name`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_faq_cat_list"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_faq_cat_list` (
    `id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` CHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `parent` INTEGER(3),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ewallet_faq_list"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_faq_list` (
    `id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `answer` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `cat` INTEGER(3),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ewallet_member_emails"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_member_emails` (
    `owner` INTEGER(11) NOT NULL DEFAULT 0,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `active` TINYINT(1) NOT NULL DEFAULT 0,
    `primary` TINYINT(1) NOT NULL DEFAULT 0,
    `verifcode` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`owner`, `email`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `email` ON `ewallet_member_emails` (`email`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_members"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_members` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sponsor` INTEGER(11) NOT NULL DEFAULT 0,
    `username` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `password` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `question` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `answer` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `active` TINYINT(1) NOT NULL DEFAULT 0,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `empty` TINYINT(1) NOT NULL DEFAULT 1,
    `cdate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `ldate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `adate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `last_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `fname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `lname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `company` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `regnum` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `drvnum` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `address` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `city` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `country` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `state` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `zip` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `phone` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `fax` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `ctype` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cname` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cnumber` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `ccvv` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cmonth` TINYINT(2) NOT NULL DEFAULT 0,
    `cyear` SMALLINT(6) NOT NULL DEFAULT 0,
    `bname` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `baddress` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bcity` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bzip` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bcountry` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bstate` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bphone` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bnameacc` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `baccount` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `btype` CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `brtgnum` VARCHAR(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `bswift` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'System Members';

CREATE UNIQUE INDEX `username` ON `ewallet_members` (`username`);

CREATE INDEX `email` ON `ewallet_members` (`email`);

CREATE INDEX `fname` ON `ewallet_members` (`fname`);

CREATE INDEX `lname` ON `ewallet_members` (`lname`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_products"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_products` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` TINYINT(4) NOT NULL DEFAULT 0,
    `sold` INTEGER(11) NOT NULL DEFAULT 0,
    `owner` INTEGER(11) NOT NULL DEFAULT 0,
    `price` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `period` INTEGER(11) NOT NULL DEFAULT 0,
    `setup` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `trial` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `tax` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `shipping` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `button` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `ureturn` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `unotify` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ucancel` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `comments` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'Products';

CREATE INDEX `type` ON `ewallet_products` (`type`);

CREATE INDEX `owner` ON `ewallet_products` (`owner`);

CREATE INDEX `name` ON `ewallet_products` (`name`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_shop_categories"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_shop_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `parentid` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `parent_id` ON `ewallet_shop_categories` (`parentid`,`name`);

CREATE INDEX `parentid` ON `ewallet_shop_categories` (`parentid`);

CREATE INDEX `name` ON `ewallet_shop_categories` (`name`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_shop_items"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_shop_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `categoryid` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `categoryid` ON `ewallet_shop_items` (`categoryid`,`name`);

CREATE INDEX `name` ON `ewallet_shop_items` (`name`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_subscriptions"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_subscriptions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `owner` INTEGER(11) NOT NULL DEFAULT 0,
    `member` INTEGER(11) NOT NULL DEFAULT 0,
    `product` INTEGER(11) NOT NULL DEFAULT 0,
    `sdate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `pdate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'Subscribers';

CREATE INDEX `owner` ON `ewallet_subscriptions` (`owner`);

CREATE INDEX `member` ON `ewallet_subscriptions` (`member`);

CREATE INDEX `product` ON `ewallet_subscriptions` (`product`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_temp_pays"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_temp_pays` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tdate` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `sender` INTEGER(11) NOT NULL DEFAULT 0,
    `receiver` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `amount` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `comments` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'Pending payments for unregistered members';

CREATE INDEX `tdate` ON `ewallet_temp_pays` (`tdate`);

CREATE INDEX `sender` ON `ewallet_temp_pays` (`sender`);

CREATE INDEX `receiver` ON `ewallet_temp_pays` (`receiver`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_transactions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tdate` DATETIME,
    `sender` INTEGER(11) NOT NULL DEFAULT 0,
    `receiver` INTEGER(11) NOT NULL DEFAULT 0,
    `related` INTEGER(11) NOT NULL DEFAULT 0,
    `amount` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `fees` DOUBLE(10,2) NOT NULL DEFAULT 0.00,
    `type` TINYINT(1) NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `comments` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `ecomments` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'Transactions';

CREATE INDEX `tdate` ON `ewallet_transactions` (`tdate`);

CREATE INDEX `sender` ON `ewallet_transactions` (`sender`);

CREATE INDEX `receiver` ON `ewallet_transactions` (`receiver`);

# ---------------------------------------------------------------------- #
# Add table "ewallet_visits"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `ewallet_visits` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `member` INTEGER(11) NOT NULL DEFAULT 0,
    `date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `address` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB COMMENT = 'History of members IPs';

CREATE INDEX `member` ON `ewallet_visits` (`member`);
