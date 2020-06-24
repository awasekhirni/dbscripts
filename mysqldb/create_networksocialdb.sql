# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          networksocialdb.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:10                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "advertisement"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `advertisement` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `markup` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(33) NOT NULL,
    `page` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `click` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "apps"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `apps` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `genre` INTEGER(9) NOT NULL,
    `added` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `cover` INTEGER(255) NOT NULL DEFAULT 0,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `iframe` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `views` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "apps_covers"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `apps_covers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `app_id` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "attachments"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `attachments` (
    `id` INTEGER(90) UNSIGNED NOT NULL AUTO_INCREMENT,
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `userid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `added` VARCHAR(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `sended_to` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `file_size` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "avps"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `avps` (
    `arg` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `value_s` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `value_i` INTEGER(11) NOT NULL DEFAULT 0,
    `value_u` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (`arg`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "bookmarks"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `bookmarks` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `itemid` INTEGER(99) NOT NULL DEFAULT 0,
    `categ` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `clubid` VARCHAR(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `uid` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "checked_in"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `checked_in` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user` INTEGER(90) NOT NULL DEFAULT 0,
    `place_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `added` INTEGER(44) NOT NULL DEFAULT 0,
    `place_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "communities"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `communities` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `type` ENUM('group','public_page') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'group',
    `general_category` VARCHAR(244) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `category` VARCHAR(244) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `subcategory` VARCHAR(244) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `website` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `privacy` ENUM('Open','Closed','Private') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Open',
    `admin` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `cover_position` VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `location` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `loc_lat` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `loc_lon` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `loc_data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `allow_to_post` ENUM('only_admins','only_followers','everyone') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'only_followers',
    `verified` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `status` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `logo` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `birthday` DATE NOT NULL DEFAULT '0000-00-00',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "communities_followers"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `communities_followers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `group_id` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "deleted_posts"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `deleted_posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `type` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'text',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `settings` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `privacy` ENUM('public','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'public',
    `schedule` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `post_id` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `views` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `shared` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `origin_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `time` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "docs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `docs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `author` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `original_filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `size` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `format` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `category` ENUM('personal_document','educational_paper','book','other') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'personal_document',
    `tags` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "docs_favorite"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `docs_favorite` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `doc_id` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'picture',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "feed"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `feed` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `byuser` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `itemid` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `categ` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `parent_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `hide_for` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `origin_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "feedback"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `feedback` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sender` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `send_at` INTEGER(33) NOT NULL,
    `sender_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `attachment` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `subject` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `read` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "friends_on_map"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `friends_on_map` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `time` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `status` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `location` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `custom` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `available` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    `media` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `lat_long` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "gifts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `gifts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `categ` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `price` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` INTEGER(32) NOT NULL,
    `gift` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tags` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "market"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `market` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `product_category` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `product_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `product_cover` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `product_location` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `price` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `views` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "market_favorites"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `market_favorites` (
    `id` INTEGER(40) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `product_id` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "market_pictures"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `market_pictures` (
    `id` INTEGER(40) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `size` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `type` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `product_id` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` INTEGER(20) NOT NULL AUTO_INCREMENT,
    `msg` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `fromUser` INTEGER(9) NOT NULL DEFAULT 0,
    `toUser` INTEGER(9) NOT NULL DEFAULT 0,
    `time` INTEGER(9) NOT NULL DEFAULT 0,
    `lastby` INTEGER(99) NOT NULL DEFAULT 0,
    `read` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `deleteby` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `hidden` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `shared` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
    `bg` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "messages_typing"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages_typing` (
    `id` INTEGER(20) NOT NULL AUTO_INCREMENT,
    `fromUser` INTEGER(9) NOT NULL DEFAULT 0,
    `toUser` INTEGER(9) NOT NULL DEFAULT 0,
    `typing` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "messenger_colors"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `messenger_colors` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `recipient` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `color` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '#2196F3',
    `text` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "messenger_nicknames"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `messenger_nicknames` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `recipientid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `nickname` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `text` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "messenger_settings"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `messenger_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `recipient` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `settings` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL{ DEFAULT '{}'},
    `text` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_history"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_history` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `listen` INTEGER(33) NOT NULL,
    `user` INTEGER(40) NOT NULL DEFAULT 0,
    `song` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_my_music"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_my_music` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uploader` INTEGER(90) NOT NULL DEFAULT 0,
    `added` INTEGER(33) NOT NULL,
    `position` MEDIUMINT(9) NOT NULL DEFAULT 0,
    `owner` INTEGER(40) NOT NULL DEFAULT 0,
    `musid` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_playlists"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_playlists` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `added` INTEGER(33) NOT NULL,
    `owner` INTEGER(40) NOT NULL DEFAULT 0,
    `name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `playcount` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `originalpid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `favorite_cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updates` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_playlists_pos"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_playlists_pos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `position` MEDIUMINT(9) NOT NULL DEFAULT 0,
    `trackid` INTEGER(255) NOT NULL,
    `playlistid` INTEGER(40) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_purchased"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_purchased` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user` INTEGER(40) NOT NULL DEFAULT 0,
    `song` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_songs"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_songs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `artist` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `time` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `album` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `uploader` INTEGER(90) NOT NULL DEFAULT 0,
    `path` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(33) NOT NULL,
    `cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `year` VARCHAR(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `genre` VARCHAR(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `deleted` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `video` VARCHAR(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `language` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'unknown',
    `video_community` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "music_stars"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `music_stars` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `artist` INTEGER(255) NOT NULL,
    `star` INTEGER(33) NOT NULL,
    `user` INTEGER(40) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `userid` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `item_id` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `type` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `time` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `read` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `dropdown_seen` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `page_id` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `json` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `type` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "photo_rate"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `photo_rate` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `id_photo` INTEGER(11) NOT NULL,
    `userid` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `rate` INTEGER(11) NOT NULL,
    `dt_rated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "poll_questions"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `poll_questions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `question` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `color_id` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `type` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'text',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `settings` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `privacy` ENUM('public','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'public',
    `schedule` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `views` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `shared` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `pinned` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `origin_id` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "posts_posters"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts_posters` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `filename` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `type` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'picture',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "questions"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `questions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `question` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "reactions"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `reactions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `itemid` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `userid` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `reaction` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `type` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `item_deleted` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "report"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `report` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `type_id` INTEGER(50) NOT NULL DEFAULT 0,
    `report_by` INTEGER(50) NOT NULL DEFAULT 0,
    `added` INTEGER(32) NOT NULL DEFAULT 0,
    `seen` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
    `reason` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'not_specified',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "shared_links"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `shared_links` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `byuser` INTEGER(99) NOT NULL,
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(40) NOT NULL DEFAULT 0,
    `embera` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `post_id` VARCHAR(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `available` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "slideshow"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `slideshow` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `enabled` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `options` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "stories"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `stories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `public` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "stories_files"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `stories_files` (
    `id` INTEGER(40) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `type` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `story_id` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "story_views"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `story_views` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `story_id` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `added` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "tags"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tags` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `itemid` INTEGER(99) NOT NULL,
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `type` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `userid` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "terms"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `terms` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `markup` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `page` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `surname` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `fullname` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `email` VARCHAR(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `password` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `real_pass` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `birthday` DATE NOT NULL,
    `gender` ENUM('male','female') COLLATE utf8mb4_0900_ai_ci,
    `last_login` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `secret` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
    `editsecret` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
    `status` ENUM('confirmed','pending') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'pending',
    `online` INTEGER(60) NOT NULL DEFAULT 0,
    `theme` INTEGER(10) NOT NULL DEFAULT 0,
    `username` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `search` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `class` ENUM('UC_MODERATOR','UC_ADMINISTRATOR','UC_SYSOP','UC_USER') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'UC_USER',
    `added` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `private` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `privacy_age` ENUM('everyone','friends','only_me') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `privacy_apps` ENUM('everyone','friends','only_me') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `privacy_love` ENUM('everyone','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `allow_tag_photos` ENUM('friends','nobody') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'friends',
    `allow_tag_posts` ENUM('friends','nobody') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'friends',
    `allow_share_myphotos` ENUM('everyone','friends','nobody') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `allow_comment_myphotos` ENUM('everyone','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `allow_send_pm` ENUM('everyone','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `display_online` ENUM('true','false') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'true',
    `balance` INTEGER(99) NOT NULL DEFAULT 0,
    `political_views` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `world_view` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `personal_priority` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `important_in_others` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `views_on_smoking` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `views_on_alcohol` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `language` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'en',
    `show_embera` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    `auto_play_videos` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `ip` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `location` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `location_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `phone` VARCHAR(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `secret_code` VARCHAR(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `interests` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `quotes` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `aboutme` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `hobby` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `text_post` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `notifications_settings` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `profile_photo` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "users_books"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `users_books` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `book_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `book_cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `book_id` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `page_id` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "users_movies"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `users_movies` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `movie_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `movie_cover` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `movie_id` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `page_id` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "albums"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `albums` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(40) NOT NULL,
    `name` VARCHAR(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `cover` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `visible_to` ENUM('everyone','only_me','friends') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'everyone',
    `video` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `removable` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    `origin` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `origin_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "blacklist"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `blacklist` (
    `id` INTEGER(99) NOT NULL AUTO_INCREMENT,
    `employer` INTEGER(40) UNSIGNED NOT NULL DEFAULT 0,
    `userid` INTEGER(40) UNSIGNED NOT NULL DEFAULT 0,
    `added` INTEGER(40) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` INTEGER(255) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(255) NOT NULL,
    `itemid` INTEGER(255) NOT NULL,
    `categ` VARCHAR(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `added` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `updated` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `available` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'yes',
    `item_type` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "deleted_photos"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `deleted_photos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `photoid` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `userid` INTEGER(33) NOT NULL,
    `time` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `albumid` INTEGER(255) NOT NULL DEFAULT 0,
    `padded` VARCHAR(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `extension` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `size` INTEGER(90) NOT NULL,
    `position` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `info` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "deleted_videos"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `deleted_videos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `time` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `videoid` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(40) NOT NULL DEFAULT 0,
    `size` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `extension` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `albumid` INTEGER(99) NOT NULL DEFAULT 0,
    `userid` INTEGER(160) NOT NULL DEFAULT 0,
    `tags` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `views` INTEGER(255) NOT NULL DEFAULT 0,
    `external` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `dur` VARCHAR(62) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "feed_favorite_users"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `feed_favorite_users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(90) NOT NULL DEFAULT 0,
    `fvid` INTEGER(90) NOT NULL DEFAULT 0,
    `added` INTEGER(33) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "friends"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `friends` (
    `id` INTEGER(255) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(99) NOT NULL,
    `friendid` INTEGER(99) NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `status` ENUM('confirmed','pending') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'pending',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "guests"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `guests` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(40) NOT NULL DEFAULT 0,
    `guestid` INTEGER(33) NOT NULL,
    `added` INTEGER(33) NOT NULL DEFAULT 0,
    `new` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci DEFAULT 'yes',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "ip_log"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `ip_log` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ip` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `userid` INTEGER(99) NOT NULL DEFAULT 0,
    `time` INTEGER(40) NOT NULL DEFAULT 0,
    `device_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "items_rating"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `items_rating` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `item_id` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rating` INTEGER(11) NOT NULL,
    `item_type` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `userid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "my_apps"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `my_apps` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `appid` INTEGER(99) NOT NULL,
    `userid` INTEGER(99) NOT NULL DEFAULT 0,
    `added` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "nearby_people"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `nearby_people` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(99) NOT NULL DEFAULT 0,
    `lat` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `long` VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `time` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "photos"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `photos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(40) NOT NULL,
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `albumid` INTEGER(90) NOT NULL,
    `size` INTEGER(90) NOT NULL DEFAULT 0,
    `extension` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `position` MEDIUMINT(9) NOT NULL DEFAULT 0,
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `views` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `info` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `origin_id` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "poll_answers"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `poll_answers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `question_id` INTEGER(11) NOT NULL,
    `option_id` INTEGER(11) NOT NULL,
    `user_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "poll_options"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `poll_options` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `question_id` INTEGER(11) NOT NULL,
    `option` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "search_history"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `search_history` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(190) NOT NULL DEFAULT 0,
    `added` INTEGER(33) NOT NULL,
    `owner` INTEGER(190) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "slideshow_imgs"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `slideshow_imgs` (
    `id` INTEGER(99) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(40) NOT NULL,
    `added` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `position` MEDIUMINT(9) NOT NULL DEFAULT 0,
    `ex` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `s3` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "themes"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `themes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `photo` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `body` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `kn` ENUM('true','false') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'false',
    `userid` INTEGER(99) NOT NULL DEFAULT 0,
    `added` INTEGER(40) NOT NULL DEFAULT 0,
    `ext` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `position` VARCHAR(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "user_gifts"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_gifts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `gift_id` INTEGER(99) NOT NULL,
    `descr` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(32) NOT NULL,
    `fromuser` INTEGER(99) NOT NULL,
    `private` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `anonym` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `userid` INTEGER(99) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "videos"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `videos` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `filename` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `added` INTEGER(40) NOT NULL DEFAULT 0,
    `size` VARCHAR(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `extension` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `albumid` INTEGER(99) NOT NULL DEFAULT 0,
    `userid` INTEGER(160) NOT NULL DEFAULT 0,
    `views` INTEGER(255) NOT NULL DEFAULT 0,
    `external` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `dur` VARCHAR(62) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
    `s3` ENUM('yes','no') COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no',
    `width` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `height` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `origin` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `tags` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `origin_id` VARCHAR(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT null,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `albums` ADD CONSTRAINT `users_albums` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `apps_covers` ADD CONSTRAINT `apps_apps_covers` 
    FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`);

ALTER TABLE `blacklist` ADD CONSTRAINT `users_blacklist` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `users_comments` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `deleted_photos` ADD CONSTRAINT `albums_deleted_photos` 
    FOREIGN KEY (`albumid`) REFERENCES `albums` (`id`);

ALTER TABLE `deleted_photos` ADD CONSTRAINT `users_deleted_photos` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `deleted_videos` ADD CONSTRAINT `albums_deleted_videos` 
    FOREIGN KEY (`albumid`) REFERENCES `albums` (`id`);

ALTER TABLE `deleted_videos` ADD CONSTRAINT `users_deleted_videos` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `feed_favorite_users` ADD CONSTRAINT `users_feed_favorite_users` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `friends` ADD CONSTRAINT `users_friends` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `guests` ADD CONSTRAINT `users_guests` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `ip_log` ADD CONSTRAINT `users_ip_log` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `items_rating` ADD CONSTRAINT `users_items_rating` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `my_apps` ADD CONSTRAINT `apps_my_apps` 
    FOREIGN KEY (`appid`) REFERENCES `apps` (`id`);

ALTER TABLE `my_apps` ADD CONSTRAINT `users_my_apps` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `nearby_people` ADD CONSTRAINT `users_nearby_people` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `photos` ADD CONSTRAINT `albums_photos` 
    FOREIGN KEY (`albumid`) REFERENCES `albums` (`id`);

ALTER TABLE `photos` ADD CONSTRAINT `users_photos` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `poll_answers` ADD CONSTRAINT `questions_poll_answers` 
    FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

ALTER TABLE `poll_options` ADD CONSTRAINT `questions_poll_options` 
    FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

ALTER TABLE `search_history` ADD CONSTRAINT `users_search_history` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `slideshow_imgs` ADD CONSTRAINT `users_slideshow_imgs` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `themes` ADD CONSTRAINT `users_themes` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `user_gifts` ADD CONSTRAINT `gifts_user_gifts` 
    FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`);

ALTER TABLE `user_gifts` ADD CONSTRAINT `users_user_gifts` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `videos` ADD CONSTRAINT `albums_videos` 
    FOREIGN KEY (`albumid`) REFERENCES `albums` (`id`);

ALTER TABLE `videos` ADD CONSTRAINT `users_videos` 
    FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
