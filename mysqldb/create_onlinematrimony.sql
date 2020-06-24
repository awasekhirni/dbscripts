# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinematrimony.dez                             #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:16                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin` (
    `admin_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `role` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `timestamp` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`admin_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "business_settings"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `business_settings` (
    `business_settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `value` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`business_settings_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "city"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `city` (
    `city_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `state_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`city_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "contact_message"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `contact_message` (
    `contact_message_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `subject` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `timestamp` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `view` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reply` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `other` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`contact_message_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "country"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `country` (
    `country_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sortname` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phonecode` INTEGER(11) NOT NULL,
    PRIMARY KEY (`country_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currency_settings"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency_settings` (
    `currency_settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `symbol` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `exchange_rate` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `exchange_rate_def` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`currency_settings_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "decision"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `decision` (
    `decision_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`decision_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_template"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_template` (
    `email_template_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `body` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`email_template_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "family_status"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `family_status` (
    `family_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`family_status_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "family_value"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `family_value` (
    `family_value_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`family_value_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "frontend_settings"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `frontend_settings` (
    `frontend_settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`frontend_settings_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "gender"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `gender` (
    `gender_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`gender_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `general_settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`general_settings_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "happy_story"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `happy_story` (
    `happy_story_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `partner_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `posted_by` INTEGER(11) NOT NULL,
    `post_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `approval_status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`happy_story_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "language"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `language` (
    `language_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`language_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "marital_status"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `marital_status` (
    `marital_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`marital_status_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "occupation"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `occupation` (
    `occupation_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`occupation_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "on_behalf"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `on_behalf` (
    `on_behalf_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`on_behalf_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permission"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `permission` (
    `permission_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `codename` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `parent_status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`permission_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "religion"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `religion` (
    `religion_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`religion_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "role"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `role` (
    `role_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `permission` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`role_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "site_language"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `site_language` (
    `word_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `word` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `english` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Bangla` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Spanish` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Arabic` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `French` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Chinese` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `lang_7` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`word_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "site_language_list"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `site_language_list` (
    `site_language_list_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `db_field` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    PRIMARY KEY (`site_language_list_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "social_links"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `social_links` (
    `social_links_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `icon` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`social_links_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "state"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `state` (
    `state_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country_id` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`state_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "story_video"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `story_video` (
    `story_video_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `from` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `video_link` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `video_code` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `video_src` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `preview_image_name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `timestamp` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `story_video_uploader_id` INTEGER(11) NOT NULL,
    `story_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`story_video_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "third_party_settings"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `third_party_settings` (
    `third_party_settings_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `value` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`third_party_settings_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "caste"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `caste` (
    `caste_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `caste_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `religion_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`caste_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sub_caste"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sub_caste` (
    `sub_caste_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sub_caste_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `caste_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`sub_caste_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deleted_member"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `deleted_member` (
    `member_id` INTEGER(11) NOT NULL,
    `member_profile_id` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `first_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gender` INTEGER(11) NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_verification_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_verification_status` INTEGER(11),
    `mobile` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `is_closed` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date_of_birth` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `height` DECIMAL(10,2),
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `profile_image` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `introduction` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `basic_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `present_address` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `education_and_career` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `physical_attributes` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `hobbies_and_interest` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `personal_attitude_and_behavior` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `residency_information` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `spiritual_and_social_background` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `life_style` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `astronomic_information` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `permanent_address` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `family_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `additional_personal_details` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `partner_expectation` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `interest` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `short_list` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `followed` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ignored` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ignored_by` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gallery` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `happy_story` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `package_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payments_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `interested_by` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `follower` INTEGER(11) NOT NULL,
    `membership` INTEGER(11) NOT NULL,
    `notifications` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `profile_status` INTEGER(11) NOT NULL,
    `member_since` DATETIME NOT NULL,
    `express_interest` INTEGER(11) NOT NULL,
    `direct_messages` INTEGER(11) NOT NULL,
    `photo_gallery` INTEGER(11) NOT NULL,
    `profile_completion` INTEGER(11) NOT NULL,
    `is_blocked` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `privacy_status` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pic_privacy` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `report_profile` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `reported_by` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`member_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "member"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `member` (
    `member_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `member_profile_id` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `first_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gender` INTEGER(11) NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email_verification_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `email_verification_status` INTEGER(11),
    `mobile` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `is_closed` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date_of_birth` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `height` DECIMAL(10,2),
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `profile_image` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `introduction` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `basic_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `present_address` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `education_and_career` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `physical_attributes` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `hobbies_and_interest` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `personal_attitude_and_behavior` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `residency_information` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `spiritual_and_social_background` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `life_style` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `astronomic_information` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `permanent_address` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `family_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `additional_personal_details` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `partner_expectation` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `interest` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `short_list` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `followed` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ignored` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ignored_by` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gallery` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `happy_story` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `package_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payments_info` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `interested_by` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `follower` INTEGER(11) NOT NULL,
    `membership` INTEGER(11) NOT NULL,
    `notifications` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `profile_status` INTEGER(11) NOT NULL,
    `member_since` DATETIME NOT NULL,
    `express_interest` INTEGER(11) NOT NULL,
    `direct_messages` INTEGER(11) NOT NULL,
    `photo_gallery` INTEGER(11) NOT NULL,
    `profile_completion` INTEGER(11) NOT NULL,
    `is_blocked` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `privacy_status` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pic_privacy` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `report_profile` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reported_by` INTEGER(11) DEFAULT 0
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "message"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `message` (
    `message_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `message_thread_id` INTEGER(11) NOT NULL,
    `message_from` INTEGER(11) NOT NULL,
    `message_to` INTEGER(11) NOT NULL,
    `message_text` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message_time` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`message_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "message_thread"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `message_thread` (
    `message_thread_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `message_thread_from` INTEGER(11) NOT NULL,
    `message_thread_to` INTEGER(11) NOT NULL,
    `message_thread_time` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message_to_seen` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `message_from_seen` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`message_thread_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "package_payment"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `package_payment` (
    `package_payment_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `plan_id` INTEGER(11) NOT NULL,
    `member_id` INTEGER(11) NOT NULL,
    `payment_type` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_details` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `amount` INTEGER(11) NOT NULL,
    `purchase_datetime` INTEGER(11) NOT NULL,
    `payment_code` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `custom_payment_method_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `custom_payment_method_transaction_id` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `custom_payment_method_comment` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `custom_payment_method_bill_copy` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `payment_timestamp` INTEGER(11) NOT NULL,
    `expire` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `expire_timestamp` INTEGER(11) NOT NULL,
    PRIMARY KEY (`package_payment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "plan"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `plan` (
    `plan_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `amount` DECIMAL(10) NOT NULL,
    `express_interest` INTEGER(11) NOT NULL,
    `direct_messages` INTEGER(11) NOT NULL,
    `photo_gallery` INTEGER(11) NOT NULL,
    `image` LONGTEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`plan_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `caste` ADD CONSTRAINT `religion_caste` 
    FOREIGN KEY (`religion_id`) REFERENCES `religion` (`religion_id`);

ALTER TABLE `deleted_member` ADD CONSTRAINT `gender_deleted_member` 
    FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `deleted_member` ADD CONSTRAINT `message_deleted_member` 
    FOREIGN KEY (`direct_messages`) REFERENCES `message` (`message_id`);

ALTER TABLE `member` ADD CONSTRAINT `deleted_member_member` 
    FOREIGN KEY (`member_id`) REFERENCES `deleted_member` (`member_id`);

ALTER TABLE `member` ADD CONSTRAINT `gender_member` 
    FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `member` ADD CONSTRAINT `message_member` 
    FOREIGN KEY (`direct_messages`) REFERENCES `message` (`message_id`);

ALTER TABLE `message` ADD CONSTRAINT `message_thread_message` 
    FOREIGN KEY (`message_thread_id`) REFERENCES `message_thread` (`message_thread_id`);

ALTER TABLE `message_thread` ADD CONSTRAINT `message_message_thread` 
    FOREIGN KEY (`message_thread_from`) REFERENCES `message` (`message_id`);

ALTER TABLE `package_payment` ADD CONSTRAINT `deleted_member_package_payment` 
    FOREIGN KEY (`member_id`) REFERENCES `deleted_member` (`member_id`);

ALTER TABLE `package_payment` ADD CONSTRAINT `plan_package_payment` 
    FOREIGN KEY (`plan_id`) REFERENCES `plan` (`plan_id`);

ALTER TABLE `plan` ADD CONSTRAINT `message_plan` 
    FOREIGN KEY (`direct_messages`) REFERENCES `message` (`message_id`);

ALTER TABLE `state` ADD CONSTRAINT `country_state` 
    FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

ALTER TABLE `sub_caste` ADD CONSTRAINT `caste_sub_caste` 
    FOREIGN KEY (`caste_id`) REFERENCES `caste` (`caste_id`);
