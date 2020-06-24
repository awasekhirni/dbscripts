# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          myglipboard_development.dez                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:00                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

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
# Add table "articles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `articles` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` INTEGER(11),
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` INTEGER(11) DEFAULT 0,
    `feature` INTEGER(11) DEFAULT 0,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `blog` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_articles_on_slug` ON `articles` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "blogs"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `blogs` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` INTEGER(11),
    `guest_id` INTEGER(11),
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `status` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `group_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `icon` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_categories_on_slug` ON `categories` (`slug`);

CREATE INDEX `index_categories_on_group_id` ON `categories` (`group_id`);

# ---------------------------------------------------------------------- #
# Add table "ckeditor_assets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `ckeditor_assets` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `data_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `data_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `data_file_size` INTEGER(11),
    `type` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `width` INTEGER(11),
    `height` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_ckeditor_assets_on_type` ON `ckeditor_assets` (`type`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `commentable_id` INTEGER(11),
    `commentable_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` INTEGER(11),
    `youtube` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_comments_on_commentable_id_and_commentable_type` ON `comments` (`commentable_id`,`commentable_type`);

CREATE INDEX `index_comments_on_user_id` ON `comments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "conversations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `conversations` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `sender_id` INTEGER(11),
    `receiver_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_conversations_on_sender_id_and_receiver_id` ON `conversations` (`sender_id`,`receiver_id`);

CREATE INDEX `index_conversations_on_receiver_id` ON `conversations` (`receiver_id`);

CREATE INDEX `index_conversations_on_sender_id` ON `conversations` (`sender_id`);

# ---------------------------------------------------------------------- #
# Add table "episodes"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `episodes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `podcast_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `audio` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_episodes_on_slug` ON `episodes` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "glips"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `glips` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` INTEGER(11),
    `completion_criteria` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` INTEGER(11) DEFAULT 0,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `verified` INTEGER(11) DEFAULT 0,
    `deadline` DATETIME,
    `parent_id` INTEGER(11),
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `active` INTEGER(11) DEFAULT 0,
    `privacy` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_glips_on_slug` ON `glips` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "groups"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `groups` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `creator_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `picture` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `icon` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `banner` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `banner_link` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `side_ad` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `side_ad_link` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "logs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `logs` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `glip_id` INTEGER(11),
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `status` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_logs_on_user_id` ON `logs` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "memberships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `memberships` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `group_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `role` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_memberships_on_group_id_and_user_id` ON `memberships` (`group_id`,`user_id`);

CREATE INDEX `index_memberships_on_group_id` ON `memberships` (`group_id`);

CREATE INDEX `index_memberships_on_user_id` ON `memberships` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "mentorships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `mentorships` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `article_id` INTEGER(11),
    `glip_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_mentorships_on_article_id_and_glip_id` ON `mentorships` (`article_id`,`glip_id`);

CREATE INDEX `index_mentorships_on_article_id` ON `mentorships` (`article_id`);

CREATE INDEX `index_mentorships_on_glip_id` ON `mentorships` (`glip_id`);

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `conversation_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `read` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_messages_on_conversation_id` ON `messages` (`conversation_id`);

CREATE INDEX `index_messages_on_user_id` ON `messages` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "milestones"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `milestones` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `glip_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `completed_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_milestones_on_glip_id` ON `milestones` (`glip_id`);

# ---------------------------------------------------------------------- #
# Add table "notations"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `notations` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `comment_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `recipient_id` INTEGER(11),
    `notified_by_id` INTEGER(11),
    `glip_id` INTEGER(11),
    `article_id` INTEGER(11),
    `group_id` INTEGER(11),
    `post_id` INTEGER(11),
    `comment_id` INTEGER(11),
    `notation_id` INTEGER(11),
    `response_id` INTEGER(11),
    `remark_id` INTEGER(11),
    `conversation_id` INTEGER(11),
    `message_id` INTEGER(11),
    `read` TINYINT(1) DEFAULT 0,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `notification_type` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_notifications_on_article_id` ON `notifications` (`article_id`);

CREATE INDEX `index_notifications_on_comment_id` ON `notifications` (`comment_id`);

CREATE INDEX `index_notifications_on_conversation_id` ON `notifications` (`conversation_id`);

CREATE INDEX `index_notifications_on_glip_id` ON `notifications` (`glip_id`);

CREATE INDEX `index_notifications_on_group_id` ON `notifications` (`group_id`);

CREATE INDEX `index_notifications_on_message_id` ON `notifications` (`message_id`);

CREATE INDEX `index_notifications_on_notation_id` ON `notifications` (`notation_id`);

CREATE INDEX `index_notifications_on_notified_by_id` ON `notifications` (`notified_by_id`);

CREATE INDEX `index_notifications_on_post_id` ON `notifications` (`post_id`);

CREATE INDEX `index_notifications_on_recipient_id` ON `notifications` (`recipient_id`);

CREATE INDEX `index_notifications_on_remark_id` ON `notifications` (`remark_id`);

CREATE INDEX `index_notifications_on_response_id` ON `notifications` (`response_id`);

# ---------------------------------------------------------------------- #
# Add table "participations"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `participations` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `glip_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_participations_on_glip_id_and_user_id` ON `participations` (`glip_id`,`user_id`);

CREATE INDEX `index_participations_on_glip_id` ON `participations` (`glip_id`);

CREATE INDEX `index_participations_on_user_id` ON `participations` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "podcasts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `podcasts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `group_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_podcasts_on_slug` ON `podcasts` (`slug`);

CREATE INDEX `index_podcasts_on_group_id` ON `podcasts` (`group_id`);

CREATE INDEX `index_podcasts_on_user_id` ON `podcasts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `group_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `category_id` INTEGER(11),
    `sticky` INTEGER(11) DEFAULT 0,
    `comments_disabled` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_posts_on_slug` ON `posts` (`slug`);

CREATE INDEX `index_posts_on_category_id` ON `posts` (`category_id`);

CREATE INDEX `index_posts_on_group_id` ON `posts` (`group_id`);

CREATE INDEX `index_posts_on_user_id` ON `posts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "relationships"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `relationships` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `follower_id` INTEGER(11),
    `followed_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_relationships_on_follower_id_and_followed_id` ON `relationships` (`follower_id`,`followed_id`);

CREATE INDEX `index_relationships_on_followed_id` ON `relationships` (`followed_id`);

CREATE INDEX `index_relationships_on_follower_id` ON `relationships` (`follower_id`);

# ---------------------------------------------------------------------- #
# Add table "remarks"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `remarks` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `response_id` INTEGER(11),
    `user_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "responses"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `responses` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `post_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` INTEGER(11),
    `subtitle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `youtube` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
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
# Add table "taggings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `taggings` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `tag_id` INTEGER(11),
    `taggable_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `taggable_id` INTEGER(11),
    `tagger_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tagger_id` INTEGER(11),
    `context` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `taggings_idx` ON `taggings` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`);

CREATE INDEX `index_taggings_on_context` ON `taggings` (`context`);

CREATE INDEX `index_taggings_on_tag_id` ON `taggings` (`tag_id`);

CREATE INDEX `index_taggings_on_taggable_id_and_taggable_type_and_context` ON `taggings` (`taggable_id`,`taggable_type`,`context`);

CREATE INDEX `taggings_idy` ON `taggings` (`taggable_id`,`taggable_type`,`tagger_id`,`context`);

CREATE INDEX `index_taggings_on_taggable_id` ON `taggings` (`taggable_id`);

CREATE INDEX `index_taggings_on_taggable_type` ON `taggings` (`taggable_type`);

CREATE INDEX `index_taggings_on_tagger_id_and_tagger_type` ON `taggings` (`tagger_id`,`tagger_type`);

CREATE INDEX `index_taggings_on_tagger_id` ON `taggings` (`tagger_id`);

# ---------------------------------------------------------------------- #
# Add table "tags"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tags` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `taggings_count` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_tags_on_name` ON `tags` (`name`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reset_password_sent_at` DATETIME,
    `remember_created_at` DATETIME,
    `sign_in_count` INTEGER(11) NOT NULL DEFAULT 0,
    `current_sign_in_at` DATETIME,
    `last_sign_in_at` DATETIME,
    `current_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `username` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `picture` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reputation` INTEGER(11) DEFAULT 0,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `confirmation_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `confirmed_at` DATETIME,
    `confirmation_sent_at` DATETIME,
    `unconfirmed_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `roles` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `bio` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `website` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `country` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `thumbnail` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `birthdate` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_users_on_email` ON `users` (`email`);

CREATE UNIQUE INDEX `index_users_on_confirmation_token` ON `users` (`confirmation_token`);

CREATE UNIQUE INDEX `index_users_on_reset_password_token` ON `users` (`reset_password_token`);

CREATE UNIQUE INDEX `index_users_on_slug` ON `users` (`slug`);

CREATE UNIQUE INDEX `index_users_on_username` ON `users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "votes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `votes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `votable_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `votable_id` INTEGER(11),
    `voter_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `voter_id` INTEGER(11),
    `vote_flag` TINYINT(1),
    `vote_scope` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `vote_weight` INTEGER(11),
    `created_at` DATETIME,
    `updated_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_votes_on_votable_id_and_votable_type_and_vote_scope` ON `votes` (`votable_id`,`votable_type`,`vote_scope`);

CREATE INDEX `index_votes_on_voter_id_and_voter_type_and_vote_scope` ON `votes` (`voter_id`,`voter_type`,`vote_scope`);
