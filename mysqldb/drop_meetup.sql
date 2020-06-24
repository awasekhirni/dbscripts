# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:57                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `about` DROP FOREIGN KEY `about_ibfk_1`;

ALTER TABLE `about` DROP FOREIGN KEY `about_ibfk_2`;

ALTER TABLE `attend` DROP FOREIGN KEY `attend_ibfk_1`;

ALTER TABLE `attend` DROP FOREIGN KEY `attend_ibfk_2`;

ALTER TABLE `belongs_to` DROP FOREIGN KEY `belongs_to_ibfk_1`;

ALTER TABLE `belongs_to` DROP FOREIGN KEY `belongs_to_ibfk_2`;

ALTER TABLE `events` DROP FOREIGN KEY `events_ibfk_1`;

ALTER TABLE `events` DROP FOREIGN KEY `events_ibfk_2`;

ALTER TABLE `groups` DROP FOREIGN KEY `groups_ibfk_1`;

ALTER TABLE `interested_in` DROP FOREIGN KEY `interested_in_ibfk_1`;

ALTER TABLE `interested_in` DROP FOREIGN KEY `interested_in_ibfk_2`;

# ---------------------------------------------------------------------- #
# Drop table "attend"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `attend` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `attend` DROP PRIMARY KEY;

DROP TABLE `attend`;

# ---------------------------------------------------------------------- #
# Drop table "events"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `events` MODIFY `event_id` INTEGER(20) NOT NULL;

# Drop constraints #

ALTER TABLE `events` ALTER COLUMN `title` DROP DEFAULT;

ALTER TABLE `events` DROP PRIMARY KEY;

DROP TABLE `events`;

# ---------------------------------------------------------------------- #
# Drop table "belongs_to"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `belongs_to` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `belongs_to` DROP PRIMARY KEY;

DROP TABLE `belongs_to`;

# ---------------------------------------------------------------------- #
# Drop table "about"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `about` ALTER COLUMN `interest_name` DROP DEFAULT;

ALTER TABLE `about` DROP PRIMARY KEY;

DROP TABLE `about`;

# ---------------------------------------------------------------------- #
# Drop table "interested_in"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `interested_in` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `interested_in` ALTER COLUMN `interest_name` DROP DEFAULT;

ALTER TABLE `interested_in` DROP PRIMARY KEY;

DROP TABLE `interested_in`;

# ---------------------------------------------------------------------- #
# Drop table "groups"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `groups` ALTER COLUMN `group_name` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `username` DROP DEFAULT;

DROP TABLE `groups`;

# ---------------------------------------------------------------------- #
# Drop table "member"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `member` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `member` ALTER COLUMN `password` DROP DEFAULT;

ALTER TABLE `member` ALTER COLUMN `firstname` DROP DEFAULT;

ALTER TABLE `member` ALTER COLUMN `lastname` DROP DEFAULT;

DROP TABLE `member`;

# ---------------------------------------------------------------------- #
# Drop table "location"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `location` ALTER COLUMN `lname` DROP DEFAULT;

ALTER TABLE `location` ALTER COLUMN `street` DROP DEFAULT;

ALTER TABLE `location` ALTER COLUMN `city` DROP DEFAULT;

ALTER TABLE `location` DROP PRIMARY KEY;

DROP TABLE `location`;

# ---------------------------------------------------------------------- #
# Drop table "interest"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `interest` ALTER COLUMN `interest_name` DROP DEFAULT;

ALTER TABLE `interest` DROP PRIMARY KEY;

DROP TABLE `interest`;
