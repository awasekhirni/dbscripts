# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          myupwork_development.dez                        #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:08                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `categories` DROP FOREIGN KEY `fk_rails_564eeef2fe`;

ALTER TABLE `companies` DROP FOREIGN KEY `fk_rails_036123791d`;

ALTER TABLE `company_images` DROP FOREIGN KEY `fk_rails_6dcf524eba`;

ALTER TABLE `education_details` DROP FOREIGN KEY `fk_rails_83dae34213`;

ALTER TABLE `experience_details` DROP FOREIGN KEY `fk_rails_88777614ec`;

ALTER TABLE `job_post_activities` DROP FOREIGN KEY `fk_rails_8e6d99b791`;

ALTER TABLE `job_post_activities` DROP FOREIGN KEY `fk_rails_f366406e22`;

ALTER TABLE `job_post_skill_sets` DROP FOREIGN KEY `fk_rails_1907922d8e`;

ALTER TABLE `job_post_skill_sets` DROP FOREIGN KEY `fk_rails_33fbf8152b`;

ALTER TABLE `job_posts` DROP FOREIGN KEY `fk_rails_2195c80c12`;

ALTER TABLE `job_posts` DROP FOREIGN KEY `fk_rails_3858cef379`;

ALTER TABLE `job_posts` DROP FOREIGN KEY `fk_rails_4fc6c084c5`;

ALTER TABLE `job_posts` DROP FOREIGN KEY `fk_rails_73ce73f3d3`;

ALTER TABLE `job_posts` DROP FOREIGN KEY `fk_rails_8242dd9497`;

ALTER TABLE `seeker_profiles` DROP FOREIGN KEY `fk_rails_2eeeefd390`;

ALTER TABLE `seeker_skill_sets` DROP FOREIGN KEY `fk_rails_89066233f0`;

ALTER TABLE `seeker_skill_sets` DROP FOREIGN KEY `fk_rails_c2099a3924`;

ALTER TABLE `user_logs` DROP FOREIGN KEY `fk_rails_903088cca6`;

ALTER TABLE `users` DROP FOREIGN KEY `fk_rails_a2f1461231`;

# ---------------------------------------------------------------------- #
# Drop table "job_post_skill_sets"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `job_post_skill_sets` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `job_post_skill_sets` DROP PRIMARY KEY;

DROP TABLE `job_post_skill_sets`;

# ---------------------------------------------------------------------- #
# Drop table "job_post_activities"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `job_post_activities` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `job_post_activities` DROP PRIMARY KEY;

DROP TABLE `job_post_activities`;

# ---------------------------------------------------------------------- #
# Drop table "experience_details"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `experience_details` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `experience_details` DROP PRIMARY KEY;

DROP TABLE `experience_details`;

# ---------------------------------------------------------------------- #
# Drop table "education_details"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `education_details` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `education_details` DROP PRIMARY KEY;

DROP TABLE `education_details`;

# ---------------------------------------------------------------------- #
# Drop table "user_logs"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_logs` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `user_logs` DROP PRIMARY KEY;

DROP TABLE `user_logs`;

# ---------------------------------------------------------------------- #
# Drop table "seeker_skill_sets"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `seeker_skill_sets` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `seeker_skill_sets` DROP PRIMARY KEY;

DROP TABLE `seeker_skill_sets`;

# ---------------------------------------------------------------------- #
# Drop table "seeker_profiles"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `seeker_profiles` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `seeker_profiles` DROP PRIMARY KEY;

DROP TABLE `seeker_profiles`;

# ---------------------------------------------------------------------- #
# Drop table "job_posts"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `job_posts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `job_posts` DROP PRIMARY KEY;

DROP TABLE `job_posts`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "user_types"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_types` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `user_types` DROP PRIMARY KEY;

DROP TABLE `user_types`;

# ---------------------------------------------------------------------- #
# Drop table "skill_sets"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `skill_sets` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `skill_sets` DROP PRIMARY KEY;

DROP TABLE `skill_sets`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `schema_migrations` DROP PRIMARY KEY;

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "job_types"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `job_types` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `job_types` DROP PRIMARY KEY;

DROP TABLE `job_types`;

# ---------------------------------------------------------------------- #
# Drop table "job_locations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `job_locations` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `job_locations` DROP PRIMARY KEY;

DROP TABLE `job_locations`;

# ---------------------------------------------------------------------- #
# Drop table "company_images"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `company_images` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `company_images` DROP PRIMARY KEY;

DROP TABLE `company_images`;

# ---------------------------------------------------------------------- #
# Drop table "companies"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `companies` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `companies` DROP PRIMARY KEY;

DROP TABLE `companies`;

# ---------------------------------------------------------------------- #
# Drop table "category_groups"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `category_groups` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `category_groups` DROP PRIMARY KEY;

DROP TABLE `category_groups`;

# ---------------------------------------------------------------------- #
# Drop table "business_streams"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `business_streams` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `business_streams` DROP PRIMARY KEY;

DROP TABLE `business_streams`;

# ---------------------------------------------------------------------- #
# Drop table "ar_internal_metadata"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ar_internal_metadata` DROP PRIMARY KEY;

DROP TABLE `ar_internal_metadata`;
