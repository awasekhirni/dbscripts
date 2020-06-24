# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crowdfunding.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "user"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `user` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `upwd` BINARY(60),
    `name` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `ccn` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `addr` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `interest` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`uname`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "follow"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `follow` (
    `uname1` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `uname2` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`uname1`, `uname2`)
)
ENGINE = INNODB;

CREATE INDEX `uname2` ON `follow` (`uname2`);

# ---------------------------------------------------------------------- #
# Add table "project"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `project` (
    `pid` INTEGER(11) NOT NULL,
    `pname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `profpic` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tag` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `minamount` INTEGER(11),
    `maxamount` INTEGER(11),
    `curamount` INTEGER(11),
    `posttime` DATETIME,
    `status` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `endtime` DATETIME,
    `actualendtime` DATETIME,
    `plannedcompletiontime` DATETIME,
    `actualcompletiontime` DATETIME,
    `progress` INTEGER(11),
    PRIMARY KEY (`pid`)
)
ENGINE = INNODB;

CREATE INDEX `uname` ON `project` (`uname`);

# ---------------------------------------------------------------------- #
# Add table "rate"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `rate` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `pid` INTEGER(11) NOT NULL,
    `score` FLOAT,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`uname`, `pid`)
)
ENGINE = INNODB;

CREATE INDEX `uname` ON `rate` (`uname`);

# ---------------------------------------------------------------------- #
# Add table "sample"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `sample` (
    `pid` INTEGER(11) NOT NULL,
    `filename` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `uploadtime` DATETIME,
    PRIMARY KEY (`filename`)
)
ENGINE = INNODB;

CREATE INDEX `pid` ON `sample` (`pid`);

# ---------------------------------------------------------------------- #
# Add table "searchhistory"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `searchhistory` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `keyword` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`uname`, `keyword`, `time`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "comment"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `comment` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `pid` INTEGER(11) NOT NULL,
    `content` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`uname`, `pid`, `time`)
)
ENGINE = INNODB;

CREATE INDEX `uname` ON `comment` (`uname`);

# ---------------------------------------------------------------------- #
# Add table "like"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `like` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `pid` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pledge"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `pledge` (
    `uname` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `pid` INTEGER(11) NOT NULL,
    `amount` INTEGER(11),
    `time` DATETIME NOT NULL,
    `charged` TINYINT(1) NOT NULL,
    PRIMARY KEY (`uname`, `pid`, `time`)
)
ENGINE = INNODB;

CREATE INDEX `uname` ON `pledge` (`uname`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `comment` ADD CONSTRAINT `comment_ibfk_1` 
    FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comment` ADD CONSTRAINT `comment_ibfk_2` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `follow` ADD CONSTRAINT `follow_ibfk_1` 
    FOREIGN KEY (`uname1`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `follow` ADD CONSTRAINT `follow_ibfk_2` 
    FOREIGN KEY (`uname2`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `like` ADD CONSTRAINT `like_ibfk_1` 
    FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `like` ADD CONSTRAINT `like_ibfk_2` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `pledge` ADD CONSTRAINT `pledge_ibfk_1` 
    FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `pledge` ADD CONSTRAINT `pledge_ibfk_2` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `project` ADD CONSTRAINT `project_ibfk_1` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `rate` ADD CONSTRAINT `rate_ibfk_1` 
    FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `rate` ADD CONSTRAINT `rate_ibfk_2` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `sample` ADD CONSTRAINT `sample_ibfk_1` 
    FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `searchhistory` ADD CONSTRAINT `searchhistory_ibfk_1` 
    FOREIGN KEY (`uname`) REFERENCES `user` (`uname`) ON DELETE RESTRICT ON UPDATE RESTRICT;
