# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          instagramclonedb.dez                            #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:30                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `audio_post` DROP FOREIGN KEY `post_audio_post`;

ALTER TABLE `bookmarks` DROP FOREIGN KEY `post_bookmarks`;

ALTER TABLE `bookmarks` DROP FOREIGN KEY `users_bookmarks`;

ALTER TABLE `doc_post` DROP FOREIGN KEY `post_doc_post`;

ALTER TABLE `email_private` DROP FOREIGN KEY `users_email_private`;

ALTER TABLE `group_con_members` DROP FOREIGN KEY `conversations_group_con_members`;

ALTER TABLE `group_con_members` DROP FOREIGN KEY `group_con_group_con_members`;

ALTER TABLE `grpconunreads` DROP FOREIGN KEY `conversations_grpconunreads`;

ALTER TABLE `grpconunreads` DROP FOREIGN KEY `group_con_grpconunreads`;

ALTER TABLE `hashtag` DROP FOREIGN KEY `post_hashtag`;

ALTER TABLE `hashtag` DROP FOREIGN KEY `users_hashtag`;

ALTER TABLE `image_post` DROP FOREIGN KEY `post_image_post`;

ALTER TABLE `link_post` DROP FOREIGN KEY `post_link_post`;

ALTER TABLE `loc_post` DROP FOREIGN KEY `post_loc_post`;

ALTER TABLE `login` DROP FOREIGN KEY `users_login`;

ALTER TABLE `message` DROP FOREIGN KEY `conversations_message`;

ALTER TABLE `message` DROP FOREIGN KEY `group_con_message`;

ALTER TABLE `mobile_private` DROP FOREIGN KEY `users_mobile_private`;

ALTER TABLE `notifications` DROP FOREIGN KEY `post_notifications`;

ALTER TABLE `post` DROP FOREIGN KEY `users_post`;

ALTER TABLE `post_comments` DROP FOREIGN KEY `post_post_comments`;

ALTER TABLE `post_comments` DROP FOREIGN KEY `users_post_comments`;

ALTER TABLE `post_likes` DROP FOREIGN KEY `post_post_likes`;

ALTER TABLE `shares` DROP FOREIGN KEY `post_shares`;

ALTER TABLE `taggings` DROP FOREIGN KEY `post_taggings`;

ALTER TABLE `tags` DROP FOREIGN KEY `users_tags`;

ALTER TABLE `text_post` DROP FOREIGN KEY `post_text_post`;

ALTER TABLE `video_post` DROP FOREIGN KEY `post_video_post`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `noti_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "loc_post"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `loc_post` MODIFY `loc_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `loc_post` DROP PRIMARY KEY;

DROP TABLE `loc_post`;

# ---------------------------------------------------------------------- #
# Drop table "link_post"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `link_post` MODIFY `link_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `link_post` DROP PRIMARY KEY;

DROP TABLE `link_post`;

# ---------------------------------------------------------------------- #
# Drop table "image_post"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `image_post` MODIFY `image_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `image_post` ALTER COLUMN `filter` DROP DEFAULT;

ALTER TABLE `image_post` DROP PRIMARY KEY;

DROP TABLE `image_post`;

# ---------------------------------------------------------------------- #
# Drop table "hashtag"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `hashtag` MODIFY `hashtag_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `hashtag` DROP PRIMARY KEY;

DROP TABLE `hashtag`;

# ---------------------------------------------------------------------- #
# Drop table "doc_post"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `doc_post` MODIFY `doc_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `doc_post` DROP PRIMARY KEY;

DROP TABLE `doc_post`;

# ---------------------------------------------------------------------- #
# Drop table "bookmarks"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bookmarks` MODIFY `bkmrk_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bookmarks` DROP PRIMARY KEY;

DROP TABLE `bookmarks`;

# ---------------------------------------------------------------------- #
# Drop table "audio_post"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `audio_post` MODIFY `audio_post_Id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `audio_post` DROP PRIMARY KEY;

DROP TABLE `audio_post`;

# ---------------------------------------------------------------------- #
# Drop table "video_post"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `video_post` MODIFY `video_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `video_post` DROP PRIMARY KEY;

DROP TABLE `video_post`;

# ---------------------------------------------------------------------- #
# Drop table "text_post"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `text_post` MODIFY `text_post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `text_post` DROP PRIMARY KEY;

DROP TABLE `text_post`;

# ---------------------------------------------------------------------- #
# Drop table "tags"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tags` MODIFY `tag_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tags` DROP PRIMARY KEY;

DROP TABLE `tags`;

# ---------------------------------------------------------------------- #
# Drop table "taggings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `taggings` MODIFY `tagging_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `taggings` DROP PRIMARY KEY;

DROP TABLE `taggings`;

# ---------------------------------------------------------------------- #
# Drop table "shares"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shares` MODIFY `share_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shares` DROP PRIMARY KEY;

DROP TABLE `shares`;

# ---------------------------------------------------------------------- #
# Drop table "post_likes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `post_likes` MODIFY `post_likes_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `post_likes` DROP PRIMARY KEY;

DROP TABLE `post_likes`;

# ---------------------------------------------------------------------- #
# Drop table "post_comments"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `post_comments` MODIFY `post_comments_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `post_comments` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `post_comments` DROP PRIMARY KEY;

DROP TABLE `post_comments`;

# ---------------------------------------------------------------------- #
# Drop table "post"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `post` MODIFY `post_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `post` ALTER COLUMN `post_of` DROP DEFAULT;

ALTER TABLE `post` DROP PRIMARY KEY;

DROP TABLE `post`;

# ---------------------------------------------------------------------- #
# Drop table "mobile_private"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `mobile_private` MODIFY `m_p_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `mobile_private` DROP PRIMARY KEY;

DROP TABLE `mobile_private`;

# ---------------------------------------------------------------------- #
# Drop table "login"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `login` MODIFY `login_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `login` DROP PRIMARY KEY;

DROP TABLE `login`;

# ---------------------------------------------------------------------- #
# Drop table "email_private"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_private` MODIFY `e_p_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_private` DROP PRIMARY KEY;

DROP TABLE `email_private`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_activated` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "recommends"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `recommends` MODIFY `recommend_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `recommends` DROP PRIMARY KEY;

DROP TABLE `recommends`;

# ---------------------------------------------------------------------- #
# Drop table "profile_views"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `profile_views` MODIFY `view_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `profile_views` DROP PRIMARY KEY;

DROP TABLE `profile_views`;

# ---------------------------------------------------------------------- #
# Drop table "message"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message` MODIFY `message_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `message` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `message` ALTER COLUMN `mssg_of` DROP DEFAULT;

ALTER TABLE `message` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `message` DROP PRIMARY KEY;

DROP TABLE `message`;

# ---------------------------------------------------------------------- #
# Drop table "invitegrp"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invitegrp` MODIFY `inviteGrpId` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invitegrp` DROP PRIMARY KEY;

DROP TABLE `invitegrp`;

# ---------------------------------------------------------------------- #
# Drop table "grpconunreads"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `grpconunreads` MODIFY `gru_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `grpconunreads` DROP PRIMARY KEY;

DROP TABLE `grpconunreads`;

# ---------------------------------------------------------------------- #
# Drop table "groups"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `groups` ALTER COLUMN `grp_privacy` DROP DEFAULT;

DROP TABLE `groups`;

# ---------------------------------------------------------------------- #
# Drop table "group_members"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `group_members` MODIFY `group_mem_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `group_members` DROP PRIMARY KEY;

DROP TABLE `group_members`;

# ---------------------------------------------------------------------- #
# Drop table "group_con_members"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `group_con_members` MODIFY `grp_con_mem_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `group_con_members` DROP PRIMARY KEY;

DROP TABLE `group_con_members`;

# ---------------------------------------------------------------------- #
# Drop table "group_con"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `group_con` MODIFY `grp_con_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `group_con` DROP PRIMARY KEY;

DROP TABLE `group_con`;

# ---------------------------------------------------------------------- #
# Drop table "follow_system"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `follow_system` MODIFY `follow_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `follow_system` DROP PRIMARY KEY;

DROP TABLE `follow_system`;

# ---------------------------------------------------------------------- #
# Drop table "favourites"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `favourites` MODIFY `fav_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `favourites` DROP PRIMARY KEY;

DROP TABLE `favourites`;

# ---------------------------------------------------------------------- #
# Drop table "conversations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations` MODIFY `con_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `conversations` DROP PRIMARY KEY;

DROP TABLE `conversations`;

# ---------------------------------------------------------------------- #
# Drop table "comment_likes"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comment_likes` MODIFY `comment_like_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `comment_likes` DROP PRIMARY KEY;

DROP TABLE `comment_likes`;

# ---------------------------------------------------------------------- #
# Drop table "block"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `block` MODIFY `block_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `block` DROP PRIMARY KEY;

DROP TABLE `block`;
