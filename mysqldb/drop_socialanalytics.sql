# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          socialanalytics.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:34                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `email_reports` DROP FOREIGN KEY `users_email_reports`;

ALTER TABLE `facebook_logs` DROP FOREIGN KEY `facebook_users_facebook_logs`;

ALTER TABLE `facebook_logs` DROP FOREIGN KEY `users_facebook_logs`;

ALTER TABLE `favorites` DROP FOREIGN KEY `users_favorites`;

ALTER TABLE `instagram_logs` DROP FOREIGN KEY `instagram_users_instagram_logs`;

ALTER TABLE `instagram_logs` DROP FOREIGN KEY `users_instagram_logs`;

ALTER TABLE `instagram_media` DROP FOREIGN KEY `instagram_users_instagram_media`;

ALTER TABLE `instagram_media` DROP FOREIGN KEY `users_instagram_media`;

ALTER TABLE `payments` DROP FOREIGN KEY `users_payments`;

ALTER TABLE `settings` DROP FOREIGN KEY `email_reports_settings`;

ALTER TABLE `settings` DROP FOREIGN KEY `favorites_settings`;

ALTER TABLE `twitter_logs` DROP FOREIGN KEY `twitter_users_twitter_logs`;

ALTER TABLE `twitter_logs` DROP FOREIGN KEY `users_twitter_logs`;

ALTER TABLE `twitter_tweets` DROP FOREIGN KEY `twitter_users_twitter_tweets`;

ALTER TABLE `twitter_tweets` DROP FOREIGN KEY `users_twitter_tweets`;

ALTER TABLE `unlocked_reports` DROP FOREIGN KEY `users_unlocked_reports`;

ALTER TABLE `users` DROP FOREIGN KEY `email_reports_users`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `user_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `email_activation_code` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `lost_password_code` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `points` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `no_ads` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_reports` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "unlocked_reports"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `unlocked_reports` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `unlocked_reports` ALTER COLUMN `expiration_date` DROP DEFAULT;

ALTER TABLE `unlocked_reports` ALTER COLUMN `source` DROP DEFAULT;

ALTER TABLE `unlocked_reports` DROP PRIMARY KEY;

DROP TABLE `unlocked_reports`;

# ---------------------------------------------------------------------- #
# Drop table "twitter_tweets"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `twitter_tweets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `twitter_tweets` ALTER COLUMN `text` DROP DEFAULT;

ALTER TABLE `twitter_tweets` ALTER COLUMN `retweets` DROP DEFAULT;

ALTER TABLE `twitter_tweets` ALTER COLUMN `likes` DROP DEFAULT;

ALTER TABLE `twitter_tweets` DROP PRIMARY KEY;

DROP TABLE `twitter_tweets`;

# ---------------------------------------------------------------------- #
# Drop table "twitter_logs"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `twitter_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `twitter_logs` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `twitter_logs` DROP PRIMARY KEY;

DROP TABLE `twitter_logs`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `logo` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `favicon` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `time_zone` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_confirmation` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `recaptcha` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `smtp_encryption` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `smtp_auth` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_currency` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_paypal_client_id` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_paypal_secret` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_paypal_mode` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_stripe_publishable_key` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_stripe_secret_key` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_stripe_webhook_secret` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_unlock_report_price` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_unlock_report_time` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_no_ads_price` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `store_user_default_points` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `report_ad` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `index_ad` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `instagram_check_interval` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `instagram_minimum_followers` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `instagram_calculator_media_count` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `cron_queries` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `cron_mode` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `cron_auto_add_missing_logs` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `instagram_login` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `admin_new_user_email_notification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `admin_new_payment_email_notification` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `directory_pagination` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `proxy` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `proxy_exclusive` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `proxy_timeout` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `proxy_failed_requests_pause` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `proxy_pause_duration` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_reports` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_reports_default` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_reports_frequency` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `email_reports_favorites` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `default_language` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `facebook_check_interval` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `facebook_minimum_likes` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `youtube_check_interval` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `youtube_minimum_subscribers` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `youtube_check_videos` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `twitter_check_interval` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `twitter_minimum_followers` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `twitter_check_tweets` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payments` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "instagram_media"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `instagram_media` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `instagram_media` DROP PRIMARY KEY;

DROP TABLE `instagram_media`;

# ---------------------------------------------------------------------- #
# Drop table "instagram_logs"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `instagram_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `instagram_logs` DROP PRIMARY KEY;

DROP TABLE `instagram_logs`;

# ---------------------------------------------------------------------- #
# Drop table "favorites"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `favorites` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `favorites` ALTER COLUMN `source` DROP DEFAULT;

ALTER TABLE `favorites` DROP PRIMARY KEY;

DROP TABLE `favorites`;

# ---------------------------------------------------------------------- #
# Drop table "facebook_logs"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `facebook_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `facebook_logs` DROP PRIMARY KEY;

DROP TABLE `facebook_logs`;

# ---------------------------------------------------------------------- #
# Drop table "email_reports"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_reports` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_reports` ALTER COLUMN `source` DROP DEFAULT;

ALTER TABLE `email_reports` DROP PRIMARY KEY;

DROP TABLE `email_reports`;

# ---------------------------------------------------------------------- #
# Drop table "youtube_videos"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `youtube_videos` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `youtube_videos` DROP PRIMARY KEY;

DROP TABLE `youtube_videos`;

# ---------------------------------------------------------------------- #
# Drop table "youtube_users"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `youtube_users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `youtube_users` ALTER COLUMN `uploads_playlist_id` DROP DEFAULT;

ALTER TABLE `youtube_users` ALTER COLUMN `is_demo` DROP DEFAULT;

ALTER TABLE `youtube_users` ALTER COLUMN `is_private` DROP DEFAULT;

ALTER TABLE `youtube_users` ALTER COLUMN `is_featured` DROP DEFAULT;

ALTER TABLE `youtube_users` DROP PRIMARY KEY;

DROP TABLE `youtube_users`;

# ---------------------------------------------------------------------- #
# Drop table "youtube_logs"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `youtube_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `youtube_logs` DROP PRIMARY KEY;

DROP TABLE `youtube_logs`;

# ---------------------------------------------------------------------- #
# Drop table "twitter_users"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `twitter_users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `twitter_users` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `twitter_users` ALTER COLUMN `full_name` DROP DEFAULT;

ALTER TABLE `twitter_users` ALTER COLUMN `is_private` DROP DEFAULT;

ALTER TABLE `twitter_users` ALTER COLUMN `is_verified` DROP DEFAULT;

ALTER TABLE `twitter_users` ALTER COLUMN `is_demo` DROP DEFAULT;

ALTER TABLE `twitter_users` ALTER COLUMN `is_featured` DROP DEFAULT;

ALTER TABLE `twitter_users` DROP PRIMARY KEY;

DROP TABLE `twitter_users`;

# ---------------------------------------------------------------------- #
# Drop table "proxies"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `proxies` MODIFY `proxy_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `proxies` ALTER COLUMN `method` DROP DEFAULT;

ALTER TABLE `proxies` ALTER COLUMN `failed_requests` DROP DEFAULT;

ALTER TABLE `proxies` ALTER COLUMN `successful_requests` DROP DEFAULT;

ALTER TABLE `proxies` ALTER COLUMN `total_failed_requests` DROP DEFAULT;

ALTER TABLE `proxies` ALTER COLUMN `total_successful_requests` DROP DEFAULT;

ALTER TABLE `proxies` DROP PRIMARY KEY;

DROP TABLE `proxies`;

# ---------------------------------------------------------------------- #
# Drop table "plugins"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `plugins` ALTER COLUMN `color` DROP DEFAULT;

ALTER TABLE `plugins` ALTER COLUMN `status` DROP DEFAULT;

DROP TABLE `plugins`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `page_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "instagram_users"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `instagram_users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `instagram_users` ALTER COLUMN `is_private` DROP DEFAULT;

ALTER TABLE `instagram_users` ALTER COLUMN `is_verified` DROP DEFAULT;

ALTER TABLE `instagram_users` ALTER COLUMN `average_engagement_rate` DROP DEFAULT;

ALTER TABLE `instagram_users` ALTER COLUMN `is_demo` DROP DEFAULT;

ALTER TABLE `instagram_users` ALTER COLUMN `is_featured` DROP DEFAULT;

ALTER TABLE `instagram_users` DROP PRIMARY KEY;

DROP TABLE `instagram_users`;

# ---------------------------------------------------------------------- #
# Drop table "facebook_users"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `facebook_users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `facebook_users` ALTER COLUMN `is_verified` DROP DEFAULT;

ALTER TABLE `facebook_users` ALTER COLUMN `is_demo` DROP DEFAULT;

ALTER TABLE `facebook_users` ALTER COLUMN `is_private` DROP DEFAULT;

ALTER TABLE `facebook_users` ALTER COLUMN `is_featured` DROP DEFAULT;

ALTER TABLE `facebook_users` DROP PRIMARY KEY;

DROP TABLE `facebook_users`;
