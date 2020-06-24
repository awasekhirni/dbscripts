# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          mysqlhackerrank_development.dez                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:03                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `active_storage_attachments` DROP FOREIGN KEY `fk_rails_c3b3935057`;

ALTER TABLE `challenges` DROP FOREIGN KEY `fk_rails_0892ec999f`;

ALTER TABLE `comments` DROP FOREIGN KEY `fk_rails_03de2dc08c`;

ALTER TABLE `comments` DROP FOREIGN KEY `fk_rails_2fd19c0db7`;

ALTER TABLE `defaultcodes` DROP FOREIGN KEY `fk_rails_14d7e9f4de`;

ALTER TABLE `defaultcodes` DROP FOREIGN KEY `fk_rails_d95c31c88f`;

ALTER TABLE `passlevels` DROP FOREIGN KEY `fk_rails_83037f80c1`;

ALTER TABLE `passlevels` DROP FOREIGN KEY `fk_rails_e9addb1823`;

ALTER TABLE `posts` DROP FOREIGN KEY `fk_rails_0c7023927a`;

ALTER TABLE `posts` DROP FOREIGN KEY `fk_rails_5b5ddfd518`;

ALTER TABLE `successcodes` DROP FOREIGN KEY `fk_rails_759748483f`;

ALTER TABLE `successcodes` DROP FOREIGN KEY `fk_rails_c8d6bf81fe`;

ALTER TABLE `successcodes` DROP FOREIGN KEY `fk_rails_f68efa20ff`;

ALTER TABLE `testcases` DROP FOREIGN KEY `fk_rails_4712fe126d`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "testcases"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `testcases` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `testcases` DROP PRIMARY KEY;

DROP TABLE `testcases`;

# ---------------------------------------------------------------------- #
# Drop table "successcodes"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `successcodes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `successcodes` DROP PRIMARY KEY;

DROP TABLE `successcodes`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "passlevels"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `passlevels` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `passlevels` DROP PRIMARY KEY;

DROP TABLE `passlevels`;

# ---------------------------------------------------------------------- #
# Drop table "defaultcodes"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `defaultcodes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `defaultcodes` DROP PRIMARY KEY;

DROP TABLE `defaultcodes`;

# ---------------------------------------------------------------------- #
# Drop table "challenges"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `challenges` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `challenges` DROP PRIMARY KEY;

DROP TABLE `challenges`;

# ---------------------------------------------------------------------- #
# Drop table "active_storage_attachments"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `active_storage_attachments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `active_storage_attachments` DROP PRIMARY KEY;

DROP TABLE `active_storage_attachments`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `schema_migrations` DROP PRIMARY KEY;

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `languages` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "groupchallenges"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `groupchallenges` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `groupchallenges` DROP PRIMARY KEY;

DROP TABLE `groupchallenges`;

# ---------------------------------------------------------------------- #
# Drop table "category_posts"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `category_posts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `category_posts` DROP PRIMARY KEY;

DROP TABLE `category_posts`;

# ---------------------------------------------------------------------- #
# Drop table "ar_internal_metadata"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ar_internal_metadata` DROP PRIMARY KEY;

DROP TABLE `ar_internal_metadata`;

# ---------------------------------------------------------------------- #
# Drop table "admin_users"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `admin_users` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `admin_users` DROP PRIMARY KEY;

DROP TABLE `admin_users`;

# ---------------------------------------------------------------------- #
# Drop table "active_storage_blobs"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `active_storage_blobs` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `active_storage_blobs` DROP PRIMARY KEY;

DROP TABLE `active_storage_blobs`;

# ---------------------------------------------------------------------- #
# Drop table "active_admin_comments"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `active_admin_comments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `active_admin_comments` DROP PRIMARY KEY;

DROP TABLE `active_admin_comments`;
