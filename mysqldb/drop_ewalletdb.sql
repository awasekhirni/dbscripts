# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          fbclone.dez                                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:25                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `announcement_views` DROP FOREIGN KEY `accounts_announcement_views`;

ALTER TABLE `announcement_views` DROP FOREIGN KEY `announcements_announcement_views`;

ALTER TABLE `commentlikes` DROP FOREIGN KEY `posts_commentlikes`;

ALTER TABLE `comments` DROP FOREIGN KEY `media_comments`;

ALTER TABLE `comments` DROP FOREIGN KEY `posts_comments`;

ALTER TABLE `media` DROP FOREIGN KEY `posts_media`;

ALTER TABLE `messages` DROP FOREIGN KEY `media_messages`;

ALTER TABLE `notifications` DROP FOREIGN KEY `posts_notifications`;

ALTER TABLE `page_admins` DROP FOREIGN KEY `pages_page_admins`;

ALTER TABLE `postfollows` DROP FOREIGN KEY `posts_postfollows`;

ALTER TABLE `postlikes` DROP FOREIGN KEY `posts_postlikes`;

ALTER TABLE `posts` DROP FOREIGN KEY `media_posts`;

ALTER TABLE `postshares` DROP FOREIGN KEY `posts_postshares`;

ALTER TABLE `reports` DROP FOREIGN KEY `posts_reports`;

ALTER TABLE `users` DROP FOREIGN KEY `followers_users`;

# ---------------------------------------------------------------------- #
# Drop table "reports"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reports` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `reports` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `reports` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `reports` DROP PRIMARY KEY;

DROP TABLE `reports`;

# ---------------------------------------------------------------------- #
# Drop table "postshares"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `postshares` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `postshares` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `postshares` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `postshares` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `postshares` DROP PRIMARY KEY;

DROP TABLE `postshares`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `hidden` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `media_id` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `recipient_id` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `shared` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "postlikes"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `postlikes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `postlikes` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `postlikes` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `postlikes` ALTER COLUMN `reaction` DROP DEFAULT;

ALTER TABLE `postlikes` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `postlikes` DROP PRIMARY KEY;

DROP TABLE `postlikes`;

# ---------------------------------------------------------------------- #
# Drop table "postfollows"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `postfollows` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `postfollows` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `postfollows` ALTER COLUMN `post_id` DROP DEFAULT;

ALTER TABLE `postfollows` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `postfollows` DROP PRIMARY KEY;

DROP TABLE `postfollows`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `notifications` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `messages` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `media_id` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `recipient_id` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `seen` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "media"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `media` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `media` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `media` ALTER COLUMN `album_id` DROP DEFAULT;

ALTER TABLE `media` ALTER COLUMN `extension` DROP DEFAULT;

ALTER TABLE `media` ALTER COLUMN `temp` DROP DEFAULT;

ALTER TABLE `media` DROP PRIMARY KEY;

DROP TABLE `media`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "commentlikes"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `commentlikes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `commentlikes` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `commentlikes` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `commentlikes` DROP PRIMARY KEY;

DROP TABLE `commentlikes`;

# ---------------------------------------------------------------------- #
# Drop table "page_admins"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `page_admins` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `page_admins` DROP PRIMARY KEY;

DROP TABLE `page_admins`;

# ---------------------------------------------------------------------- #
# Drop table "announcement_views"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `announcement_views` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `announcement_views` DROP PRIMARY KEY;

DROP TABLE `announcement_views`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `birthday` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `comment_privacy` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `confirm_followers` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `follow_privacy` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `gender` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_comment` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_postlike` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_postshare` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_follow` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_friendrequests` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_groupjoined` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_message` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_pagelike` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mailnotif_timelinepost` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `message_privacy` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `post_privacy` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `timeline_post_privacy` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "story_video_uploads"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `story_video_uploads` MODIFY `id` INTEGER(255) NOT NULL;

# Drop constraints #

ALTER TABLE `story_video_uploads` DROP PRIMARY KEY;

DROP TABLE `story_video_uploads`;

# ---------------------------------------------------------------------- #
# Drop table "story_music_uploads"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `story_music_uploads` MODIFY `id` INTEGER(255) NOT NULL;

# Drop constraints #

ALTER TABLE `story_music_uploads` DROP PRIMARY KEY;

DROP TABLE `story_music_uploads`;

# ---------------------------------------------------------------------- #
# Drop table "plugins"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `plugins` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `plugins` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `plugins` DROP PRIMARY KEY;

DROP TABLE `plugins`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `message_privacy` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `timeline_post_privacy` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "page_categories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `page_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `page_categories` DROP PRIMARY KEY;

DROP TABLE `page_categories`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `languages` MODIFY `id` INTEGER(255) NOT NULL;

# Drop constraints #

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "hashtags"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `hashtags` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `hashtags` ALTER COLUMN `trend_use_num` DROP DEFAULT;

ALTER TABLE `hashtags` DROP PRIMARY KEY;

DROP TABLE `hashtags`;

# ---------------------------------------------------------------------- #
# Drop table "groups"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `groups` ALTER COLUMN `add_privacy` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `group_privacy` DROP DEFAULT;

ALTER TABLE `groups` ALTER COLUMN `timeline_post_privacy` DROP DEFAULT;

DROP TABLE `groups`;

# ---------------------------------------------------------------------- #
# Drop table "group_admins"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `group_admins` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `group_admins` DROP PRIMARY KEY;

DROP TABLE `group_admins`;

# ---------------------------------------------------------------------- #
# Drop table "followers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `followers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `followers` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `followers` ALTER COLUMN `is_chatting` DROP DEFAULT;

ALTER TABLE `followers` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `followers` DROP PRIMARY KEY;

DROP TABLE `followers`;

# ---------------------------------------------------------------------- #
# Drop table "configurations"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `configurations` ALTER COLUMN `admin_password` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `admin_username` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `captcha` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `censored_words` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `chat` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `comment_character_limit` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `email_verification` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `friends` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `language` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `message_character_limit` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `reg_req_about` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `reg_req_birthday` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `reg_req_currentcity` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `reg_req_hometown` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `site_name` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `site_title` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `smooth_links` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `story_character_limit` DROP DEFAULT;

ALTER TABLE `configurations` ALTER COLUMN `theme` DROP DEFAULT;

DROP TABLE `configurations`;

# ---------------------------------------------------------------------- #
# Drop table "announcements"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `announcements` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `announcements` DROP PRIMARY KEY;

DROP TABLE `announcements`;

# ---------------------------------------------------------------------- #
# Drop table "accounts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `accounts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `accounts` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `avatar_id` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `cover_id` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `cover_position` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `email_verified` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `accounts` ALTER COLUMN `verified` DROP DEFAULT;

ALTER TABLE `accounts` DROP PRIMARY KEY;

DROP TABLE `accounts`;
