# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          myglipboard_development.dez                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:00                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "votes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `votes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `votes` DROP PRIMARY KEY;

DROP TABLE `votes`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `sign_in_count` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `reputation` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "tags"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tags` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `tags` ALTER COLUMN `taggings_count` DROP DEFAULT;

ALTER TABLE `tags` DROP PRIMARY KEY;

DROP TABLE `tags`;

# ---------------------------------------------------------------------- #
# Drop table "taggings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `taggings` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `taggings` DROP PRIMARY KEY;

DROP TABLE `taggings`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `schema_migrations` DROP PRIMARY KEY;

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "responses"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `responses` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `responses` DROP PRIMARY KEY;

DROP TABLE `responses`;

# ---------------------------------------------------------------------- #
# Drop table "remarks"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `remarks` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `remarks` DROP PRIMARY KEY;

DROP TABLE `remarks`;

# ---------------------------------------------------------------------- #
# Drop table "relationships"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `relationships` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `relationships` DROP PRIMARY KEY;

DROP TABLE `relationships`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `sticky` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `comments_disabled` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "podcasts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `podcasts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `podcasts` DROP PRIMARY KEY;

DROP TABLE `podcasts`;

# ---------------------------------------------------------------------- #
# Drop table "participations"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `participations` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `participations` DROP PRIMARY KEY;

DROP TABLE `participations`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "notations"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notations` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `notations` DROP PRIMARY KEY;

DROP TABLE `notations`;

# ---------------------------------------------------------------------- #
# Drop table "milestones"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `milestones` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `milestones` DROP PRIMARY KEY;

DROP TABLE `milestones`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `messages` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "mentorships"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `mentorships` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `mentorships` DROP PRIMARY KEY;

DROP TABLE `mentorships`;

# ---------------------------------------------------------------------- #
# Drop table "memberships"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `memberships` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `memberships` ALTER COLUMN `role` DROP DEFAULT;

ALTER TABLE `memberships` DROP PRIMARY KEY;

DROP TABLE `memberships`;

# ---------------------------------------------------------------------- #
# Drop table "logs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `logs` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `logs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `logs` DROP PRIMARY KEY;

DROP TABLE `logs`;

# ---------------------------------------------------------------------- #
# Drop table "groups"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `groups`;

# ---------------------------------------------------------------------- #
# Drop table "glips"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `glips` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `glips` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `glips` ALTER COLUMN `verified` DROP DEFAULT;

ALTER TABLE `glips` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `glips` ALTER COLUMN `privacy` DROP DEFAULT;

ALTER TABLE `glips` DROP PRIMARY KEY;

DROP TABLE `glips`;

# ---------------------------------------------------------------------- #
# Drop table "episodes"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `episodes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `episodes` DROP PRIMARY KEY;

DROP TABLE `episodes`;

# ---------------------------------------------------------------------- #
# Drop table "conversations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `conversations` DROP PRIMARY KEY;

DROP TABLE `conversations`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "ckeditor_assets"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ckeditor_assets` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `ckeditor_assets` DROP PRIMARY KEY;

DROP TABLE `ckeditor_assets`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "blogs"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `blogs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `blogs` DROP PRIMARY KEY;

DROP TABLE `blogs`;

# ---------------------------------------------------------------------- #
# Drop table "articles"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `articles` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `articles` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `articles` ALTER COLUMN `feature` DROP DEFAULT;

ALTER TABLE `articles` ALTER COLUMN `blog` DROP DEFAULT;

ALTER TABLE `articles` DROP PRIMARY KEY;

DROP TABLE `articles`;

# ---------------------------------------------------------------------- #
# Drop table "ar_internal_metadata"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ar_internal_metadata` DROP PRIMARY KEY;

DROP TABLE `ar_internal_metadata`;
