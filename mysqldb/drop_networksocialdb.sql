# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          networksocialdb.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:10                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `albums` DROP FOREIGN KEY `users_albums`;

ALTER TABLE `apps_covers` DROP FOREIGN KEY `apps_apps_covers`;

ALTER TABLE `blacklist` DROP FOREIGN KEY `users_blacklist`;

ALTER TABLE `comments` DROP FOREIGN KEY `users_comments`;

ALTER TABLE `deleted_photos` DROP FOREIGN KEY `albums_deleted_photos`;

ALTER TABLE `deleted_photos` DROP FOREIGN KEY `users_deleted_photos`;

ALTER TABLE `deleted_videos` DROP FOREIGN KEY `albums_deleted_videos`;

ALTER TABLE `deleted_videos` DROP FOREIGN KEY `users_deleted_videos`;

ALTER TABLE `feed_favorite_users` DROP FOREIGN KEY `users_feed_favorite_users`;

ALTER TABLE `friends` DROP FOREIGN KEY `users_friends`;

ALTER TABLE `guests` DROP FOREIGN KEY `users_guests`;

ALTER TABLE `ip_log` DROP FOREIGN KEY `users_ip_log`;

ALTER TABLE `items_rating` DROP FOREIGN KEY `users_items_rating`;

ALTER TABLE `my_apps` DROP FOREIGN KEY `apps_my_apps`;

ALTER TABLE `my_apps` DROP FOREIGN KEY `users_my_apps`;

ALTER TABLE `nearby_people` DROP FOREIGN KEY `users_nearby_people`;

ALTER TABLE `photos` DROP FOREIGN KEY `albums_photos`;

ALTER TABLE `photos` DROP FOREIGN KEY `users_photos`;

ALTER TABLE `poll_answers` DROP FOREIGN KEY `questions_poll_answers`;

ALTER TABLE `poll_options` DROP FOREIGN KEY `questions_poll_options`;

ALTER TABLE `search_history` DROP FOREIGN KEY `users_search_history`;

ALTER TABLE `slideshow_imgs` DROP FOREIGN KEY `users_slideshow_imgs`;

ALTER TABLE `themes` DROP FOREIGN KEY `users_themes`;

ALTER TABLE `user_gifts` DROP FOREIGN KEY `gifts_user_gifts`;

ALTER TABLE `user_gifts` DROP FOREIGN KEY `users_user_gifts`;

ALTER TABLE `videos` DROP FOREIGN KEY `albums_videos`;

ALTER TABLE `videos` DROP FOREIGN KEY `users_videos`;

# ---------------------------------------------------------------------- #
# Drop table "videos"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `videos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `videos` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `extension` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `albumid` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `external` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `dur` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `width` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `height` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `videos` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `videos` DROP PRIMARY KEY;

DROP TABLE `videos`;

# ---------------------------------------------------------------------- #
# Drop table "user_gifts"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_gifts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_gifts` ALTER COLUMN `private` DROP DEFAULT;

ALTER TABLE `user_gifts` ALTER COLUMN `anonym` DROP DEFAULT;

ALTER TABLE `user_gifts` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `user_gifts` DROP PRIMARY KEY;

DROP TABLE `user_gifts`;

# ---------------------------------------------------------------------- #
# Drop table "themes"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `themes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `themes` ALTER COLUMN `name` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `body` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `kn` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `ext` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `themes` DROP PRIMARY KEY;

DROP TABLE `themes`;

# ---------------------------------------------------------------------- #
# Drop table "slideshow_imgs"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `slideshow_imgs` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `slideshow_imgs` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `slideshow_imgs` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `slideshow_imgs` ALTER COLUMN `ex` DROP DEFAULT;

ALTER TABLE `slideshow_imgs` DROP PRIMARY KEY;

DROP TABLE `slideshow_imgs`;

# ---------------------------------------------------------------------- #
# Drop table "search_history"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `search_history` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `search_history` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `search_history` ALTER COLUMN `owner` DROP DEFAULT;

ALTER TABLE `search_history` DROP PRIMARY KEY;

DROP TABLE `search_history`;

# ---------------------------------------------------------------------- #
# Drop table "poll_options"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `poll_options` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `poll_options` DROP PRIMARY KEY;

DROP TABLE `poll_options`;

# ---------------------------------------------------------------------- #
# Drop table "poll_answers"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `poll_answers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `poll_answers` DROP PRIMARY KEY;

DROP TABLE `poll_answers`;

# ---------------------------------------------------------------------- #
# Drop table "photos"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `photos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `photos` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `photos` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `photos` DROP PRIMARY KEY;

DROP TABLE `photos`;

# ---------------------------------------------------------------------- #
# Drop table "nearby_people"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `nearby_people` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `nearby_people` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `nearby_people` ALTER COLUMN `lat` DROP DEFAULT;

ALTER TABLE `nearby_people` ALTER COLUMN `long` DROP DEFAULT;

ALTER TABLE `nearby_people` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `nearby_people` DROP PRIMARY KEY;

DROP TABLE `nearby_people`;

# ---------------------------------------------------------------------- #
# Drop table "my_apps"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `my_apps` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `my_apps` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `my_apps` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `my_apps` DROP PRIMARY KEY;

DROP TABLE `my_apps`;

# ---------------------------------------------------------------------- #
# Drop table "items_rating"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `items_rating` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `items_rating` ALTER COLUMN `item_type` DROP DEFAULT;

ALTER TABLE `items_rating` DROP PRIMARY KEY;

DROP TABLE `items_rating`;

# ---------------------------------------------------------------------- #
# Drop table "ip_log"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ip_log` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ip_log` ALTER COLUMN `ip` DROP DEFAULT;

ALTER TABLE `ip_log` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `ip_log` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `ip_log` ALTER COLUMN `device_name` DROP DEFAULT;

ALTER TABLE `ip_log` DROP PRIMARY KEY;

DROP TABLE `ip_log`;

# ---------------------------------------------------------------------- #
# Drop table "guests"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `guests` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `guests` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `guests` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `guests` ALTER COLUMN `new` DROP DEFAULT;

ALTER TABLE `guests` DROP PRIMARY KEY;

DROP TABLE `guests`;

# ---------------------------------------------------------------------- #
# Drop table "friends"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `friends` MODIFY `id` INTEGER(255) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `friends` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `friends` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `friends` DROP PRIMARY KEY;

DROP TABLE `friends`;

# ---------------------------------------------------------------------- #
# Drop table "feed_favorite_users"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `feed_favorite_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `feed_favorite_users` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `feed_favorite_users` ALTER COLUMN `fvid` DROP DEFAULT;

ALTER TABLE `feed_favorite_users` DROP PRIMARY KEY;

DROP TABLE `feed_favorite_users`;

# ---------------------------------------------------------------------- #
# Drop table "deleted_videos"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deleted_videos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deleted_videos` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `videoid` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `extension` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `albumid` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `external` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `dur` DROP DEFAULT;

ALTER TABLE `deleted_videos` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `deleted_videos` DROP PRIMARY KEY;

DROP TABLE `deleted_videos`;

# ---------------------------------------------------------------------- #
# Drop table "deleted_photos"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deleted_photos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deleted_photos` ALTER COLUMN `photoid` DROP DEFAULT;

ALTER TABLE `deleted_photos` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `deleted_photos` ALTER COLUMN `albumid` DROP DEFAULT;

ALTER TABLE `deleted_photos` ALTER COLUMN `padded` DROP DEFAULT;

ALTER TABLE `deleted_photos` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `deleted_photos` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `deleted_photos` DROP PRIMARY KEY;

DROP TABLE `deleted_photos`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` INTEGER(255) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `comments` ALTER COLUMN `categ` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `updated` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `item_type` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "blacklist"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blacklist` MODIFY `id` INTEGER(99) NOT NULL;

# Drop constraints #

ALTER TABLE `blacklist` ALTER COLUMN `employer` DROP DEFAULT;

ALTER TABLE `blacklist` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `blacklist` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `blacklist` DROP PRIMARY KEY;

DROP TABLE `blacklist`;

# ---------------------------------------------------------------------- #
# Drop table "albums"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `albums` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `albums` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `cover` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `visible_to` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `video` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `removable` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `albums` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `albums` DROP PRIMARY KEY;

DROP TABLE `albums`;

# ---------------------------------------------------------------------- #
# Drop table "users_movies"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_movies` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_movies` ALTER COLUMN `movie_id` DROP DEFAULT;

ALTER TABLE `users_movies` ALTER COLUMN `page_id` DROP DEFAULT;

ALTER TABLE `users_movies` DROP PRIMARY KEY;

DROP TABLE `users_movies`;

# ---------------------------------------------------------------------- #
# Drop table "users_books"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users_books` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users_books` ALTER COLUMN `book_id` DROP DEFAULT;

ALTER TABLE `users_books` ALTER COLUMN `page_id` DROP DEFAULT;

ALTER TABLE `users_books` DROP PRIMARY KEY;

DROP TABLE `users_books`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `surname` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `fullname` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `password` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `real_pass` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `last_login` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `secret` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `editsecret` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `online` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `theme` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `class` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `private` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `privacy_age` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `privacy_apps` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `privacy_love` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `allow_tag_photos` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `allow_tag_posts` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `allow_share_myphotos` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `allow_comment_myphotos` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `allow_send_pm` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `display_online` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `political_views` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `world_view` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `personal_priority` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `important_in_others` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `views_on_smoking` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `views_on_alcohol` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `language` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `show_embera` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `auto_play_videos` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `ip` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `phone` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `secret_code` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `profile_photo` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "terms"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `terms` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `terms` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `terms` DROP PRIMARY KEY;

DROP TABLE `terms`;

# ---------------------------------------------------------------------- #
# Drop table "tags"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tags` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tags` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `tags` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `tags` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `tags` DROP PRIMARY KEY;

DROP TABLE `tags`;

# ---------------------------------------------------------------------- #
# Drop table "story_views"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `story_views` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `story_views` ALTER COLUMN `story_id` DROP DEFAULT;

ALTER TABLE `story_views` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `story_views` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `story_views` DROP PRIMARY KEY;

DROP TABLE `story_views`;

# ---------------------------------------------------------------------- #
# Drop table "stories_files"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stories_files` MODIFY `id` INTEGER(40) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stories_files` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `stories_files` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `stories_files` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `stories_files` ALTER COLUMN `story_id` DROP DEFAULT;

ALTER TABLE `stories_files` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `stories_files` DROP PRIMARY KEY;

DROP TABLE `stories_files`;

# ---------------------------------------------------------------------- #
# Drop table "stories"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stories` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `stories` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `stories` ALTER COLUMN `public` DROP DEFAULT;

ALTER TABLE `stories` DROP PRIMARY KEY;

DROP TABLE `stories`;

# ---------------------------------------------------------------------- #
# Drop table "slideshow"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `slideshow` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `slideshow` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `slideshow` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `slideshow` ALTER COLUMN `enabled` DROP DEFAULT;

ALTER TABLE `slideshow` DROP PRIMARY KEY;

DROP TABLE `slideshow`;

# ---------------------------------------------------------------------- #
# Drop table "shared_links"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shared_links` MODIFY `id` INTEGER(99) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `shared_links` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `shared_links` ALTER COLUMN `embera` DROP DEFAULT;

ALTER TABLE `shared_links` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `shared_links` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `shared_links` DROP PRIMARY KEY;

DROP TABLE `shared_links`;

# ---------------------------------------------------------------------- #
# Drop table "report"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `report` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `report` ALTER COLUMN `type_id` DROP DEFAULT;

ALTER TABLE `report` ALTER COLUMN `report_by` DROP DEFAULT;

ALTER TABLE `report` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `report` ALTER COLUMN `seen` DROP DEFAULT;

ALTER TABLE `report` ALTER COLUMN `reason` DROP DEFAULT;

ALTER TABLE `report` DROP PRIMARY KEY;

DROP TABLE `report`;

# ---------------------------------------------------------------------- #
# Drop table "reactions"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reactions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reactions` ALTER COLUMN `itemid` DROP DEFAULT;

ALTER TABLE `reactions` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `reactions` ALTER COLUMN `reaction` DROP DEFAULT;

ALTER TABLE `reactions` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `reactions` ALTER COLUMN `item_deleted` DROP DEFAULT;

ALTER TABLE `reactions` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `reactions` DROP PRIMARY KEY;

DROP TABLE `reactions`;

# ---------------------------------------------------------------------- #
# Drop table "questions"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `questions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `questions` DROP PRIMARY KEY;

DROP TABLE `questions`;

# ---------------------------------------------------------------------- #
# Drop table "posts_posters"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts_posters` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts_posters` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `posts_posters` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `posts_posters` DROP PRIMARY KEY;

DROP TABLE `posts_posters`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `schedule` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `shared` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `pinned` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "poll_questions"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `poll_questions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `poll_questions` ALTER COLUMN `color_id` DROP DEFAULT;

ALTER TABLE `poll_questions` DROP PRIMARY KEY;

DROP TABLE `poll_questions`;

# ---------------------------------------------------------------------- #
# Drop table "photo_rate"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `photo_rate` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `photo_rate` ALTER COLUMN `dt_rated` DROP DEFAULT;

ALTER TABLE `photo_rate` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `photo_rate` DROP PRIMARY KEY;

DROP TABLE `photo_rate`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `page_id` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `owner` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `item_id` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `dropdown_seen` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "music_stars"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_stars` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_stars` ALTER COLUMN `user` DROP DEFAULT;

ALTER TABLE `music_stars` DROP PRIMARY KEY;

DROP TABLE `music_stars`;

# ---------------------------------------------------------------------- #
# Drop table "music_songs"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_songs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_songs` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `uploader` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `year` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `genre` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `video` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `language` DROP DEFAULT;

ALTER TABLE `music_songs` ALTER COLUMN `video_community` DROP DEFAULT;

ALTER TABLE `music_songs` DROP PRIMARY KEY;

DROP TABLE `music_songs`;

# ---------------------------------------------------------------------- #
# Drop table "music_purchased"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_purchased` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_purchased` ALTER COLUMN `user` DROP DEFAULT;

ALTER TABLE `music_purchased` ALTER COLUMN `song` DROP DEFAULT;

ALTER TABLE `music_purchased` DROP PRIMARY KEY;

DROP TABLE `music_purchased`;

# ---------------------------------------------------------------------- #
# Drop table "music_playlists_pos"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_playlists_pos` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_playlists_pos` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `music_playlists_pos` ALTER COLUMN `playlistid` DROP DEFAULT;

ALTER TABLE `music_playlists_pos` DROP PRIMARY KEY;

DROP TABLE `music_playlists_pos`;

# ---------------------------------------------------------------------- #
# Drop table "music_playlists"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_playlists` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_playlists` ALTER COLUMN `owner` DROP DEFAULT;

ALTER TABLE `music_playlists` ALTER COLUMN `playcount` DROP DEFAULT;

ALTER TABLE `music_playlists` ALTER COLUMN `originalpid` DROP DEFAULT;

ALTER TABLE `music_playlists` ALTER COLUMN `updates` DROP DEFAULT;

ALTER TABLE `music_playlists` DROP PRIMARY KEY;

DROP TABLE `music_playlists`;

# ---------------------------------------------------------------------- #
# Drop table "music_my_music"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_my_music` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_my_music` ALTER COLUMN `uploader` DROP DEFAULT;

ALTER TABLE `music_my_music` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `music_my_music` ALTER COLUMN `owner` DROP DEFAULT;

ALTER TABLE `music_my_music` ALTER COLUMN `musid` DROP DEFAULT;

ALTER TABLE `music_my_music` DROP PRIMARY KEY;

DROP TABLE `music_my_music`;

# ---------------------------------------------------------------------- #
# Drop table "music_history"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `music_history` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `music_history` ALTER COLUMN `user` DROP DEFAULT;

ALTER TABLE `music_history` ALTER COLUMN `song` DROP DEFAULT;

ALTER TABLE `music_history` DROP PRIMARY KEY;

DROP TABLE `music_history`;

# ---------------------------------------------------------------------- #
# Drop table "messenger_settings"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messenger_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `messenger_settings` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `messenger_settings` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `messenger_settings` ALTER COLUMN `recipient` DROP DEFAULT;

ALTER TABLE `messenger_settings` ALTER COLUMN `settings` DROP DEFAULT;

ALTER TABLE `messenger_settings` ALTER COLUMN `text` DROP DEFAULT;

ALTER TABLE `messenger_settings` DROP PRIMARY KEY;

DROP TABLE `messenger_settings`;

# ---------------------------------------------------------------------- #
# Drop table "messenger_nicknames"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messenger_nicknames` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `messenger_nicknames` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `messenger_nicknames` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `messenger_nicknames` ALTER COLUMN `recipientid` DROP DEFAULT;

ALTER TABLE `messenger_nicknames` ALTER COLUMN `nickname` DROP DEFAULT;

ALTER TABLE `messenger_nicknames` ALTER COLUMN `text` DROP DEFAULT;

ALTER TABLE `messenger_nicknames` DROP PRIMARY KEY;

DROP TABLE `messenger_nicknames`;

# ---------------------------------------------------------------------- #
# Drop table "messenger_colors"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messenger_colors` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `messenger_colors` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `messenger_colors` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `messenger_colors` ALTER COLUMN `recipient` DROP DEFAULT;

ALTER TABLE `messenger_colors` ALTER COLUMN `color` DROP DEFAULT;

ALTER TABLE `messenger_colors` ALTER COLUMN `text` DROP DEFAULT;

ALTER TABLE `messenger_colors` DROP PRIMARY KEY;

DROP TABLE `messenger_colors`;

# ---------------------------------------------------------------------- #
# Drop table "messages_typing"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages_typing` MODIFY `id` INTEGER(20) NOT NULL;

# Drop constraints #

ALTER TABLE `messages_typing` ALTER COLUMN `fromUser` DROP DEFAULT;

ALTER TABLE `messages_typing` ALTER COLUMN `toUser` DROP DEFAULT;

ALTER TABLE `messages_typing` ALTER COLUMN `typing` DROP DEFAULT;

ALTER TABLE `messages_typing` DROP PRIMARY KEY;

DROP TABLE `messages_typing`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` INTEGER(20) NOT NULL;

# Drop constraints #

ALTER TABLE `messages` ALTER COLUMN `fromUser` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `toUser` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `lastby` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `deleteby` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `hidden` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `shared` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `bg` DROP DEFAULT;

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "market_pictures"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `market_pictures` MODIFY `id` INTEGER(40) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `market_pictures` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `market_pictures` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `market_pictures` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `market_pictures` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `market_pictures` ALTER COLUMN `product_id` DROP DEFAULT;

ALTER TABLE `market_pictures` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `market_pictures` DROP PRIMARY KEY;

DROP TABLE `market_pictures`;

# ---------------------------------------------------------------------- #
# Drop table "market_favorites"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `market_favorites` MODIFY `id` INTEGER(40) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `market_favorites` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `market_favorites` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `market_favorites` ALTER COLUMN `product_id` DROP DEFAULT;

ALTER TABLE `market_favorites` DROP PRIMARY KEY;

DROP TABLE `market_favorites`;

# ---------------------------------------------------------------------- #
# Drop table "market"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `market` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `market` ALTER COLUMN `product_name` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `product_category` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `product_cover` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `product_location` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `market` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `market` DROP PRIMARY KEY;

DROP TABLE `market`;

# ---------------------------------------------------------------------- #
# Drop table "gifts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gifts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gifts` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `gifts` DROP PRIMARY KEY;

DROP TABLE `gifts`;

# ---------------------------------------------------------------------- #
# Drop table "friends_on_map"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `friends_on_map` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `friends_on_map` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `friends_on_map` ALTER COLUMN `custom` DROP DEFAULT;

ALTER TABLE `friends_on_map` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `friends_on_map` ALTER COLUMN `lat_long` DROP DEFAULT;

ALTER TABLE `friends_on_map` DROP PRIMARY KEY;

DROP TABLE `friends_on_map`;

# ---------------------------------------------------------------------- #
# Drop table "feedback"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `feedback` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `feedback` ALTER COLUMN `sender` DROP DEFAULT;

ALTER TABLE `feedback` ALTER COLUMN `sender_email` DROP DEFAULT;

ALTER TABLE `feedback` ALTER COLUMN `attachment` DROP DEFAULT;

ALTER TABLE `feedback` ALTER COLUMN `subject` DROP DEFAULT;

ALTER TABLE `feedback` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `feedback` DROP PRIMARY KEY;

DROP TABLE `feedback`;

# ---------------------------------------------------------------------- #
# Drop table "feed"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `feed` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `feed` ALTER COLUMN `categ` DROP DEFAULT;

ALTER TABLE `feed` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `feed` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `feed` DROP PRIMARY KEY;

DROP TABLE `feed`;

# ---------------------------------------------------------------------- #
# Drop table "docs_favorite"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `docs_favorite` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `docs_favorite` ALTER COLUMN `doc_id` DROP DEFAULT;

ALTER TABLE `docs_favorite` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `docs_favorite` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `docs_favorite` DROP PRIMARY KEY;

DROP TABLE `docs_favorite`;

# ---------------------------------------------------------------------- #
# Drop table "docs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `docs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `docs` ALTER COLUMN `author` DROP DEFAULT;

ALTER TABLE `docs` ALTER COLUMN `size` DROP DEFAULT;

ALTER TABLE `docs` ALTER COLUMN `format` DROP DEFAULT;

ALTER TABLE `docs` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `docs` ALTER COLUMN `category` DROP DEFAULT;

ALTER TABLE `docs` DROP PRIMARY KEY;

DROP TABLE `docs`;

# ---------------------------------------------------------------------- #
# Drop table "deleted_posts"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deleted_posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deleted_posts` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `schedule` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `origin` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `shared` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `origin_id` DROP DEFAULT;

ALTER TABLE `deleted_posts` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `deleted_posts` DROP PRIMARY KEY;

DROP TABLE `deleted_posts`;

# ---------------------------------------------------------------------- #
# Drop table "communities_followers"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `communities_followers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `communities_followers` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `communities_followers` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `communities_followers` ALTER COLUMN `group_id` DROP DEFAULT;

ALTER TABLE `communities_followers` DROP PRIMARY KEY;

DROP TABLE `communities_followers`;

# ---------------------------------------------------------------------- #
# Drop table "communities"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `communities` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `communities` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `general_category` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `category` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `subcategory` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `website` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `cover_position` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `location` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `loc_lat` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `loc_lon` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `allow_to_post` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `verified` DROP DEFAULT;

ALTER TABLE `communities` ALTER COLUMN `birthday` DROP DEFAULT;

ALTER TABLE `communities` DROP PRIMARY KEY;

DROP TABLE `communities`;

# ---------------------------------------------------------------------- #
# Drop table "checked_in"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `checked_in` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `checked_in` ALTER COLUMN `user` DROP DEFAULT;

ALTER TABLE `checked_in` ALTER COLUMN `place_id` DROP DEFAULT;

ALTER TABLE `checked_in` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `checked_in` ALTER COLUMN `place_type` DROP DEFAULT;

ALTER TABLE `checked_in` DROP PRIMARY KEY;

DROP TABLE `checked_in`;

# ---------------------------------------------------------------------- #
# Drop table "bookmarks"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bookmarks` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `bookmarks` ALTER COLUMN `itemid` DROP DEFAULT;

ALTER TABLE `bookmarks` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `bookmarks` ALTER COLUMN `clubid` DROP DEFAULT;

ALTER TABLE `bookmarks` ALTER COLUMN `uid` DROP DEFAULT;

ALTER TABLE `bookmarks` DROP PRIMARY KEY;

DROP TABLE `bookmarks`;

# ---------------------------------------------------------------------- #
# Drop table "avps"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `avps` ALTER COLUMN `arg` DROP DEFAULT;

ALTER TABLE `avps` ALTER COLUMN `value_i` DROP DEFAULT;

ALTER TABLE `avps` ALTER COLUMN `value_u` DROP DEFAULT;

ALTER TABLE `avps` DROP PRIMARY KEY;

DROP TABLE `avps`;

# ---------------------------------------------------------------------- #
# Drop table "attachments"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attachments` MODIFY `id` INTEGER(90) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `attachments` ALTER COLUMN `userid` DROP DEFAULT;

ALTER TABLE `attachments` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `attachments` ALTER COLUMN `sended_to` DROP DEFAULT;

ALTER TABLE `attachments` ALTER COLUMN `file_size` DROP DEFAULT;

ALTER TABLE `attachments` ALTER COLUMN `s3` DROP DEFAULT;

ALTER TABLE `attachments` DROP PRIMARY KEY;

DROP TABLE `attachments`;

# ---------------------------------------------------------------------- #
# Drop table "apps_covers"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `apps_covers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `apps_covers` ALTER COLUMN `app_id` DROP DEFAULT;

ALTER TABLE `apps_covers` DROP PRIMARY KEY;

DROP TABLE `apps_covers`;

# ---------------------------------------------------------------------- #
# Drop table "apps"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `apps` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `apps` ALTER COLUMN `title` DROP DEFAULT;

ALTER TABLE `apps` ALTER COLUMN `added` DROP DEFAULT;

ALTER TABLE `apps` ALTER COLUMN `cover` DROP DEFAULT;

ALTER TABLE `apps` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `apps` DROP PRIMARY KEY;

DROP TABLE `apps`;

# ---------------------------------------------------------------------- #
# Drop table "advertisement"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `advertisement` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `advertisement` ALTER COLUMN `page` DROP DEFAULT;

ALTER TABLE `advertisement` ALTER COLUMN `click` DROP DEFAULT;

ALTER TABLE `advertisement` DROP PRIMARY KEY;

DROP TABLE `advertisement`;
