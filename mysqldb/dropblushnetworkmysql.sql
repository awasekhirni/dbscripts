# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          blushsocialnetworkmysql.dez                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-17 17:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `ads_campaigns` DROP FOREIGN KEY `users_ads_campaigns`;

ALTER TABLE `ads_users_wallet_transactions` DROP FOREIGN KEY `blacklist_ads_users_wallet_transactions`;

ALTER TABLE `ads_users_wallet_transactions` DROP FOREIGN KEY `invitation_codes_ads_users_wallet_transactions`;

ALTER TABLE `ads_users_wallet_transactions` DROP FOREIGN KEY `users_ads_users_wallet_transactions`;

ALTER TABLE `affiliates_payments` DROP FOREIGN KEY `users_affiliates_payments`;

ALTER TABLE `announcements_users` DROP FOREIGN KEY `announcements_announcements_users`;

ALTER TABLE `announcements_users` DROP FOREIGN KEY `users_announcements_users`;

ALTER TABLE `bank_transfers` DROP FOREIGN KEY `packages_bank_transfers`;

ALTER TABLE `bank_transfers` DROP FOREIGN KEY `users_bank_transfers`;

ALTER TABLE `coinpayments_transactions` DROP FOREIGN KEY `users_coinpayments_transactions`;

ALTER TABLE `conversations` DROP FOREIGN KEY `conversations_messages_conversations`;

ALTER TABLE `conversations_calls_audio` DROP FOREIGN KEY `users_conversations_calls_audio`;

ALTER TABLE `conversations_calls_video` DROP FOREIGN KEY `users_conversations_calls_video`;

ALTER TABLE `conversations_messages` DROP FOREIGN KEY `conversations_conversations_messages`;

ALTER TABLE `conversations_messages` DROP FOREIGN KEY `users_conversations_messages`;

ALTER TABLE `conversations_users` DROP FOREIGN KEY `conversations_conversations_users`;

ALTER TABLE `conversations_users` DROP FOREIGN KEY `users_conversations_users`;

ALTER TABLE `custom_fields_values` DROP FOREIGN KEY `blacklist_custom_fields_values`;

ALTER TABLE `custom_fields_values` DROP FOREIGN KEY `custom_fields_custom_fields_values`;

ALTER TABLE `custom_fields_values` DROP FOREIGN KEY `invitation_codes_custom_fields_values`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `blogs_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `developers_apps_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `events_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `groups_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `market_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `pages_categories_developers_apps`;

ALTER TABLE `developers_apps` DROP FOREIGN KEY `users_developers_apps`;

ALTER TABLE `developers_apps_users` DROP FOREIGN KEY `developers_apps_developers_apps_users`;

ALTER TABLE `developers_apps_users` DROP FOREIGN KEY `users_developers_apps_users`;

ALTER TABLE `events_members` DROP FOREIGN KEY `events_events_members`;

ALTER TABLE `events_members` DROP FOREIGN KEY `users_events_members`;

ALTER TABLE `followings` DROP FOREIGN KEY `users_followings`;

ALTER TABLE `forums_replies` DROP FOREIGN KEY `forums_threads_forums_replies`;

ALTER TABLE `forums_replies` DROP FOREIGN KEY `users_forums_replies`;

ALTER TABLE `forums_threads` DROP FOREIGN KEY `forums_forums_threads`;

ALTER TABLE `forums_threads` DROP FOREIGN KEY `users_forums_threads`;

ALTER TABLE `games_players` DROP FOREIGN KEY `games_games_players`;

ALTER TABLE `games_players` DROP FOREIGN KEY `users_games_players`;

ALTER TABLE `groups_admins` DROP FOREIGN KEY `users_groups_admins`;

ALTER TABLE `groups_members` DROP FOREIGN KEY `users_groups_members`;

ALTER TABLE `hashtags_posts` DROP FOREIGN KEY `hashtags_hashtags_posts`;

ALTER TABLE `hashtags_posts` DROP FOREIGN KEY `posts_hashtags_posts`;

ALTER TABLE `notifications` DROP FOREIGN KEY `users_notifications`;

ALTER TABLE `pages_admins` DROP FOREIGN KEY `pages_pages_admins`;

ALTER TABLE `pages_admins` DROP FOREIGN KEY `static_pages_pages_admins`;

ALTER TABLE `pages_admins` DROP FOREIGN KEY `users_pages_admins`;

ALTER TABLE `pages_invites` DROP FOREIGN KEY `pages_pages_invites`;

ALTER TABLE `pages_invites` DROP FOREIGN KEY `static_pages_pages_invites`;

ALTER TABLE `pages_invites` DROP FOREIGN KEY `users_pages_invites`;

ALTER TABLE `pages_likes` DROP FOREIGN KEY `pages_pages_likes`;

ALTER TABLE `pages_likes` DROP FOREIGN KEY `static_pages_pages_likes`;

ALTER TABLE `pages_likes` DROP FOREIGN KEY `users_pages_likes`;

ALTER TABLE `points_payments` DROP FOREIGN KEY `users_points_payments`;

ALTER TABLE `posts` DROP FOREIGN KEY `events_posts`;

ALTER TABLE `posts` DROP FOREIGN KEY `users_posts`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `blogs_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `developers_apps_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `events_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `groups_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `market_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `pages_categories_posts_articles`;

ALTER TABLE `posts_articles` DROP FOREIGN KEY `posts_posts_articles`;

ALTER TABLE `posts_audios` DROP FOREIGN KEY `posts_posts_audios`;

ALTER TABLE `posts_comments` DROP FOREIGN KEY `blacklist_posts_comments`;

ALTER TABLE `posts_comments` DROP FOREIGN KEY `invitation_codes_posts_comments`;

ALTER TABLE `posts_comments` DROP FOREIGN KEY `users_posts_comments`;

ALTER TABLE `posts_comments_reactions` DROP FOREIGN KEY `posts_comments_posts_comments_reactions`;

ALTER TABLE `posts_comments_reactions` DROP FOREIGN KEY `users_posts_comments_reactions`;

ALTER TABLE `posts_files` DROP FOREIGN KEY `posts_posts_files`;

ALTER TABLE `posts_hidden` DROP FOREIGN KEY `posts_posts_hidden`;

ALTER TABLE `posts_hidden` DROP FOREIGN KEY `users_posts_hidden`;

ALTER TABLE `posts_links` DROP FOREIGN KEY `posts_posts_links`;

ALTER TABLE `posts_media` DROP FOREIGN KEY `posts_posts_media`;

ALTER TABLE `posts_photos` DROP FOREIGN KEY `posts_posts_photos`;

ALTER TABLE `posts_photos` DROP FOREIGN KEY `posts_photos_albums_posts_photos`;

ALTER TABLE `posts_photos_albums` DROP FOREIGN KEY `events_posts_photos_albums`;

ALTER TABLE `posts_photos_albums` DROP FOREIGN KEY `users_posts_photos_albums`;

ALTER TABLE `posts_photos_reactions` DROP FOREIGN KEY `posts_photos_posts_photos_reactions`;

ALTER TABLE `posts_photos_reactions` DROP FOREIGN KEY `users_posts_photos_reactions`;

ALTER TABLE `posts_polls` DROP FOREIGN KEY `posts_posts_polls`;

ALTER TABLE `posts_polls_options` DROP FOREIGN KEY `posts_polls_posts_polls_options`;

ALTER TABLE `posts_polls_options_users` DROP FOREIGN KEY `posts_polls_posts_polls_options_users`;

ALTER TABLE `posts_polls_options_users` DROP FOREIGN KEY `posts_polls_options_posts_polls_options_users`;

ALTER TABLE `posts_polls_options_users` DROP FOREIGN KEY `system_options_posts_polls_options_users`;

ALTER TABLE `posts_polls_options_users` DROP FOREIGN KEY `users_posts_polls_options_users`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `blogs_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `developers_apps_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `events_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `groups_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `market_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `pages_categories_posts_products`;

ALTER TABLE `posts_products` DROP FOREIGN KEY `posts_posts_products`;

ALTER TABLE `posts_reactions` DROP FOREIGN KEY `posts_posts_reactions`;

ALTER TABLE `posts_reactions` DROP FOREIGN KEY `users_posts_reactions`;

ALTER TABLE `posts_saved` DROP FOREIGN KEY `posts_posts_saved`;

ALTER TABLE `posts_saved` DROP FOREIGN KEY `users_posts_saved`;

ALTER TABLE `posts_videos` DROP FOREIGN KEY `posts_posts_videos`;

ALTER TABLE `reports` DROP FOREIGN KEY `blacklist_reports`;

ALTER TABLE `reports` DROP FOREIGN KEY `invitation_codes_reports`;

ALTER TABLE `reports` DROP FOREIGN KEY `users_reports`;

ALTER TABLE `stories` DROP FOREIGN KEY `users_stories`;

ALTER TABLE `stories_media` DROP FOREIGN KEY `stories_stories_media`;

ALTER TABLE `users` DROP FOREIGN KEY `notifications_users`;

ALTER TABLE `users_blocks` DROP FOREIGN KEY `users_users_blocks`;

ALTER TABLE `users_gifts` DROP FOREIGN KEY `gifts_users_gifts`;

ALTER TABLE `users_gifts` DROP FOREIGN KEY `users_users_gifts`;

ALTER TABLE `users_invitations` DROP FOREIGN KEY `users_users_invitations`;

ALTER TABLE `users_pokes` DROP FOREIGN KEY `users_users_pokes`;

ALTER TABLE `users_searches` DROP FOREIGN KEY `blacklist_users_searches`;

ALTER TABLE `users_searches` DROP FOREIGN KEY `users_users_searches`;

ALTER TABLE `users_sessions` DROP FOREIGN KEY `users_users_sessions`;

ALTER TABLE `verification_requests` DROP FOREIGN KEY `blacklist_verification_requests`;

# ---------------------------------------------------------------------- #
# Drop table "users_sessions"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_sessions` MODIFY `session_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_sessions` DROP PRIMARY KEY;

DROP TABLE `users_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "users_searches"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_searches` MODIFY `log_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_searches` DROP PRIMARY KEY;

DROP TABLE `users_searches`;

# ---------------------------------------------------------------------- #
# Drop table "users_pokes"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_pokes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_pokes` DROP PRIMARY KEY;

DROP TABLE `users_pokes`;

# ---------------------------------------------------------------------- #
# Drop table "users_invitations"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_invitations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_invitations` DROP PRIMARY KEY;

DROP TABLE `users_invitations`;

# ---------------------------------------------------------------------- #
# Drop table "users_gifts"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_gifts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_gifts` DROP PRIMARY KEY;

DROP TABLE `users_gifts`;

# ---------------------------------------------------------------------- #
# Drop table "users_blocks"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_blocks` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_blocks` DROP PRIMARY KEY;

DROP TABLE `users_blocks`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `user_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `user_group` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_email_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_phone_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_two_factor_enabled` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_activated` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_reseted` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_subscribed` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_boosted_posts` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_boosted_pages` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_started` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_banned` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_requests_counter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_requests_lastid` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_messages_counter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_messages_lastid` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_notifications_counter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_live_notifications_lastid` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_latitude` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_longitude` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_last_seen` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_failed_login_count` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_chat_enabled` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_newsletter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_poke` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_gifts` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_wall` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_birthdate` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_relationship` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_basic` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_work` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_location` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_education` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_other` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_friends` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_photos` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_pages` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_groups` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_privacy_events` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_post_likes` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_post_comments` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_post_shares` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_wall_posts` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_mentions` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_profile_visits` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_friend_requests` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `facebook_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `google_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `twitter_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `instagram_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `linkedin_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `vkontakte_connected` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_affiliate_balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_wallet_balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_points` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `chat_sound` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `notifications_sound` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "stories_media"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stories_media` MODIFY `media_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stories_media` ALTER COLUMN `is_photo` DROP DEFAULT;

ALTER TABLE `stories_media` DROP PRIMARY KEY;

DROP TABLE `stories_media`;

# ---------------------------------------------------------------------- #
# Drop table "stories"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stories` MODIFY `story_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stories` DROP PRIMARY KEY;

DROP TABLE `stories`;

# ---------------------------------------------------------------------- #
# Drop table "reports"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reports` MODIFY `report_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reports` DROP PRIMARY KEY;

DROP TABLE `reports`;

# ---------------------------------------------------------------------- #
# Drop table "posts_videos"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_videos` MODIFY `video_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_videos` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `posts_videos` DROP PRIMARY KEY;

DROP TABLE `posts_videos`;

# ---------------------------------------------------------------------- #
# Drop table "posts_saved"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_saved` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_saved` DROP PRIMARY KEY;

DROP TABLE `posts_saved`;

# ---------------------------------------------------------------------- #
# Drop table "posts_reactions"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_reactions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_reactions` ALTER COLUMN `reaction` DROP DEFAULT;

ALTER TABLE `posts_reactions` DROP PRIMARY KEY;

DROP TABLE `posts_reactions`;

# ---------------------------------------------------------------------- #
# Drop table "posts_products"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_products` MODIFY `product_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_products` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `posts_products` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `posts_products` DROP PRIMARY KEY;

DROP TABLE `posts_products`;

# ---------------------------------------------------------------------- #
# Drop table "posts_polls_options_users"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_polls_options_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_polls_options_users` DROP PRIMARY KEY;

DROP TABLE `posts_polls_options_users`;

# ---------------------------------------------------------------------- #
# Drop table "posts_polls_options"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_polls_options` MODIFY `option_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_polls_options` DROP PRIMARY KEY;

DROP TABLE `posts_polls_options`;

# ---------------------------------------------------------------------- #
# Drop table "posts_polls"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_polls` MODIFY `poll_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_polls` ALTER COLUMN `votes` DROP DEFAULT;

ALTER TABLE `posts_polls` DROP PRIMARY KEY;

DROP TABLE `posts_polls`;

# ---------------------------------------------------------------------- #
# Drop table "posts_photos_reactions"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_photos_reactions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_photos_reactions` ALTER COLUMN `reaction` DROP DEFAULT;

ALTER TABLE `posts_photos_reactions` DROP PRIMARY KEY;

DROP TABLE `posts_photos_reactions`;

# ---------------------------------------------------------------------- #
# Drop table "posts_photos_albums"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_photos_albums` MODIFY `album_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_photos_albums` ALTER COLUMN `in_group` DROP DEFAULT;

ALTER TABLE `posts_photos_albums` ALTER COLUMN `in_event` DROP DEFAULT;

ALTER TABLE `posts_photos_albums` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `posts_photos_albums` DROP PRIMARY KEY;

DROP TABLE `posts_photos_albums`;

# ---------------------------------------------------------------------- #
# Drop table "posts_photos"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_photos` MODIFY `photo_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_photos` ALTER COLUMN `blur` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_like_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_love_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_haha_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_yay_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_wow_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_sad_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `reaction_angry_count` DROP DEFAULT;

ALTER TABLE `posts_photos` ALTER COLUMN `comments` DROP DEFAULT;

ALTER TABLE `posts_photos` DROP PRIMARY KEY;

DROP TABLE `posts_photos`;

# ---------------------------------------------------------------------- #
# Drop table "posts_media"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_media` MODIFY `media_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_media` DROP PRIMARY KEY;

DROP TABLE `posts_media`;

# ---------------------------------------------------------------------- #
# Drop table "posts_links"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_links` MODIFY `link_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_links` DROP PRIMARY KEY;

DROP TABLE `posts_links`;

# ---------------------------------------------------------------------- #
# Drop table "posts_hidden"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_hidden` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_hidden` DROP PRIMARY KEY;

DROP TABLE `posts_hidden`;

# ---------------------------------------------------------------------- #
# Drop table "posts_files"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_files` MODIFY `file_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_files` DROP PRIMARY KEY;

DROP TABLE `posts_files`;

# ---------------------------------------------------------------------- #
# Drop table "posts_comments_reactions"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_comments_reactions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_comments_reactions` ALTER COLUMN `reaction` DROP DEFAULT;

ALTER TABLE `posts_comments_reactions` DROP PRIMARY KEY;

DROP TABLE `posts_comments_reactions`;

# ---------------------------------------------------------------------- #
# Drop table "posts_comments"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_comments` MODIFY `comment_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_like_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_love_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_haha_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_yay_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_wow_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_sad_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `reaction_angry_count` DROP DEFAULT;

ALTER TABLE `posts_comments` ALTER COLUMN `replies` DROP DEFAULT;

ALTER TABLE `posts_comments` DROP PRIMARY KEY;

DROP TABLE `posts_comments`;

# ---------------------------------------------------------------------- #
# Drop table "posts_audios"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_audios` MODIFY `audio_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_audios` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `posts_audios` DROP PRIMARY KEY;

DROP TABLE `posts_audios`;

# ---------------------------------------------------------------------- #
# Drop table "posts_articles"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_articles` MODIFY `article_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_articles` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `posts_articles` DROP PRIMARY KEY;

DROP TABLE `posts_articles`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `post_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `in_group` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `group_approved` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `in_event` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `event_approved` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `in_wall` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `boosted` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `comments_disabled` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `is_hidden` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_like_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_love_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_haha_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_yay_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_wow_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_sad_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `reaction_angry_count` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `comments` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `shares` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "points_payments"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `points_payments` MODIFY `payment_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `points_payments` DROP PRIMARY KEY;

DROP TABLE `points_payments`;

# ---------------------------------------------------------------------- #
# Drop table "pages_likes"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages_likes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages_likes` DROP PRIMARY KEY;

DROP TABLE `pages_likes`;

# ---------------------------------------------------------------------- #
# Drop table "pages_invites"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages_invites` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages_invites` DROP PRIMARY KEY;

DROP TABLE `pages_invites`;

# ---------------------------------------------------------------------- #
# Drop table "pages_admins"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages_admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages_admins` DROP PRIMARY KEY;

DROP TABLE `pages_admins`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `notification_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `seen` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "hashtags_posts"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `hashtags_posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `hashtags_posts` DROP PRIMARY KEY;

DROP TABLE `hashtags_posts`;

# ---------------------------------------------------------------------- #
# Drop table "groups_members"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `groups_members` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `groups_members` ALTER COLUMN `approved` DROP DEFAULT;

ALTER TABLE `groups_members` DROP PRIMARY KEY;

DROP TABLE `groups_members`;

# ---------------------------------------------------------------------- #
# Drop table "groups_admins"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `groups_admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `groups_admins` DROP PRIMARY KEY;

DROP TABLE `groups_admins`;

# ---------------------------------------------------------------------- #
# Drop table "games_players"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `games_players` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `games_players` DROP PRIMARY KEY;

DROP TABLE `games_players`;

# ---------------------------------------------------------------------- #
# Drop table "forums_threads"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `forums_threads` MODIFY `thread_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `forums_threads` ALTER COLUMN `replies` DROP DEFAULT;

ALTER TABLE `forums_threads` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `forums_threads` DROP PRIMARY KEY;

DROP TABLE `forums_threads`;

# ---------------------------------------------------------------------- #
# Drop table "forums_replies"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `forums_replies` MODIFY `reply_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `forums_replies` DROP PRIMARY KEY;

DROP TABLE `forums_replies`;

# ---------------------------------------------------------------------- #
# Drop table "followings"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `followings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `followings` DROP PRIMARY KEY;

DROP TABLE `followings`;

# ---------------------------------------------------------------------- #
# Drop table "events_members"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `events_members` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `events_members` ALTER COLUMN `is_invited` DROP DEFAULT;

ALTER TABLE `events_members` ALTER COLUMN `is_interested` DROP DEFAULT;

ALTER TABLE `events_members` ALTER COLUMN `is_going` DROP DEFAULT;

ALTER TABLE `events_members` DROP PRIMARY KEY;

DROP TABLE `events_members`;

# ---------------------------------------------------------------------- #
# Drop table "developers_apps_users"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `developers_apps_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `developers_apps_users` DROP PRIMARY KEY;

DROP TABLE `developers_apps_users`;

# ---------------------------------------------------------------------- #
# Drop table "developers_apps"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `developers_apps` MODIFY `app_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `developers_apps` DROP PRIMARY KEY;

DROP TABLE `developers_apps`;

# ---------------------------------------------------------------------- #
# Drop table "conversations_users"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `conversations_users` ALTER COLUMN `seen` DROP DEFAULT;

ALTER TABLE `conversations_users` ALTER COLUMN `typing` DROP DEFAULT;

ALTER TABLE `conversations_users` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `conversations_users` DROP PRIMARY KEY;

DROP TABLE `conversations_users`;

# ---------------------------------------------------------------------- #
# Drop table "conversations_messages"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations_messages` MODIFY `message_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `conversations_messages` DROP PRIMARY KEY;

DROP TABLE `conversations_messages`;

# ---------------------------------------------------------------------- #
# Drop table "conversations_calls_video"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations_calls_video` MODIFY `call_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `conversations_calls_video` ALTER COLUMN `answered` DROP DEFAULT;

ALTER TABLE `conversations_calls_video` ALTER COLUMN `declined` DROP DEFAULT;

ALTER TABLE `conversations_calls_video` DROP PRIMARY KEY;

DROP TABLE `conversations_calls_video`;

# ---------------------------------------------------------------------- #
# Drop table "conversations_calls_audio"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations_calls_audio` MODIFY `call_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `conversations_calls_audio` ALTER COLUMN `answered` DROP DEFAULT;

ALTER TABLE `conversations_calls_audio` ALTER COLUMN `declined` DROP DEFAULT;

ALTER TABLE `conversations_calls_audio` DROP PRIMARY KEY;

DROP TABLE `conversations_calls_audio`;

# ---------------------------------------------------------------------- #
# Drop table "conversations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations` MODIFY `conversation_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `conversations` DROP PRIMARY KEY;

DROP TABLE `conversations`;

# ---------------------------------------------------------------------- #
# Drop table "coinpayments_transactions"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coinpayments_transactions` MODIFY `transaction_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coinpayments_transactions` DROP PRIMARY KEY;

DROP TABLE `coinpayments_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "bank_transfers"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_transfers` MODIFY `transfer_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `bank_transfers` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `bank_transfers` DROP PRIMARY KEY;

DROP TABLE `bank_transfers`;

# ---------------------------------------------------------------------- #
# Drop table "announcements_users"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `announcements_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `announcements_users` DROP PRIMARY KEY;

DROP TABLE `announcements_users`;

# ---------------------------------------------------------------------- #
# Drop table "affiliates_payments"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `affiliates_payments` MODIFY `payment_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `affiliates_payments` DROP PRIMARY KEY;

DROP TABLE `affiliates_payments`;

# ---------------------------------------------------------------------- #
# Drop table "ads_users_wallet_transactions"                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ads_users_wallet_transactions` MODIFY `transaction_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `ads_users_wallet_transactions` DROP PRIMARY KEY;

DROP TABLE `ads_users_wallet_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "ads_campaigns"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ads_campaigns` MODIFY `campaign_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `ads_campaigns` ALTER COLUMN `campaign_spend` DROP DEFAULT;

ALTER TABLE `ads_campaigns` ALTER COLUMN `campaign_is_active` DROP DEFAULT;

ALTER TABLE `ads_campaigns` ALTER COLUMN `campaign_views` DROP DEFAULT;

ALTER TABLE `ads_campaigns` ALTER COLUMN `campaign_clicks` DROP DEFAULT;

ALTER TABLE `ads_campaigns` DROP PRIMARY KEY;

DROP TABLE `ads_campaigns`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields_values"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_fields_values` MODIFY `value_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `custom_fields_values` DROP PRIMARY KEY;

DROP TABLE `custom_fields_values`;

# ---------------------------------------------------------------------- #
# Drop table "widgets"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `widgets` MODIFY `widget_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `widgets` ALTER COLUMN `place_order` DROP DEFAULT;

ALTER TABLE `widgets` DROP PRIMARY KEY;

DROP TABLE `widgets`;

# ---------------------------------------------------------------------- #
# Drop table "verification_requests"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `verification_requests` MODIFY `request_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `verification_requests` DROP PRIMARY KEY;

DROP TABLE `verification_requests`;

# ---------------------------------------------------------------------- #
# Drop table "system_themes"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `system_themes` MODIFY `theme_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `system_themes` DROP PRIMARY KEY;

DROP TABLE `system_themes`;

# ---------------------------------------------------------------------- #
# Drop table "system_options"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `system_options` MODIFY `option_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `system_options` DROP PRIMARY KEY;

DROP TABLE `system_options`;

# ---------------------------------------------------------------------- #
# Drop table "system_languages"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `system_languages` MODIFY `language_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `system_languages` DROP PRIMARY KEY;

DROP TABLE `system_languages`;

# ---------------------------------------------------------------------- #
# Drop table "system_currencies"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `system_currencies` MODIFY `currency_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `system_currencies` DROP PRIMARY KEY;

DROP TABLE `system_currencies`;

# ---------------------------------------------------------------------- #
# Drop table "system_countries"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `system_countries` MODIFY `country_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `system_countries` DROP PRIMARY KEY;

DROP TABLE `system_countries`;

# ---------------------------------------------------------------------- #
# Drop table "stickers"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stickers` MODIFY `sticker_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stickers` DROP PRIMARY KEY;

DROP TABLE `stickers`;

# ---------------------------------------------------------------------- #
# Drop table "static_pages"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `static_pages` MODIFY `page_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `static_pages` ALTER COLUMN `page_in_footer` DROP DEFAULT;

ALTER TABLE `static_pages` ALTER COLUMN `page_order` DROP DEFAULT;

ALTER TABLE `static_pages` DROP PRIMARY KEY;

DROP TABLE `static_pages`;

# ---------------------------------------------------------------------- #
# Drop table "posts_colored_patterns"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_colored_patterns` MODIFY `pattern_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_colored_patterns` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `posts_colored_patterns` DROP PRIMARY KEY;

DROP TABLE `posts_colored_patterns`;

# ---------------------------------------------------------------------- #
# Drop table "pages_categories"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `pages_categories` DROP PRIMARY KEY;

DROP TABLE `pages_categories`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `page_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `page_verified` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `page_boosted` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `page_likes` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "packages_payments"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `packages_payments` MODIFY `payment_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `packages_payments` DROP PRIMARY KEY;

DROP TABLE `packages_payments`;

# ---------------------------------------------------------------------- #
# Drop table "packages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `packages` MODIFY `package_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `packages` ALTER COLUMN `verification_badge_enabled` DROP DEFAULT;

ALTER TABLE `packages` ALTER COLUMN `boost_posts_enabled` DROP DEFAULT;

ALTER TABLE `packages` ALTER COLUMN `boost_pages_enabled` DROP DEFAULT;

ALTER TABLE `packages` DROP PRIMARY KEY;

DROP TABLE `packages`;

# ---------------------------------------------------------------------- #
# Drop table "movies_genres"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `movies_genres` MODIFY `genre_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `movies_genres` ALTER COLUMN `genre_order` DROP DEFAULT;

ALTER TABLE `movies_genres` DROP PRIMARY KEY;

DROP TABLE `movies_genres`;

# ---------------------------------------------------------------------- #
# Drop table "movies"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `movies` MODIFY `movie_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `movies` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `movies` DROP PRIMARY KEY;

DROP TABLE `movies`;

# ---------------------------------------------------------------------- #
# Drop table "market_categories"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `market_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `market_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `market_categories` DROP PRIMARY KEY;

DROP TABLE `market_categories`;

# ---------------------------------------------------------------------- #
# Drop table "invitation_codes"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invitation_codes` MODIFY `code_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `invitation_codes` ALTER COLUMN `valid` DROP DEFAULT;

ALTER TABLE `invitation_codes` DROP PRIMARY KEY;

DROP TABLE `invitation_codes`;

# ---------------------------------------------------------------------- #
# Drop table "hashtags"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `hashtags` MODIFY `hashtag_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `hashtags` DROP PRIMARY KEY;

DROP TABLE `hashtags`;

# ---------------------------------------------------------------------- #
# Drop table "groups_categories"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `groups_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `groups_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `groups_categories` DROP PRIMARY KEY;

DROP TABLE `groups_categories`;

# ---------------------------------------------------------------------- #
# Drop table "groups"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `groups` ALTER COLUMN `group_privacy` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `group_publish_enabled` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `group_publish_approval_enabled` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `group_members` DROP DEFAULT;

DROP TABLE `groups`;

# ---------------------------------------------------------------------- #
# Drop table "gifts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gifts` MODIFY `gift_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gifts` DROP PRIMARY KEY;

DROP TABLE `gifts`;

# ---------------------------------------------------------------------- #
# Drop table "games"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `games` MODIFY `game_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `games` DROP PRIMARY KEY;

DROP TABLE `games`;

# ---------------------------------------------------------------------- #
# Drop table "friends"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `friends` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `friends` DROP PRIMARY KEY;

DROP TABLE `friends`;

# ---------------------------------------------------------------------- #
# Drop table "forums"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `forums` MODIFY `forum_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `forums` ALTER COLUMN `forum_order` DROP DEFAULT;

ALTER TABLE `forums` ALTER COLUMN `forum_threads` DROP DEFAULT;

ALTER TABLE `forums` ALTER COLUMN `forum_replies` DROP DEFAULT;

ALTER TABLE `forums` DROP PRIMARY KEY;

DROP TABLE `forums`;

# ---------------------------------------------------------------------- #
# Drop table "events_categories"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `events_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `events_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `events_categories` DROP PRIMARY KEY;

DROP TABLE `events_categories`;

# ---------------------------------------------------------------------- #
# Drop table "events"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `events` MODIFY `event_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `events` ALTER COLUMN `event_privacy` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `event_publish_enabled` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `event_publish_approval_enabled` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `event_invited` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `event_interested` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `event_going` DROP DEFAULT;

ALTER TABLE `events` DROP PRIMARY KEY;

DROP TABLE `events`;

# ---------------------------------------------------------------------- #
# Drop table "emojis"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `emojis` MODIFY `emoji_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `emojis` DROP PRIMARY KEY;

DROP TABLE `emojis`;

# ---------------------------------------------------------------------- #
# Drop table "developers_apps_categories"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `developers_apps_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `developers_apps_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `developers_apps_categories` DROP PRIMARY KEY;

DROP TABLE `developers_apps_categories`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_fields` MODIFY `field_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `custom_fields` ALTER COLUMN `field_for` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `length` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `field_order` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `mandatory` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `in_registration` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `in_profile` DROP DEFAULT;

ALTER TABLE `custom_fields` DROP PRIMARY KEY;

DROP TABLE `custom_fields`;

# ---------------------------------------------------------------------- #
# Drop table "blogs_categories"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs_categories` MODIFY `category_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `blogs_categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `blogs_categories` DROP PRIMARY KEY;

DROP TABLE `blogs_categories`;

# ---------------------------------------------------------------------- #
# Drop table "blacklist"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blacklist` MODIFY `node_id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `blacklist` DROP PRIMARY KEY;

DROP TABLE `blacklist`;

# ---------------------------------------------------------------------- #
# Drop table "announcements"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `announcements` MODIFY `announcement_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `announcements` DROP PRIMARY KEY;

DROP TABLE `announcements`;

# ---------------------------------------------------------------------- #
# Drop table "ads_system"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ads_system` MODIFY `ads_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `ads_system` DROP PRIMARY KEY;

DROP TABLE `ads_system`;
