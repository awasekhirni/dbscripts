# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          fbclone.dez                                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:25                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "accounts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `about` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `avatar_id` INTEGER(11) NOT NULL DEFAULT 0,
    `cover_id` INTEGER(11) NOT NULL DEFAULT 0,
    `cover_position` INTEGER(5) NOT NULL DEFAULT 0,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email_verification_key` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email_verified` INTEGER(1) NOT NULL DEFAULT 0,
    `language` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `last_logged` INTEGER(12) NOT NULL,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL DEFAULT 0,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `timezone` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `type` ENUM('user','page','group') COLLATE utf8_unicode_ci NOT NULL,
    `username` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `verified` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `email` ON `accounts` (`email`);

CREATE UNIQUE INDEX `username` ON `accounts` (`username`);

CREATE INDEX `name` ON `accounts` (`name`);

CREATE INDEX `password` ON `accounts` (`password`);

CREATE INDEX `type` ON `accounts` (`type`);

# ---------------------------------------------------------------------- #
# Add table "announcements"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `announcements` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "configurations"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `configurations` (
    `ad_place_hashtag` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_place_home` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_place_messages` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_place_search` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ad_place_timeline` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `admin_password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'e9aada4fd797d65069187d7a961691cc',
    `admin_username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'marvelkit',
    `captcha` INTEGER(1) NOT NULL DEFAULT 0,
    `censored_words` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'racist,retard',
    `chat` INTEGER(1) NOT NULL DEFAULT 0,
    `comment_character_limit` INTEGER(10) NOT NULL DEFAULT 0,
    `email` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no-reply@website.com',
    `email_verification` INTEGER(1) NOT NULL DEFAULT 0,
    `friends` INTEGER(1) NOT NULL DEFAULT 0,
    `language` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english',
    `message_character_limit` INTEGER(10) NOT NULL DEFAULT 0,
    `reg_req_about` INTEGER(1) NOT NULL DEFAULT 0,
    `reg_req_birthday` INTEGER(1) NOT NULL DEFAULT 0,
    `reg_req_currentcity` INTEGER(1) NOT NULL DEFAULT 0,
    `reg_req_hometown` INTEGER(1) NOT NULL DEFAULT 0,
    `reset_time` INTEGER(12) NOT NULL,
    `site_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Site Name',
    `site_title` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Site Title',
    `smooth_links` INTEGER(1) NOT NULL DEFAULT 0,
    `story_character_limit` INTEGER(10) NOT NULL DEFAULT 0,
    `theme` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
)
ENGINE = INNODB;

CREATE INDEX `admin_password_2` ON `configurations` (`admin_password`,`admin_username`,`captcha`,`censored_words`,`chat`);

CREATE INDEX `comment_character_limit_2` ON `configurations` (`comment_character_limit`,`email`,`email_verification`,`friends`,`language`,`message_character_limit`);

CREATE INDEX `reg_req_about_2` ON `configurations` (`reg_req_about`,`reg_req_birthday`,`reg_req_currentcity`,`reg_req_hometown`,`site_name`,`site_title`,`smooth_links`,`story_character_limit`,`theme`);

# ---------------------------------------------------------------------- #
# Add table "followers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `followers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `is_chatting` INTEGER(1) NOT NULL DEFAULT 0,
    `follower_id` INTEGER(11) NOT NULL,
    `following_id` INTEGER(11) NOT NULL,
    `time` INTEGER(255) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `follower_id` ON `followers` (`follower_id`);

CREATE INDEX `following_id` ON `followers` (`following_id`);

# ---------------------------------------------------------------------- #
# Add table "group_admins"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `group_admins` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL,
    `admin_id` INTEGER(11) NOT NULL,
    `group_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `admin_id` ON `group_admins` (`admin_id`);

CREATE INDEX `group_id` ON `group_admins` (`group_id`);

# ---------------------------------------------------------------------- #
# Add table "groups"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `groups` (
    `id` INTEGER(11) NOT NULL,
    `add_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'members',
    `group_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
    `timeline_post_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'members'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "hashtags"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `hashtags` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `hash` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `tag` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `last_trend_time` INTEGER(12) NOT NULL,
    `trend_use_num` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `hash` ON `hashtags` (`hash`);

CREATE INDEX `tag` ON `hashtags` (`tag`);

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` INTEGER(255) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `keyword` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "page_categories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `page_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `category_id` ON `page_categories` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(11) NOT NULL,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `awards` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `message_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `products` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `timeline_post_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `website` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "plugins"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `plugins` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `folder` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "story_music_uploads"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `story_music_uploads` (
    `id` INTEGER(255) NOT NULL AUTO_INCREMENT,
    `story_id` INTEGER(255) NOT NULL,
    `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `story_id` ON `story_music_uploads` (`story_id`);

# ---------------------------------------------------------------------- #
# Add table "story_video_uploads"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `story_video_uploads` (
    `id` INTEGER(255) NOT NULL AUTO_INCREMENT,
    `story_id` INTEGER(255) NOT NULL,
    `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `story_id` ON `story_video_uploads` (`story_id`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL,
    `birthday` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1-1-1990',
    `comment_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `confirm_followers` INTEGER(1) NOT NULL DEFAULT 0,
    `current_city` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `follow_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `gender` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
    `hometown` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `mailnotif_comment` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_postlike` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_postshare` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_follow` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_friendrequests` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_groupjoined` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_message` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_pagelike` TINYINT(1) NOT NULL DEFAULT 1,
    `mailnotif_timelinepost` TINYINT(1) NOT NULL DEFAULT 1,
    `message_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `post_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    `timeline_post_privacy` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'everyone',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "announcement_views"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `announcement_views` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER(11),
    `announcement_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `account_id` ON `announcement_views` (`account_id`);

CREATE INDEX `announcement_id` ON `announcement_views` (`announcement_id`);

# ---------------------------------------------------------------------- #
# Add table "page_admins"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `page_admins` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL,
    `admin_id` INTEGER(11) NOT NULL,
    `page_id` INTEGER(11) NOT NULL,
    `role` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `admin_id` ON `page_admins` (`admin_id`);

CREATE INDEX `page_id` ON `page_admins` (`page_id`);

# ---------------------------------------------------------------------- #
# Add table "commentlikes"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `commentlikes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `post_id` INTEGER(11) NOT NULL,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `commentlikes` (`post_id`);

CREATE INDEX `timeline_id` ON `commentlikes` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `media_id` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `comments` (`post_id`);

CREATE INDEX `timeline_id` ON `comments` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "media"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `media` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `album_id` INTEGER(11) NOT NULL DEFAULT 0,
    `descr` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `extension` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `temp` INTEGER(1) NOT NULL DEFAULT 1,
    `timeline_id` INTEGER(11) NOT NULL,
    `type` ENUM('photo','album') COLLATE utf8_unicode_ci NOT NULL,
    `url` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `media_id` INTEGER(11) NOT NULL DEFAULT 0,
    `recipient_id` INTEGER(11) NOT NULL DEFAULT 0,
    `seen` INTEGER(12) NOT NULL DEFAULT 0,
    `text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `recipient_id` ON `messages` (`recipient_id`);

CREATE INDEX `seen` ON `messages` (`seen`);

CREATE INDEX `timeline_id` ON `messages` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL,
    `notifier_id` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `seen` INTEGER(12) NOT NULL,
    `text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `timeline_id` INTEGER(11) NOT NULL,
    `type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
    `url` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `seen` ON `notifications` (`seen`);

CREATE INDEX `timeline_id` ON `notifications` (`timeline_id`);

CREATE INDEX `type` ON `notifications` (`type`);

# ---------------------------------------------------------------------- #
# Add table "postfollows"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `postfollows` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `post_id` INTEGER(11) NOT NULL DEFAULT 0,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `postfollows` (`post_id`);

CREATE INDEX `timeline_id` ON `postfollows` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "postlikes"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `postlikes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `post_id` INTEGER(11) NOT NULL DEFAULT 0,
    `reaction` VARCHAR(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'like',
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `postlikes` (`post_id`);

CREATE INDEX `timeline_id` ON `postlikes` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `activity_text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `google_map_name` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `hidden` INTEGER(1) NOT NULL DEFAULT 0,
    `link_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `link_url` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `media_id` INTEGER(11) NOT NULL DEFAULT 0,
    `post_id` INTEGER(11) NOT NULL DEFAULT 0,
    `privacy` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'public',
    `recipient_id` INTEGER(11) NOT NULL DEFAULT 0,
    `shared` INTEGER(1) NOT NULL DEFAULT 0,
    `soundcloud_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `soundcloud_uri` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `text` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `youtube_video_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `youtube_title` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `recipient_id` ON `posts` (`recipient_id`);

CREATE INDEX `timeline_id` ON `posts` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "postshares"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `postshares` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL DEFAULT 0,
    `post_id` INTEGER(11) NOT NULL DEFAULT 0,
    `time` INTEGER(12) NOT NULL,
    `timeline_id` INTEGER(11) NOT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `postshares` (`post_id`);

CREATE INDEX `timeline_id` ON `postshares` (`timeline_id`);

# ---------------------------------------------------------------------- #
# Add table "reports"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reports` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `active` INTEGER(1) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `reporter_id` INTEGER(11) NOT NULL,
    `status` INTEGER(1) NOT NULL DEFAULT 0,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `type` ENUM('story','comment') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'story',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `post_id` ON `reports` (`post_id`);

CREATE INDEX `reporter_id` ON `reports` (`reporter_id`);

CREATE INDEX `type` ON `reports` (`type`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `announcement_views` ADD CONSTRAINT `accounts_announcement_views` 
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

ALTER TABLE `announcement_views` ADD CONSTRAINT `announcements_announcement_views` 
    FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`);

ALTER TABLE `commentlikes` ADD CONSTRAINT `posts_commentlikes` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `media_comments` 
    FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `posts_comments` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `media` ADD CONSTRAINT `posts_media` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `messages` ADD CONSTRAINT `media_messages` 
    FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `posts_notifications` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `page_admins` ADD CONSTRAINT `pages_page_admins` 
    FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

ALTER TABLE `postfollows` ADD CONSTRAINT `posts_postfollows` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `postlikes` ADD CONSTRAINT `posts_postlikes` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `posts` ADD CONSTRAINT `media_posts` 
    FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

ALTER TABLE `postshares` ADD CONSTRAINT `posts_postshares` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `reports` ADD CONSTRAINT `posts_reports` 
    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `users` ADD CONSTRAINT `followers_users` 
    FOREIGN KEY (`confirm_followers`) REFERENCES `followers` (`id`);
