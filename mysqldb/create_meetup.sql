# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:57                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "interest"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `interest` (
    `interest_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`interest_name`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "location"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `location` (
    `lname` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `zip` INTEGER(5) NOT NULL,
    `street` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `city` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude` BIGINT(50) NOT NULL,
    `longitude` BIGINT(50) NOT NULL,
    PRIMARY KEY (`lname`, `zip`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "member"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `member` (
    `username` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `password` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `firstname` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `lastname` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `zipcode` INTEGER(5) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "groups"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `groups` (
    `group_id` INTEGER(20) NOT NULL AUTO_INCREMENT,
    `group_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "interested_in"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `interested_in` (
    `username` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `interest_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`username`, `interest_name`)
)
ENGINE = INNODB;

CREATE INDEX `interest_name` ON `interested_in` (`interest_name`);

# ---------------------------------------------------------------------- #
# Add table "about"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `about` (
    `interest_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `group_id` INTEGER(20) NOT NULL,
    PRIMARY KEY (`interest_name`, `group_id`)
)
ENGINE = INNODB;

CREATE INDEX `interest_name` ON `about` (`interest_name`);

# ---------------------------------------------------------------------- #
# Add table "belongs_to"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `belongs_to` (
    `group_id` INTEGER(20) NOT NULL,
    `username` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `authorized` TINYINT(1) NOT NULL,
    PRIMARY KEY (`group_id`, `username`)
)
ENGINE = INNODB;

CREATE INDEX `username` ON `belongs_to` (`username`);

# ---------------------------------------------------------------------- #
# Add table "events"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `events` (
    `event_id` INTEGER(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `group_id` INTEGER(20) NOT NULL,
    `lname` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `zip` INTEGER(5) NOT NULL,
    PRIMARY KEY (`event_id`)
)
ENGINE = INNODB;

CREATE INDEX `group_id` ON `events` (`group_id`);

CREATE INDEX `lname` ON `events` (`lname`,`zip`);

# ---------------------------------------------------------------------- #
# Add table "attend"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `attend` (
    `event_id` INTEGER(20) NOT NULL,
    `username` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `rsvp` TINYINT(1) NOT NULL,
    `rating` INTEGER(1) NOT NULL,
    PRIMARY KEY (`event_id`, `username`)
)
ENGINE = INNODB;

CREATE INDEX `username` ON `attend` (`username`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `about` ADD CONSTRAINT `about_ibfk_1` 
    FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `about` ADD CONSTRAINT `about_ibfk_2` 
    FOREIGN KEY (`interest_name`) REFERENCES `interest` (`interest_name`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `attend` ADD CONSTRAINT `attend_ibfk_1` 
    FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `attend` ADD CONSTRAINT `attend_ibfk_2` 
    FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `belongs_to` ADD CONSTRAINT `belongs_to_ibfk_1` 
    FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `belongs_to` ADD CONSTRAINT `belongs_to_ibfk_2` 
    FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `events` ADD CONSTRAINT `events_ibfk_1` 
    FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `events` ADD CONSTRAINT `events_ibfk_2` 
    FOREIGN KEY (`lname`, `zip`) REFERENCES `location` (`lname`,`zip`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `groups` ADD CONSTRAINT `groups_ibfk_1` 
    FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `interested_in` ADD CONSTRAINT `interested_in_ibfk_1` 
    FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `interested_in` ADD CONSTRAINT `interested_in_ibfk_2` 
    FOREIGN KEY (`interest_name`) REFERENCES `interest` (`interest_name`) ON DELETE RESTRICT ON UPDATE RESTRICT;
