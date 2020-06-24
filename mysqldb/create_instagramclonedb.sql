# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          instagramclonedb.dez                            #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:30                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "block"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `block` (
    `block_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `block_by` INTEGER(11) NOT NULL,
    `block_to` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`block_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "comment_likes"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `comment_likes` (
    `comment_like_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `like_by` INTEGER(11) NOT NULL,
    `comment_id` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`comment_like_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "conversations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `conversations` (
    `con_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_one` INTEGER(11) NOT NULL,
    `user_two` INTEGER(11) NOT NULL,
    `comb_users` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`con_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "favourites"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `favourites` (
    `fav_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fav_by` INTEGER(11) NOT NULL,
    `user` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`fav_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "follow_system"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `follow_system` (
    `follow_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `follow_by` INTEGER(11) NOT NULL,
    `follow_by_u` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `follow_to` INTEGER(11) NOT NULL,
    `follow_to_u` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`follow_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "group_con"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `group_con` (
    `grp_con_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` DATETIME NOT NULL,
    `admin` INTEGER(11) NOT NULL,
    PRIMARY KEY (`grp_con_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "group_con_members"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `group_con_members` (
    `grp_con_mem_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `grp_con_id` INTEGER(11) NOT NULL,
    `members` INTEGER(11) NOT NULL,
    PRIMARY KEY (`grp_con_mem_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "group_members"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `group_members` (
    `group_mem_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `group_id` INTEGER(11) NOT NULL,
    `group_member` INTEGER(11) NOT NULL,
    `added_by` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`group_mem_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "groups"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `groups` (
    `group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `grp_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `grp_bio` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `grp_avatar` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `grp_admin` INTEGER(11) NOT NULL,
    `grp_privacy` ENUM('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
    `grp_time` DATETIME NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "grpconunreads"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `grpconunreads` (
    `gru_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `grp_con_id` INTEGER(11) NOT NULL,
    `gcu_by` INTEGER(11) NOT NULL,
    `member` INTEGER(11) NOT NULL,
    `gcu_mssg` INTEGER(11) NOT NULL,
    PRIMARY KEY (`gru_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invitegrp"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `invitegrp` (
    `inviteGrpId` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `inviteGrp` INTEGER(11) NOT NULL,
    `inviteGrpBy` INTEGER(11) NOT NULL,
    `inviteGrpTo` INTEGER(11) NOT NULL,
    `inviteGrpTime` DATETIME NOT NULL,
    PRIMARY KEY (`inviteGrpId`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "message"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `message` (
    `message_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `con_id` INTEGER(11) NOT NULL,
    `grp_con_id` INTEGER(11) NOT NULL,
    `mssg_by` INTEGER(11) NOT NULL,
    `mssg_to` INTEGER(11) NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` ENUM('text','image','sticker','name_change','avatar_change','member_add','leave_grp_con','removed_grp_con','admin_change') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
    `mssg_of` ENUM('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT user,
    `time` DATETIME NOT NULL,
    `status` ENUM('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
    PRIMARY KEY (`message_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "profile_views"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `profile_views` (
    `view_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `view_from` INTEGER(11) NOT NULL,
    `view_to` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`view_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "recommends"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `recommends` (
    `recommend_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `recommend_by` INTEGER(11) NOT NULL,
    `recommend_to` INTEGER(11) NOT NULL,
    `recommend_of` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`recommend_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `firstname` VARCHAR(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `surname` VARCHAR(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instagram` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `youtube` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `website` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `mobile` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `bio` VARCHAR(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` ENUM('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
    `signup` DATETIME NOT NULL,
    `email_activated` ENUM('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
    `last_login` DATETIME NOT NULL,
    `pri_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pri_os` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pri_browser` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_private"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_private` (
    `e_p_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `options` ENUM('public','private') COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`e_p_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "login"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `login` (
    `login_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` DATETIME NOT NULL,
    `os` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `browser` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `logout` DATETIME NOT NULL,
    PRIMARY KEY (`login_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "mobile_private"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `mobile_private` (
    `m_p_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `options` ENUM('private','public') COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`m_p_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "post"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `post` (
    `post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `type` ENUM('text','image','video','audio','link','document','location') COLLATE utf8mb4_unicode_ci NOT NULL,
    `post_of` ENUM('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT user,
    `grp_id` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    `font_size` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "post_comments"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `post_comments` (
    `post_comments_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `data` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` ENUM('text','image','video','audio','link','document','location','sticker') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`post_comments_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "post_likes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `post_likes` (
    `post_likes_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_like_by` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`post_likes_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shares"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `shares` (
    `share_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `share_by` INTEGER(11) NOT NULL,
    `share_to` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `share_time` DATETIME NOT NULL,
    PRIMARY KEY (`share_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taggings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `taggings` (
    `tagging_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `taggings` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `taggings_id` INTEGER(11) NOT NULL,
    `taggings_time` DATETIME NOT NULL,
    PRIMARY KEY (`tagging_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tags"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tags` (
    `tag_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `tags` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`tag_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "text_post"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `text_post` (
    `text_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `text` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`text_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "video_post"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `video_post` (
    `video_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `video` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`video_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "audio_post"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `audio_post` (
    `audio_post_Id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `audio` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`audio_post_Id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "bookmarks"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `bookmarks` (
    `bkmrk_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `bookmark_time` DATETIME NOT NULL,
    PRIMARY KEY (`bkmrk_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "doc_post"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `doc_post` (
    `doc_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `doc` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`doc_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "hashtag"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `hashtag` (
    `hashtag_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `hashtag` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `src` ENUM('post','post_comment') COLLATE utf8mb4_unicode_ci NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `comment_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    PRIMARY KEY (`hashtag_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "image_post"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `image_post` (
    `image_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `filter` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
    PRIMARY KEY (`image_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "link_post"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `link_post` (
    `link_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `text` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link_url` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link_src` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`link_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "loc_post"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `loc_post` (
    `loc_post_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11) NOT NULL,
    `loc` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `about` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`loc_post_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `noti_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `notify_by` INTEGER(11) NOT NULL,
    `type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `notify_to` INTEGER(11) NOT NULL,
    `notify_of` INTEGER(11) NOT NULL,
    `post_id` INTEGER(11) NOT NULL,
    `comment_id` INTEGER(11) NOT NULL,
    `time` DATETIME NOT NULL,
    `status` ENUM('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
    PRIMARY KEY (`noti_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `audio_post` ADD CONSTRAINT `post_audio_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `bookmarks` ADD CONSTRAINT `post_bookmarks` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `bookmarks` ADD CONSTRAINT `users_bookmarks` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `doc_post` ADD CONSTRAINT `post_doc_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `email_private` ADD CONSTRAINT `users_email_private` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `group_con_members` ADD CONSTRAINT `conversations_group_con_members` 
    FOREIGN KEY (`grp_con_id`) REFERENCES `conversations` (`con_id`);

ALTER TABLE `group_con_members` ADD CONSTRAINT `group_con_group_con_members` 
    FOREIGN KEY (`grp_con_id`) REFERENCES `group_con` (`grp_con_id`);

ALTER TABLE `grpconunreads` ADD CONSTRAINT `conversations_grpconunreads` 
    FOREIGN KEY (`grp_con_id`) REFERENCES `conversations` (`con_id`);

ALTER TABLE `grpconunreads` ADD CONSTRAINT `group_con_grpconunreads` 
    FOREIGN KEY (`grp_con_id`) REFERENCES `group_con` (`grp_con_id`);

ALTER TABLE `hashtag` ADD CONSTRAINT `post_hashtag` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `hashtag` ADD CONSTRAINT `users_hashtag` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `image_post` ADD CONSTRAINT `post_image_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `link_post` ADD CONSTRAINT `post_link_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `loc_post` ADD CONSTRAINT `post_loc_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `login` ADD CONSTRAINT `users_login` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `message` ADD CONSTRAINT `conversations_message` 
    FOREIGN KEY (`con_id`) REFERENCES `conversations` (`con_id`);

ALTER TABLE `message` ADD CONSTRAINT `group_con_message` 
    FOREIGN KEY (`grp_con_id`) REFERENCES `group_con` (`grp_con_id`);

ALTER TABLE `mobile_private` ADD CONSTRAINT `users_mobile_private` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `post_notifications` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `post` ADD CONSTRAINT `users_post` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `post_comments` ADD CONSTRAINT `post_post_comments` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `post_comments` ADD CONSTRAINT `users_post_comments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `post_likes` ADD CONSTRAINT `post_post_likes` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `shares` ADD CONSTRAINT `post_shares` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `taggings` ADD CONSTRAINT `post_taggings` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `tags` ADD CONSTRAINT `users_tags` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `text_post` ADD CONSTRAINT `post_text_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

ALTER TABLE `video_post` ADD CONSTRAINT `post_video_post` 
    FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);
