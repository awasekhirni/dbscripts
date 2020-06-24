# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          mysqlhackerrank_development.dez                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:03                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "active_admin_comments"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `active_admin_comments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `namespace` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `resource_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `resource_id` BIGINT(20),
    `author_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `author_id` BIGINT(20),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_active_admin_comments_on_author_type_and_author_id` ON `active_admin_comments` (`author_type`,`author_id`);

CREATE INDEX `index_active_admin_comments_on_namespace` ON `active_admin_comments` (`namespace`);

CREATE INDEX `index_active_admin_comments_on_resource_type_and_resource_id` ON `active_admin_comments` (`resource_type`,`resource_id`);

# ---------------------------------------------------------------------- #
# Add table "active_storage_blobs"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `active_storage_blobs` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `filename` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `content_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `metadata` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `byte_size` BIGINT(20) NOT NULL,
    `checksum` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_active_storage_blobs_on_key` ON `active_storage_blobs` (`key`);

# ---------------------------------------------------------------------- #
# Add table "admin_users"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reset_password_sent_at` DATETIME,
    `remember_created_at` DATETIME,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_admin_users_on_email` ON `admin_users` (`email`);

CREATE UNIQUE INDEX `index_admin_users_on_reset_password_token` ON `admin_users` (`reset_password_token`);

# ---------------------------------------------------------------------- #
# Add table "ar_internal_metadata"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ar_internal_metadata` (
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`key`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "category_posts"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `category_posts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "groupchallenges"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `groupchallenges` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `level` INTEGER(11),
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `suffix` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`version`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reset_password_sent_at` DATETIME,
    `remember_created_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_users_on_email` ON `users` (`email`);

CREATE UNIQUE INDEX `index_users_on_reset_password_token` ON `users` (`reset_password_token`);

# ---------------------------------------------------------------------- #
# Add table "active_storage_attachments"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `active_storage_attachments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `record_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `record_id` BIGINT(20) NOT NULL,
    `blob_id` BIGINT(20) NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_active_storage_attachments_uniqueness` ON `active_storage_attachments` (`record_type`,`record_id`,`name`,`blob_id`);

CREATE INDEX `index_active_storage_attachments_on_blob_id` ON `active_storage_attachments` (`blob_id`);

# ---------------------------------------------------------------------- #
# Add table "challenges"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `challenges` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `question` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `groupchallenge_id` BIGINT(20),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_challenges_on_groupchallenge_id` ON `challenges` (`groupchallenge_id`);

# ---------------------------------------------------------------------- #
# Add table "defaultcodes"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `defaultcodes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `challenge_id` BIGINT(20),
    `language_id` BIGINT(20),
    `code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_defaultcodes_on_challenge_id` ON `defaultcodes` (`challenge_id`);

CREATE INDEX `index_defaultcodes_on_language_id` ON `defaultcodes` (`language_id`);

# ---------------------------------------------------------------------- #
# Add table "passlevels"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `passlevels` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20),
    `challenge_id` BIGINT(20),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_passlevels_on_challenge_id` ON `passlevels` (`challenge_id`);

CREATE INDEX `index_passlevels_on_user_id` ON `passlevels` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20),
    `category_post_id` BIGINT(20),
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_posts_on_category_post_id` ON `posts` (`category_post_id`);

CREATE INDEX `index_posts_on_user_id` ON `posts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "successcodes"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `successcodes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20),
    `challenge_id` BIGINT(20),
    `language_id` BIGINT(20),
    `code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_successcodes_on_challenge_id` ON `successcodes` (`challenge_id`);

CREATE INDEX `index_successcodes_on_language_id` ON `successcodes` (`language_id`);

CREATE INDEX `index_successcodes_on_user_id` ON `successcodes` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "testcases"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `testcases` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `input` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `output` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `challenge_id` BIGINT(20),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_testcases_on_challenge_id` ON `testcases` (`challenge_id`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20),
    `post_id` BIGINT(20),
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_comments_on_post_id` ON `comments` (`post_id`);

CREATE INDEX `index_comments_on_user_id` ON `comments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `active_storage_attachments` ADD CONSTRAINT `fk_rails_c3b3935057` 
    FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `challenges` ADD CONSTRAINT `fk_rails_0892ec999f` 
    FOREIGN KEY (`groupchallenge_id`) REFERENCES `groupchallenges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comments` ADD CONSTRAINT `fk_rails_03de2dc08c` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comments` ADD CONSTRAINT `fk_rails_2fd19c0db7` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `defaultcodes` ADD CONSTRAINT `fk_rails_14d7e9f4de` 
    FOREIGN KEY (`challenge_id`) REFERENCES `challenges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `defaultcodes` ADD CONSTRAINT `fk_rails_d95c31c88f` 
    FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `passlevels` ADD CONSTRAINT `fk_rails_83037f80c1` 
    FOREIGN KEY (`challenge_id`) REFERENCES `challenges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `passlevels` ADD CONSTRAINT `fk_rails_e9addb1823` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `posts` ADD CONSTRAINT `fk_rails_0c7023927a` 
    FOREIGN KEY (`category_post_id`) REFERENCES `category_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `posts` ADD CONSTRAINT `fk_rails_5b5ddfd518` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `successcodes` ADD CONSTRAINT `fk_rails_759748483f` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `successcodes` ADD CONSTRAINT `fk_rails_c8d6bf81fe` 
    FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `successcodes` ADD CONSTRAINT `fk_rails_f68efa20ff` 
    FOREIGN KEY (`challenge_id`) REFERENCES `challenges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `testcases` ADD CONSTRAINT `fk_rails_4712fe126d` 
    FOREIGN KEY (`challenge_id`) REFERENCES `challenges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
