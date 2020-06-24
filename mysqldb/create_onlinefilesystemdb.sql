# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinefilesystemdb.dez                          #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:12                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "ofs_accounts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_accounts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_backgrounds"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_backgrounds` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `src` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `url` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `duration` INTEGER(10),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_downloads"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_downloads` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `download_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `time` INTEGER(100) NOT NULL,
    `ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_files"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_files` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `upload_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `secret_code` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `file` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `size` INTEGER(20) DEFAULT 0,
    `time` INTEGER(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_language"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_language` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `path` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_log"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_log` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `time` INTEGER(100) NOT NULL,
    `msg` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_receivers"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_receivers` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `upload_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `private_id` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "ofs_sessions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_sessions` (
    `id` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `ofs_sessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "ofs_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_settings` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `site_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `site_title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `site_desc` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `site_url` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lock_page` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name_on_file` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `max_size` INTEGER(100) NOT NULL,
    `max_files` INTEGER(200) NOT NULL,
    `max_file_reports` INTEGER(100) NOT NULL,
    `blocked_types` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `expire` INTEGER(100) NOT NULL,
    `upload_dir` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `favicon_path` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `logo_path` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bg_timer` INTEGER(100) NOT NULL,
    `default_destruct` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `default_sharetype` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `default_email_to` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password_enabled` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `analytics` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `accept_terms` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_from_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_from_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_to_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_server` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_host` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_auth` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_secure` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_port` INTEGER(100) NOT NULL,
    `smtp_username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `terms_text` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `about_text` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_1_enabled` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_1_code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_2_enabled` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_2_code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `purchase_code` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `version` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_update_check` INTEGER(100) NOT NULL,
    `encrypt_files` INTEGER(1),
    `timezone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_social"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_social` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `facebook` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `twitter` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `google` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `instagram` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `github` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tumblr` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pinterest` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_templates"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_templates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `msg` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lang` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_themes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_themes` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `path` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_updates"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_updates` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `version` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_uploads"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_uploads` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `upload_id` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_from` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` VARCHAR(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `secret_code` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `size` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `time` INTEGER(100) NOT NULL,
    `time_expire` INTEGER(100) NOT NULL,
    `ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `count` INTEGER(100) NOT NULL,
    `share` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `destruct` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `flag` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lang` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `encrypt` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pm_email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofs_users"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofs_users` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;
