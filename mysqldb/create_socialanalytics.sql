# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          socialanalytics.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:34                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "facebook_users"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `facebook_users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `profile_picture_url` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `likes` INTEGER(11),
    `followers` INTEGER(11),
    `details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_verified` INTEGER(11) DEFAULT 0,
    `added_date` DATETIME,
    `last_check_date` DATETIME,
    `last_successful_check_date` DATETIME,
    `is_demo` INTEGER(11) DEFAULT 0,
    `is_private` INTEGER(11) DEFAULT 0,
    `is_featured` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `facebook_users_id_uindex` ON `facebook_users` (`id`);

CREATE UNIQUE INDEX `facebook_users_pk` ON `facebook_users` (`username`);

CREATE INDEX `username` ON `facebook_users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "instagram_users"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `instagram_users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `instagram_id` BIGINT(20),
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `full_name` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `website` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `followers` INTEGER(11),
    `following` INTEGER(11),
    `uploads` INTEGER(11),
    `added_date` DATETIME,
    `last_check_date` DATETIME,
    `last_successful_check_date` DATETIME,
    `profile_picture_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_private` INTEGER(11) DEFAULT 0,
    `is_verified` INTEGER(11) DEFAULT 0,
    `average_engagement_rate` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `details` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_demo` INTEGER(11) DEFAULT 0,
    `is_featured` INTEGER(11) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `instagram_users_id_uindex` ON `instagram_users` (`id`);

CREATE UNIQUE INDEX `instagram_users_pk` ON `instagram_users` (`instagram_id`);

CREATE UNIQUE INDEX `username_2` ON `instagram_users` (`username`);

CREATE INDEX `username` ON `instagram_users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `page_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `url` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `position` INTEGER(11) NOT NULL,
    PRIMARY KEY (`page_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "plugins"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `plugins` (
    `identifier` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'black',
    `status` INTEGER(11) DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `identifier` ON `plugins` (`identifier`);

# ---------------------------------------------------------------------- #
# Add table "proxies"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `proxies` (
    `proxy_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `address` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `port` INTEGER(11),
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `method` INTEGER(11) DEFAULT 0,
    `failed_requests` INTEGER(11) DEFAULT 0,
    `successful_requests` INTEGER(11) DEFAULT 0,
    `total_failed_requests` INTEGER(11) DEFAULT 0,
    `total_successful_requests` INTEGER(11) DEFAULT 0,
    `date` DATETIME,
    `last_date` DATETIME,
    PRIMARY KEY (`proxy_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `proxies_id_uindex` ON `proxies` (`proxy_id`);

# ---------------------------------------------------------------------- #
# Add table "twitter_users"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `twitter_users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `twitter_id` BIGINT(20) NOT NULL,
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `full_name` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `description` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `website` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `followers` INTEGER(11) NOT NULL,
    `following` INTEGER(11) NOT NULL,
    `tweets` INTEGER(11) NOT NULL,
    `likes` INTEGER(11) NOT NULL,
    `profile_picture_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_private` TINYINT(4) NOT NULL DEFAULT 0,
    `is_verified` TINYINT(4) NOT NULL DEFAULT 0,
    `details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `added_date` DATETIME NOT NULL,
    `last_check_date` DATETIME NOT NULL,
    `last_successful_check_date` DATETIME,
    `is_demo` TINYINT(4) NOT NULL DEFAULT 0,
    `is_featured` TINYINT(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `twitter_id_2` ON `twitter_users` (`twitter_id`);

CREATE UNIQUE INDEX `username_2` ON `twitter_users` (`username`);

CREATE INDEX `twitter_id` ON `twitter_users` (`twitter_id`);

CREATE INDEX `username` ON `twitter_users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "youtube_logs"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `youtube_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `youtube_user_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `youtube_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subscribers` BIGINT(20),
    `views` BIGINT(20),
    `videos` INTEGER(11),
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `youtube_logs_id_uindex` ON `youtube_logs` (`id`);

CREATE INDEX `youtube_user_id` ON `youtube_logs` (`youtube_user_id`);

CREATE INDEX `username` ON `youtube_logs` (`youtube_id`);

# ---------------------------------------------------------------------- #
# Add table "youtube_users"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `youtube_users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `youtube_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` VARCHAR(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `profile_picture_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subscribers` BIGINT(20),
    `views` BIGINT(20),
    `videos` INTEGER(11),
    `uploads_playlist_id` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `added_date` DATETIME,
    `last_check_date` DATETIME,
    `last_successful_check_date` DATETIME,
    `is_demo` INTEGER(11) DEFAULT 0,
    `is_private` INTEGER(11) DEFAULT 0,
    `is_featured` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `youtube_users_id_uindex` ON `youtube_users` (`id`);

CREATE UNIQUE INDEX `youtube_id` ON `youtube_users` (`youtube_id`);

CREATE INDEX `username` ON `youtube_users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "youtube_videos"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `youtube_videos` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `youtube_user_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `video_id` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `views` INTEGER(11),
    `likes` INTEGER(11),
    `dislikes` INTEGER(11),
    `comments` INTEGER(11),
    `thumbnail_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_date` DATETIME,
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `youtube_videos_id_uindex` ON `youtube_videos` (`id`);

CREATE UNIQUE INDEX `video_id` ON `youtube_videos` (`video_id`);

CREATE INDEX `youtube_user_id` ON `youtube_videos` (`youtube_user_id`);

# ---------------------------------------------------------------------- #
# Add table "email_reports"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_reports` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `source` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
    `source_user_id` INTEGER(11),
    `user_id` INTEGER(11),
    `status` ENUM('SUCCESS','FAILED') COLLATE utf8mb4_unicode_ci,
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `email_reports_id_uindex` ON `email_reports` (`id`);

# ---------------------------------------------------------------------- #
# Add table "facebook_logs"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `facebook_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `facebook_user_id` INTEGER(11),
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `likes` INTEGER(11),
    `followers` INTEGER(11),
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `facebook_logs_id_uindex` ON `facebook_logs` (`id`);

CREATE INDEX `facebook_user_id` ON `facebook_logs` (`facebook_user_id`);

CREATE INDEX `username` ON `facebook_logs` (`username`);

# ---------------------------------------------------------------------- #
# Add table "favorites"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorites` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `source_user_id` INTEGER(11),
    `source` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `favorites_id_uindex` ON `favorites` (`id`);

# ---------------------------------------------------------------------- #
# Add table "instagram_logs"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `instagram_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `instagram_user_id` INTEGER(11),
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `followers` INTEGER(11),
    `following` INTEGER(11),
    `uploads` INTEGER(11),
    `average_engagement_rate` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `instagram_logs_id_uindex` ON `instagram_logs` (`id`);

CREATE INDEX `username` ON `instagram_logs` (`username`);

CREATE INDEX `instagram_logs_instagram_user_id_index` ON `instagram_logs` (`instagram_user_id`);

# ---------------------------------------------------------------------- #
# Add table "instagram_media"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `instagram_media` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `media_id` BIGINT(20),
    `instagram_user_id` INTEGER(11),
    `shortcode` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_date` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `caption` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `comments` INTEGER(11),
    `likes` BIGINT(20),
    `media_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `media_image_url` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` ENUM('VIDEO','IMAGE','SIDECAR','CAROUSEL') COLLATE utf8mb4_unicode_ci,
    `mentions` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `hashtags` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATETIME,
    `last_check_date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `instagram_media_id_uindex` ON `instagram_media` (`id`);

CREATE UNIQUE INDEX `instagram_media_pk` ON `instagram_media` (`media_id`);

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `type` ENUM('PAYPAL','STRIPE') COLLATE utf8mb4_unicode_ci,
    `payment_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payer_id` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `amount` FLOAT,
    `currency` VARCHAR(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(11) NOT NULL,
    `title` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `logo` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `favicon` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `time_zone` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/New_York',
    `meta_description` VARCHAR(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_keywords` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `analytics_code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_confirmation` INTEGER(11) NOT NULL DEFAULT 0,
    `recaptcha` INTEGER(11) NOT NULL DEFAULT 1,
    `public_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `private_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook_login` INTEGER(11) NOT NULL,
    `facebook_app_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook_app_secret` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_host` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_port` INTEGER(11) NOT NULL,
    `smtp_encryption` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `smtp_auth` INTEGER(11) DEFAULT 0,
    `smtp_user` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_pass` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_from` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `twitter` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `youtube` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instagram` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `store_currency` VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
    `store_paypal_client_id` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `store_paypal_secret` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `store_paypal_mode` ENUM('sandbox','live') COLLATE utf8mb4_unicode_ci DEFAULT 'live',
    `store_stripe_publishable_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `store_stripe_secret_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `store_stripe_webhook_secret` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `store_unlock_report_price` FLOAT DEFAULT 1,
    `store_unlock_report_time` INTEGER(11) DEFAULT 0,
    `store_no_ads_price` FLOAT NOT NULL DEFAULT 5,
    `store_user_default_points` INTEGER(11) DEFAULT 0,
    `report_ad` VARCHAR(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `index_ad` VARCHAR(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `account_sidebar_ad` VARCHAR(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instagram_check_interval` INTEGER(11) DEFAULT 1,
    `instagram_minimum_followers` INTEGER(11) DEFAULT 5,
    `instagram_calculator_media_count` INTEGER(11) DEFAULT 10,
    `cron_queries` INTEGER(11) DEFAULT 1,
    `cron_mode` ENUM('ACTIVE','ALL') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
    `cron_auto_add_missing_logs` INTEGER(11) DEFAULT 0,
    `instagram_login` INTEGER(11) DEFAULT 0,
    `instagram_client_id` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instagram_client_secret` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `activation_email_template` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `lost_password_email_template` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `credentials_email_template` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `admin_email_notification_emails` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `admin_new_user_email_notification` INTEGER(11) DEFAULT 0,
    `admin_new_payment_email_notification` INTEGER(11) DEFAULT 0,
    `directory` ENUM('ALL','LOGGED_IN','DISABLED') COLLATE utf8mb4_unicode_ci,
    `directory_pagination` INTEGER(11) DEFAULT 10,
    `proxy` INTEGER(11) DEFAULT 0,
    `proxy_exclusive` INTEGER(11) DEFAULT 0,
    `proxy_timeout` INTEGER(11) DEFAULT 15,
    `proxy_failed_requests_pause` INTEGER(11) DEFAULT 3,
    `proxy_pause_duration` INTEGER(11) DEFAULT 1440,
    `email_reports` INTEGER(11) DEFAULT 0,
    `email_reports_default` INTEGER(11) DEFAULT 0,
    `email_reports_frequency` ENUM('DAILY','WEEKLY','MONTHLY') COLLATE utf8mb4_unicode_ci DEFAULT 'WEEKLY',
    `email_reports_favorites` INTEGER(11) DEFAULT 0,
    `default_language` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'english',
    `facebook_check_interval` INTEGER(11) DEFAULT 24,
    `facebook_minimum_likes` INTEGER(11) DEFAULT 1000,
    `youtube_api_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `youtube_check_interval` INTEGER(11) DEFAULT 24,
    `youtube_minimum_subscribers` INTEGER(11) DEFAULT 100,
    `youtube_check_videos` INTEGER(11) DEFAULT 10,
    `twitter_consumer_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_secret_key` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_oauth_token` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_oauth_token_secret` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_check_interval` INTEGER(11) DEFAULT 24,
    `twitter_minimum_followers` INTEGER(11) DEFAULT 100,
    `twitter_check_tweets` INTEGER(11) DEFAULT 15,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "twitter_logs"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `twitter_logs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `twitter_user_id` INTEGER(11) NOT NULL,
    `username` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `followers` INTEGER(11) NOT NULL,
    `following` INTEGER(11) NOT NULL,
    `tweets` INTEGER(11) NOT NULL,
    `likes` INTEGER(11) NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `facebook_logs_id_uindex` ON `twitter_logs` (`id`);

CREATE INDEX `facebook_user_id` ON `twitter_logs` (`twitter_user_id`);

CREATE INDEX `username` ON `twitter_logs` (`username`);

# ---------------------------------------------------------------------- #
# Add table "twitter_tweets"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `twitter_tweets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `twitter_user_id` INTEGER(11) NOT NULL,
    `tweet_id` BIGINT(20) NOT NULL,
    `text` VARCHAR(280) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `source` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `language` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `retweets` INTEGER(11) NOT NULL DEFAULT 0,
    `likes` INTEGER(11) NOT NULL DEFAULT 0,
    `details` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_date` DATETIME NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `tweet_id` ON `twitter_tweets` (`tweet_id`);

CREATE INDEX `twitter_user_id` ON `twitter_tweets` (`twitter_user_id`);

# ---------------------------------------------------------------------- #
# Add table "unlocked_reports"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `unlocked_reports` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `source_user_id` INTEGER(11),
    `date` DATETIME,
    `expiration_date` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `source` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `unlocked_reports_id_uindex` ON `unlocked_reports` (`id`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook_id` BIGINT(20),
    `token_code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_activation_code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `lost_password_code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `type` INTEGER(11) NOT NULL DEFAULT 0,
    `active` INTEGER(11) NOT NULL DEFAULT 0,
    `date` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `last_activity` DATETIME,
    `points` FLOAT NOT NULL DEFAULT 15,
    `no_ads` INTEGER(11) DEFAULT 0,
    `instagram_id` BIGINT(11),
    `api_key` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_reports` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`user_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `email_reports` ADD CONSTRAINT `users_email_reports` 
    FOREIGN KEY (`source_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `facebook_logs` ADD CONSTRAINT `facebook_users_facebook_logs` 
    FOREIGN KEY (`facebook_user_id`) REFERENCES `facebook_users` (`id`);

ALTER TABLE `facebook_logs` ADD CONSTRAINT `users_facebook_logs` 
    FOREIGN KEY (`facebook_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `favorites` ADD CONSTRAINT `users_favorites` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `instagram_logs` ADD CONSTRAINT `instagram_users_instagram_logs` 
    FOREIGN KEY (`instagram_user_id`) REFERENCES `instagram_users` (`id`);

ALTER TABLE `instagram_logs` ADD CONSTRAINT `users_instagram_logs` 
    FOREIGN KEY (`instagram_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `instagram_media` ADD CONSTRAINT `instagram_users_instagram_media` 
    FOREIGN KEY (`instagram_user_id`) REFERENCES `instagram_users` (`id`);

ALTER TABLE `instagram_media` ADD CONSTRAINT `users_instagram_media` 
    FOREIGN KEY (`instagram_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `payments` ADD CONSTRAINT `users_payments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `settings` ADD CONSTRAINT `email_reports_settings` 
    FOREIGN KEY (`email_reports`) REFERENCES `email_reports` (`id`);

ALTER TABLE `settings` ADD CONSTRAINT `favorites_settings` 
    FOREIGN KEY (`email_reports_favorites`) REFERENCES `favorites` (`id`);

ALTER TABLE `twitter_logs` ADD CONSTRAINT `twitter_users_twitter_logs` 
    FOREIGN KEY (`twitter_user_id`) REFERENCES `twitter_users` (`id`);

ALTER TABLE `twitter_logs` ADD CONSTRAINT `users_twitter_logs` 
    FOREIGN KEY (`twitter_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `twitter_tweets` ADD CONSTRAINT `twitter_users_twitter_tweets` 
    FOREIGN KEY (`twitter_user_id`) REFERENCES `twitter_users` (`id`);

ALTER TABLE `twitter_tweets` ADD CONSTRAINT `users_twitter_tweets` 
    FOREIGN KEY (`twitter_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `unlocked_reports` ADD CONSTRAINT `users_unlocked_reports` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `users` ADD CONSTRAINT `email_reports_users` 
    FOREIGN KEY (`email_reports`) REFERENCES `email_reports` (`id`);
