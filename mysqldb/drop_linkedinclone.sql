# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          linkedinclone.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:49                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `certifications` DROP FOREIGN KEY `certifications_ibfk_1`;

ALTER TABLE `comments` DROP FOREIGN KEY `comments_ibfk_1`;

ALTER TABLE `comments` DROP FOREIGN KEY `comments_ibfk_2`;

ALTER TABLE `courses` DROP FOREIGN KEY `courses_ibfk_1`;

ALTER TABLE `education` DROP FOREIGN KEY `education_ibfk_1`;

ALTER TABLE `educationdetails` DROP FOREIGN KEY `educationdetails_ibfk_1`;

ALTER TABLE `endorsements` DROP FOREIGN KEY `endorsements_ibfk_1`;

ALTER TABLE `endorsements` DROP FOREIGN KEY `endorsements_ibfk_2`;

ALTER TABLE `experience` DROP FOREIGN KEY `experience_ibfk_1`;

ALTER TABLE `experiencedetails` DROP FOREIGN KEY `experiencedetails_ibfk_1`;

ALTER TABLE `following` DROP FOREIGN KEY `following_ibfk_1`;

ALTER TABLE `following` DROP FOREIGN KEY `following_ibfk_2`;

ALTER TABLE `honorsandawards` DROP FOREIGN KEY `honorsandawards_ibfk_1`;

ALTER TABLE `languages` DROP FOREIGN KEY `languages_ibfk_1`;

ALTER TABLE `likes` DROP FOREIGN KEY `likes_ibfk_1`;

ALTER TABLE `likes` DROP FOREIGN KEY `likes_ibfk_2`;

ALTER TABLE `organisation` DROP FOREIGN KEY `organisation_ibfk_1`;

ALTER TABLE `posts` DROP FOREIGN KEY `posts_ibfk_1`;

ALTER TABLE `projectmembers` DROP FOREIGN KEY `projectmembers_ibfk_1`;

ALTER TABLE `projectmembers` DROP FOREIGN KEY `projectmembers_ibfk_2`;

ALTER TABLE `projects` DROP FOREIGN KEY `projects_ibfk_1`;

ALTER TABLE `skills` DROP FOREIGN KEY `skills_ibfk_1`;

ALTER TABLE `summary` DROP FOREIGN KEY `summary_ibfk_1`;

ALTER TABLE `userdetails` DROP FOREIGN KEY `userdetails_ibfk_1`;

# ---------------------------------------------------------------------- #
# Drop table "projectmembers"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `projectmembers`;

# ---------------------------------------------------------------------- #
# Drop table "likes"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `likes`;

# ---------------------------------------------------------------------- #
# Drop table "endorsements"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `endorsements`;

# ---------------------------------------------------------------------- #
# Drop table "courses"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `courses`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "summary"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `summary`;

# ---------------------------------------------------------------------- #
# Drop table "skills"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `skills` MODIFY `skillid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `skills` ALTER COLUMN `endorsementcount` DROP DEFAULT;

ALTER TABLE `skills` DROP PRIMARY KEY;

DROP TABLE `skills`;

# ---------------------------------------------------------------------- #
# Drop table "projects"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `projects` ALTER COLUMN `projectid` DROP DEFAULT;

ALTER TABLE `projects` ALTER COLUMN `currentlyworking` DROP DEFAULT;

ALTER TABLE `projects` DROP PRIMARY KEY;

DROP TABLE `projects`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `likes` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `comments` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "organisation"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `organisation`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "honorsandawards"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `honorsandawards`;

# ---------------------------------------------------------------------- #
# Drop table "following"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `following`;

# ---------------------------------------------------------------------- #
# Drop table "experiencedetails"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `experiencedetails`;

# ---------------------------------------------------------------------- #
# Drop table "experience"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `experience` MODIFY `experienceid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `experience` ALTER COLUMN `currentlyworking` DROP DEFAULT;

ALTER TABLE `experience` DROP PRIMARY KEY;

DROP TABLE `experience`;

# ---------------------------------------------------------------------- #
# Drop table "educationdetails"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `educationdetails`;

# ---------------------------------------------------------------------- #
# Drop table "education"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `education` MODIFY `educationid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `education` ALTER COLUMN `currentlydoing` DROP DEFAULT;

ALTER TABLE `education` DROP PRIMARY KEY;

DROP TABLE `education`;

# ---------------------------------------------------------------------- #
# Drop table "certifications"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `certifications`;

# ---------------------------------------------------------------------- #
# Drop table "userdetails"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `userdetails` ALTER COLUMN `certifications` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `honorsandawards` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `experience` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `skillsandendorsements` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `projects` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `languages` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `education` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `additionalinfo` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `volunteer` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `courses` DROP DEFAULT;

ALTER TABLE `userdetails` ALTER COLUMN `following` DROP DEFAULT;

ALTER TABLE `userdetails` DROP PRIMARY KEY;

DROP TABLE `userdetails`;

# ---------------------------------------------------------------------- #
# Drop table "userauthenticate"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `userauthenticate` MODIFY `userid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `userauthenticate` ALTER COLUMN `approved` DROP DEFAULT;

ALTER TABLE `userauthenticate` ALTER COLUMN `usertype` DROP DEFAULT;

ALTER TABLE `userauthenticate` DROP PRIMARY KEY;

DROP TABLE `userauthenticate`;

# ---------------------------------------------------------------------- #
# Drop table "jobapplications"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `jobapplications` MODIFY `applicationid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `jobapplications` DROP PRIMARY KEY;

DROP TABLE `jobapplications`;
