# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          linkedinclone.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:49                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "jobapplications"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `jobapplications` (
    `applicationid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `jobid` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`applicationid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "userauthenticate"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `userauthenticate` (
    `userid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `approved` TINYINT(1) DEFAULT 0,
    `creationdate` DATE,
    `modifydate` DATE,
    `lastlogin` DATETIME,
    `salt` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `usertype` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'usr',
    PRIMARY KEY (`userid`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `uc_username` ON `userauthenticate` (`username`);

# ---------------------------------------------------------------------- #
# Add table "userdetails"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `userdetails` (
    `userid` INTEGER(11) NOT NULL,
    `firstname` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lastname` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `photo` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `headline` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `industry` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `twitter_handle` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `websites` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `summary` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `certifications` TINYINT(1) DEFAULT 0,
    `honorsandawards` TINYINT(1) DEFAULT 0,
    `experience` TINYINT(1) DEFAULT 0,
    `skillsandendorsements` TINYINT(1) DEFAULT 0,
    `projects` TINYINT(1) DEFAULT 0,
    `languages` TINYINT(1) DEFAULT 0,
    `education` TINYINT(1) DEFAULT 0,
    `additionalinfo` TINYINT(1) DEFAULT 0,
    `volunteer` TINYINT(1) DEFAULT 0,
    `courses` TINYINT(1) DEFAULT 0,
    `following` TINYINT(1) DEFAULT 0,
    `modifydate` DATE,
    `creationdate` DATE,
    `dob` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`userid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "certifications"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `certifications` (
    `userid` INTEGER(11) NOT NULL,
    `cname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cauthority` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `clicensenumber` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `curl` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cstartdate` DATE,
    `cenddate` DATE,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `certifications` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "education"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `education` (
    `userid` INTEGER(11) NOT NULL,
    `educationid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `school` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `startdate` DATE,
    `enddate` DATE,
    `currentlydoing` TINYINT(1) DEFAULT 0,
    `degree` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `field` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `grade` DECIMAL(4,1),
    `activities` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE,
    PRIMARY KEY (`educationid`)
)
ENGINE = INNODB;

CREATE INDEX `education_ibfk_1` ON `education` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "educationdetails"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `educationdetails` (
    `userid` INTEGER(11) NOT NULL,
    `educationid` INTEGER(11) NOT NULL,
    `detailslink` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fileorurl` ENUM('file','url') COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_educationid` ON `educationdetails` (`userid`,`educationid`);

# ---------------------------------------------------------------------- #
# Add table "experience"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `experience` (
    `userid` INTEGER(11) NOT NULL,
    `experienceid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `companyname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `title` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `startdate` DATE,
    `enddate` DATE,
    `currentlyworking` TINYINT(1) DEFAULT 0,
    `description` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE,
    PRIMARY KEY (`experienceid`)
)
ENGINE = INNODB;

CREATE INDEX `experience_ibfk_1` ON `experience` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "experiencedetails"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `experiencedetails` (
    `userid` INTEGER(11) NOT NULL,
    `experienceid` INTEGER(11) NOT NULL,
    `detailslink` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fileorurl` ENUM('file','url') COLLATE utf8_general_ci,
    `modifydate` DATE,
    `creationdate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_experience` ON `experiencedetails` (`userid`,`experienceid`);

# ---------------------------------------------------------------------- #
# Add table "following"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `following` (
    `userid` INTEGER(11) NOT NULL,
    `category` ENUM('company','school') COLLATE utf8_general_ci,
    `organisationid` INTEGER(11),
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `following` (`userid`);

CREATE INDEX `fk_organisationid` ON `following` (`organisationid`);

# ---------------------------------------------------------------------- #
# Add table "honorsandawards"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `honorsandawards` (
    `userid` INTEGER(11) NOT NULL,
    `title` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `occupation` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `issuer` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dateofissue` DATE,
    `description` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `honorsandawards` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `userid` INTEGER(11) NOT NULL,
    `languages` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `proficiency` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `languages` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "organisation"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `organisation` (
    `userid` INTEGER(11),
    `organisationname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `organisationtype` ENUM('company','school') COLLATE utf8_general_ci,
    `photo` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `following` INTEGER(11),
    `creationdate` DATE,
    `modifydate` DATE,
    `email` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `organisation` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `userid` INTEGER(11) NOT NULL,
    `postid` INTEGER(11) NOT NULL,
    `postheadline` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `postbody` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `likes` INTEGER(11) DEFAULT 0,
    `comments` INTEGER(11) DEFAULT 0,
    `creationdate` DATE,
    `modifydate` DATE,
    PRIMARY KEY (`postid`)
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `posts` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "projects"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `projects` (
    `userid` INTEGER(11) NOT NULL,
    `projectid` INTEGER(11) NOT NULL DEFAULT 0,
    `pname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `poccupation` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `startdate` DATE,
    `enddate` DATE,
    `currentlyworking` TINYINT(1) DEFAULT 0,
    `projecturl` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE,
    PRIMARY KEY (`userid`, `projectid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "skills"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `skills` (
    `userid` INTEGER(11) NOT NULL,
    `skillid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `skillname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `endorsementcount` INTEGER(11) DEFAULT 0,
    `creationdate` DATE,
    `modifydate` DATE,
    PRIMARY KEY (`skillid`)
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `skills` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "summary"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `summary` (
    `userid` INTEGER(11) NOT NULL,
    `summarydesc` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `photo` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `link` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `video` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `presentation` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `summary` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `postid` INTEGER(11) NOT NULL,
    `commentid` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    `commentbody` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `comments` (`userid`);

CREATE INDEX `fk_postid` ON `comments` (`postid`);

# ---------------------------------------------------------------------- #
# Add table "courses"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `courses` (
    `userid` INTEGER(11) NOT NULL,
    `educationid` INTEGER(11) NOT NULL,
    `coursename` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `courseid` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_educationid` ON `courses` (`userid`,`educationid`);

# ---------------------------------------------------------------------- #
# Add table "endorsements"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `endorsements` (
    `userid` INTEGER(11) NOT NULL,
    `skillid` INTEGER(11) NOT NULL,
    `euserid` INTEGER(11),
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `endorsements` (`euserid`);

CREATE INDEX `fk_skill` ON `endorsements` (`userid`,`skillid`);

# ---------------------------------------------------------------------- #
# Add table "likes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `likes` (
    `postid` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `likes` (`userid`);

CREATE INDEX `fk_postid` ON `likes` (`postid`);

# ---------------------------------------------------------------------- #
# Add table "projectmembers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `projectmembers` (
    `userid` INTEGER(11) NOT NULL,
    `projectid` INTEGER(11) NOT NULL,
    `muserid` INTEGER(11),
    `creationdate` DATE,
    `modifydate` DATE
)
ENGINE = INNODB;

CREATE INDEX `fk_userid` ON `projectmembers` (`muserid`);

CREATE INDEX `fk_projectid` ON `projectmembers` (`userid`,`projectid`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `certifications` ADD CONSTRAINT `certifications_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comments` ADD CONSTRAINT `comments_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comments` ADD CONSTRAINT `comments_ibfk_2` 
    FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `courses` ADD CONSTRAINT `courses_ibfk_1` 
    FOREIGN KEY (`userid`, `educationid`) REFERENCES `education` (`userid`,`educationid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `education` ADD CONSTRAINT `education_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `educationdetails` ADD CONSTRAINT `educationdetails_ibfk_1` 
    FOREIGN KEY (`userid`, `educationid`) REFERENCES `education` (`userid`,`educationid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `endorsements` ADD CONSTRAINT `endorsements_ibfk_1` 
    FOREIGN KEY (`euserid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `endorsements` ADD CONSTRAINT `endorsements_ibfk_2` 
    FOREIGN KEY (`userid`, `skillid`) REFERENCES `skills` (`userid`,`skillid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `experience` ADD CONSTRAINT `experience_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `experiencedetails` ADD CONSTRAINT `experiencedetails_ibfk_1` 
    FOREIGN KEY (`userid`, `experienceid`) REFERENCES `experience` (`userid`,`experienceid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `following` ADD CONSTRAINT `following_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `following` ADD CONSTRAINT `following_ibfk_2` 
    FOREIGN KEY (`organisationid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `honorsandawards` ADD CONSTRAINT `honorsandawards_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `languages` ADD CONSTRAINT `languages_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `likes` ADD CONSTRAINT `likes_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `likes` ADD CONSTRAINT `likes_ibfk_2` 
    FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `organisation` ADD CONSTRAINT `organisation_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `posts` ADD CONSTRAINT `posts_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `projectmembers` ADD CONSTRAINT `projectmembers_ibfk_1` 
    FOREIGN KEY (`muserid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `projectmembers` ADD CONSTRAINT `projectmembers_ibfk_2` 
    FOREIGN KEY (`userid`, `projectid`) REFERENCES `projects` (`userid`,`projectid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `projects` ADD CONSTRAINT `projects_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `skills` ADD CONSTRAINT `skills_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `summary` ADD CONSTRAINT `summary_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `userdetails` ADD CONSTRAINT `userdetails_ibfk_1` 
    FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT;
