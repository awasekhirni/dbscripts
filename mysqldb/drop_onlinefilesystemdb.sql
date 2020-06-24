# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinefilesystemdb.dez                          #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:12                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "ofs_users"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_users` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_users` DROP PRIMARY KEY;

DROP TABLE `ofs_users`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_uploads"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_uploads` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_uploads` DROP PRIMARY KEY;

DROP TABLE `ofs_uploads`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_updates"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_updates` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_updates` DROP PRIMARY KEY;

DROP TABLE `ofs_updates`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_themes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_themes` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_themes` DROP PRIMARY KEY;

DROP TABLE `ofs_themes`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_templates"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_templates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_templates` DROP PRIMARY KEY;

DROP TABLE `ofs_templates`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_social"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_social` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_social` DROP PRIMARY KEY;

DROP TABLE `ofs_social`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_settings` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_settings` DROP PRIMARY KEY;

DROP TABLE `ofs_settings`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_sessions"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ofs_sessions` ALTER COLUMN `timestamp` DROP DEFAULT;

DROP TABLE `ofs_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_receivers"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_receivers` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_receivers` DROP PRIMARY KEY;

DROP TABLE `ofs_receivers`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_log"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_log` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_log` DROP PRIMARY KEY;

DROP TABLE `ofs_log`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_language"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_language` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_language` DROP PRIMARY KEY;

DROP TABLE `ofs_language`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_files"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_files` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_files` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `ofs_files` DROP PRIMARY KEY;

DROP TABLE `ofs_files`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_downloads"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_downloads` MODIFY `id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_downloads` DROP PRIMARY KEY;

DROP TABLE `ofs_downloads`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_backgrounds"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_backgrounds` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_backgrounds` DROP PRIMARY KEY;

DROP TABLE `ofs_backgrounds`;

# ---------------------------------------------------------------------- #
# Drop table "ofs_accounts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofs_accounts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ofs_accounts` DROP PRIMARY KEY;

DROP TABLE `ofs_accounts`;
