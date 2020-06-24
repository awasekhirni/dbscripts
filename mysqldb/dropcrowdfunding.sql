# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crowdfunding.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `comment` DROP FOREIGN KEY `comment_ibfk_1`;

ALTER TABLE `comment` DROP FOREIGN KEY `comment_ibfk_2`;

ALTER TABLE `follow` DROP FOREIGN KEY `follow_ibfk_1`;

ALTER TABLE `follow` DROP FOREIGN KEY `follow_ibfk_2`;

ALTER TABLE `like` DROP FOREIGN KEY `like_ibfk_1`;

ALTER TABLE `like` DROP FOREIGN KEY `like_ibfk_2`;

ALTER TABLE `pledge` DROP FOREIGN KEY `pledge_ibfk_1`;

ALTER TABLE `pledge` DROP FOREIGN KEY `pledge_ibfk_2`;

ALTER TABLE `project` DROP FOREIGN KEY `project_ibfk_1`;

ALTER TABLE `rate` DROP FOREIGN KEY `rate_ibfk_1`;

ALTER TABLE `rate` DROP FOREIGN KEY `rate_ibfk_2`;

ALTER TABLE `sample` DROP FOREIGN KEY `sample_ibfk_1`;

ALTER TABLE `searchhistory` DROP FOREIGN KEY `searchhistory_ibfk_1`;

# ---------------------------------------------------------------------- #
# Drop table "pledge"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pledge` DROP PRIMARY KEY;

DROP TABLE `pledge`;

# ---------------------------------------------------------------------- #
# Drop table "like"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `like`;

# ---------------------------------------------------------------------- #
# Drop table "comment"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `comment` DROP PRIMARY KEY;

DROP TABLE `comment`;

# ---------------------------------------------------------------------- #
# Drop table "searchhistory"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `searchhistory` DROP PRIMARY KEY;

DROP TABLE `searchhistory`;

# ---------------------------------------------------------------------- #
# Drop table "sample"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `sample` DROP PRIMARY KEY;

DROP TABLE `sample`;

# ---------------------------------------------------------------------- #
# Drop table "rate"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `rate` DROP PRIMARY KEY;

DROP TABLE `rate`;

# ---------------------------------------------------------------------- #
# Drop table "project"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `project` DROP PRIMARY KEY;

DROP TABLE `project`;

# ---------------------------------------------------------------------- #
# Drop table "follow"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `follow` DROP PRIMARY KEY;

DROP TABLE `follow`;

# ---------------------------------------------------------------------- #
# Drop table "user"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `user` DROP PRIMARY KEY;

DROP TABLE `user`;
