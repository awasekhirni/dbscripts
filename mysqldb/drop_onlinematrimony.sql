# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinematrimony.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:16                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `caste` DROP FOREIGN KEY `religion_caste`;

ALTER TABLE `deleted_member` DROP FOREIGN KEY `gender_deleted_member`;

ALTER TABLE `deleted_member` DROP FOREIGN KEY `message_deleted_member`;

ALTER TABLE `member` DROP FOREIGN KEY `deleted_member_member`;

ALTER TABLE `member` DROP FOREIGN KEY `gender_member`;

ALTER TABLE `member` DROP FOREIGN KEY `message_member`;

ALTER TABLE `message` DROP FOREIGN KEY `message_thread_message`;

ALTER TABLE `message_thread` DROP FOREIGN KEY `message_message_thread`;

ALTER TABLE `package_payment` DROP FOREIGN KEY `deleted_member_package_payment`;

ALTER TABLE `package_payment` DROP FOREIGN KEY `plan_package_payment`;

ALTER TABLE `plan` DROP FOREIGN KEY `message_plan`;

ALTER TABLE `state` DROP FOREIGN KEY `country_state`;

ALTER TABLE `sub_caste` DROP FOREIGN KEY `caste_sub_caste`;

# ---------------------------------------------------------------------- #
# Drop table "plan"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `plan` MODIFY `plan_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `plan` DROP PRIMARY KEY;

DROP TABLE `plan`;

# ---------------------------------------------------------------------- #
# Drop table "package_payment"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `package_payment` MODIFY `package_payment_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `package_payment` DROP PRIMARY KEY;

DROP TABLE `package_payment`;

# ---------------------------------------------------------------------- #
# Drop table "message_thread"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message_thread` MODIFY `message_thread_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `message_thread` DROP PRIMARY KEY;

DROP TABLE `message_thread`;

# ---------------------------------------------------------------------- #
# Drop table "message"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message` MODIFY `message_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `message` DROP PRIMARY KEY;

DROP TABLE `message`;

# ---------------------------------------------------------------------- #
# Drop table "member"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `member` ALTER COLUMN `reported_by` DROP DEFAULT;

DROP TABLE `member`;

# ---------------------------------------------------------------------- #
# Drop table "deleted_member"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `deleted_member` ALTER COLUMN `reported_by` DROP DEFAULT;

ALTER TABLE `deleted_member` DROP PRIMARY KEY;

DROP TABLE `deleted_member`;

# ---------------------------------------------------------------------- #
# Drop table "sub_caste"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sub_caste` MODIFY `sub_caste_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sub_caste` DROP PRIMARY KEY;

DROP TABLE `sub_caste`;

# ---------------------------------------------------------------------- #
# Drop table "caste"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `caste` MODIFY `caste_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `caste` DROP PRIMARY KEY;

DROP TABLE `caste`;

# ---------------------------------------------------------------------- #
# Drop table "third_party_settings"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `third_party_settings` MODIFY `third_party_settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `third_party_settings` DROP PRIMARY KEY;

DROP TABLE `third_party_settings`;

# ---------------------------------------------------------------------- #
# Drop table "story_video"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `story_video` MODIFY `story_video_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `story_video` DROP PRIMARY KEY;

DROP TABLE `story_video`;

# ---------------------------------------------------------------------- #
# Drop table "state"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `state` MODIFY `state_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `state` ALTER COLUMN `country_id` DROP DEFAULT;

ALTER TABLE `state` DROP PRIMARY KEY;

DROP TABLE `state`;

# ---------------------------------------------------------------------- #
# Drop table "social_links"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `social_links` MODIFY `social_links_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `social_links` DROP PRIMARY KEY;

DROP TABLE `social_links`;

# ---------------------------------------------------------------------- #
# Drop table "site_language_list"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `site_language_list` MODIFY `site_language_list_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `site_language_list` DROP PRIMARY KEY;

DROP TABLE `site_language_list`;

# ---------------------------------------------------------------------- #
# Drop table "site_language"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `site_language` MODIFY `word_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `site_language` DROP PRIMARY KEY;

DROP TABLE `site_language`;

# ---------------------------------------------------------------------- #
# Drop table "role"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `role` MODIFY `role_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `role` DROP PRIMARY KEY;

DROP TABLE `role`;

# ---------------------------------------------------------------------- #
# Drop table "religion"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `religion` MODIFY `religion_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `religion` DROP PRIMARY KEY;

DROP TABLE `religion`;

# ---------------------------------------------------------------------- #
# Drop table "permission"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permission` MODIFY `permission_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `permission` DROP PRIMARY KEY;

DROP TABLE `permission`;

# ---------------------------------------------------------------------- #
# Drop table "on_behalf"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `on_behalf` MODIFY `on_behalf_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `on_behalf` DROP PRIMARY KEY;

DROP TABLE `on_behalf`;

# ---------------------------------------------------------------------- #
# Drop table "occupation"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `occupation` MODIFY `occupation_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `occupation` DROP PRIMARY KEY;

DROP TABLE `occupation`;

# ---------------------------------------------------------------------- #
# Drop table "marital_status"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `marital_status` MODIFY `marital_status_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `marital_status` DROP PRIMARY KEY;

DROP TABLE `marital_status`;

# ---------------------------------------------------------------------- #
# Drop table "language"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `language` MODIFY `language_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `language` DROP PRIMARY KEY;

DROP TABLE `language`;

# ---------------------------------------------------------------------- #
# Drop table "happy_story"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `happy_story` MODIFY `happy_story_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `happy_story` ALTER COLUMN `post_time` DROP DEFAULT;

ALTER TABLE `happy_story` DROP PRIMARY KEY;

DROP TABLE `happy_story`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_settings` MODIFY `general_settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "gender"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gender` MODIFY `gender_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `gender` DROP PRIMARY KEY;

DROP TABLE `gender`;

# ---------------------------------------------------------------------- #
# Drop table "frontend_settings"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `frontend_settings` MODIFY `frontend_settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `frontend_settings` DROP PRIMARY KEY;

DROP TABLE `frontend_settings`;

# ---------------------------------------------------------------------- #
# Drop table "family_value"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `family_value` MODIFY `family_value_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `family_value` DROP PRIMARY KEY;

DROP TABLE `family_value`;

# ---------------------------------------------------------------------- #
# Drop table "family_status"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `family_status` MODIFY `family_status_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `family_status` DROP PRIMARY KEY;

DROP TABLE `family_status`;

# ---------------------------------------------------------------------- #
# Drop table "email_template"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_template` MODIFY `email_template_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_template` DROP PRIMARY KEY;

DROP TABLE `email_template`;

# ---------------------------------------------------------------------- #
# Drop table "decision"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `decision` MODIFY `decision_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `decision` DROP PRIMARY KEY;

DROP TABLE `decision`;

# ---------------------------------------------------------------------- #
# Drop table "currency_settings"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency_settings` MODIFY `currency_settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `currency_settings` DROP PRIMARY KEY;

DROP TABLE `currency_settings`;

# ---------------------------------------------------------------------- #
# Drop table "country"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `country` MODIFY `country_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `country` DROP PRIMARY KEY;

DROP TABLE `country`;

# ---------------------------------------------------------------------- #
# Drop table "contact_message"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `contact_message` MODIFY `contact_message_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `contact_message` DROP PRIMARY KEY;

DROP TABLE `contact_message`;

# ---------------------------------------------------------------------- #
# Drop table "city"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `city` MODIFY `city_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `city` DROP PRIMARY KEY;

DROP TABLE `city`;

# ---------------------------------------------------------------------- #
# Drop table "business_settings"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `business_settings` MODIFY `business_settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `business_settings` DROP PRIMARY KEY;

DROP TABLE `business_settings`;

# ---------------------------------------------------------------------- #
# Drop table "admin"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin` MODIFY `admin_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `admin` DROP PRIMARY KEY;

DROP TABLE `admin`;
