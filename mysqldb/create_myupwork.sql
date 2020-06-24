# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          myupwork_development.dez                        #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:08                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "ar_internal_metadata"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ar_internal_metadata` (
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`key`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "business_streams"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `business_streams` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `business_stream_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "category_groups"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `category_groups` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `category_group_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "companies"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `companies` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `company_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `profile_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `establishment_date` DATE,
    `company_website_url` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `business_stream_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_companies_on_business_stream_id` ON `companies` (`business_stream_id`);

# ---------------------------------------------------------------------- #
# Add table "company_images"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `company_images` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `company_image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `company_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_company_images_on_company_id` ON `company_images` (`company_id`);

# ---------------------------------------------------------------------- #
# Add table "job_locations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `job_locations` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `street_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "job_types"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `job_types` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `job_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`version`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "skill_sets"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `skill_sets` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `skill_set_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_types"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_types` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_type_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password_digest` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_of_birth` DATE,
    `gender` TINYINT(1),
    `is_active` TINYINT(1),
    `contact_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sms_notification_active` TINYINT(1),
    `email_notification_acive` TINYINT(1),
    `user_image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `registration_date` DATE,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_type_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_users_on_email` ON `users` (`email`);

CREATE INDEX `index_users_on_user_type_id` ON `users` (`user_type_id`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `category_group_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_categories_on_category_group_id` ON `categories` (`category_group_id`);

# ---------------------------------------------------------------------- #
# Add table "job_posts"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `job_posts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `is_company_name_hidden` TINYINT(1),
    `created_date` DATE,
    `job_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active` TINYINT(1),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` BIGINT(20),
    `category_id` BIGINT(20),
    `job_location_id` BIGINT(20),
    `job_type_id` BIGINT(20),
    `company_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_job_posts_on_category_id` ON `job_posts` (`category_id`);

CREATE INDEX `index_job_posts_on_company_id` ON `job_posts` (`company_id`);

CREATE INDEX `index_job_posts_on_job_location_id` ON `job_posts` (`job_location_id`);

CREATE INDEX `index_job_posts_on_job_type_id` ON `job_posts` (`job_type_id`);

CREATE INDEX `index_job_posts_on_user_id` ON `job_posts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "seeker_profiles"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `seeker_profiles` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `location` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `current_salary` FLOAT,
    `is_annually_monthly` TINYINT(1),
    `currency` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_seeker_profiles_on_user_id` ON `seeker_profiles` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "seeker_skill_sets"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `seeker_skill_sets` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `skill_level` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `seeker_profile_id` BIGINT(20),
    `skill_set_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_seeker_skill_sets_on_seeker_profile_id` ON `seeker_skill_sets` (`seeker_profile_id`);

CREATE INDEX `index_seeker_skill_sets_on_skill_set_id` ON `seeker_skill_sets` (`skill_set_id`);

# ---------------------------------------------------------------------- #
# Add table "user_logs"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_logs` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `last_login_date` DATE,
    `last_job_apply_date` DATE,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_user_logs_on_user_id` ON `user_logs` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "education_details"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `education_details` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `institute_university_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `starting_date` DATE,
    `completion_date` DATE,
    `percentage` FLOAT,
    `cgpa` FLOAT,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `seeker_profile_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_education_details_on_seeker_profile_id` ON `education_details` (`seeker_profile_id`);

# ---------------------------------------------------------------------- #
# Add table "experience_details"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `experience_details` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `is_current_job` TINYINT(1),
    `start_date` DATE,
    `end_date` DATE,
    `job_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `job_location_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `job_location_state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `job_location_country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `seeker_profile_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_experience_details_on_seeker_profile_id` ON `experience_details` (`seeker_profile_id`);

# ---------------------------------------------------------------------- #
# Add table "job_post_activities"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `job_post_activities` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `apply_date` DATE,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `user_id` BIGINT(20),
    `job_post_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_job_post_activities_on_job_post_id` ON `job_post_activities` (`job_post_id`);

CREATE INDEX `index_job_post_activities_on_user_id` ON `job_post_activities` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "job_post_skill_sets"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `job_post_skill_sets` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `skil_level` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `skill_set_id` BIGINT(20),
    `job_post_id` BIGINT(20),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_job_post_skill_sets_on_job_post_id` ON `job_post_skill_sets` (`job_post_id`);

CREATE INDEX `index_job_post_skill_sets_on_skill_set_id` ON `job_post_skill_sets` (`skill_set_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `categories` ADD CONSTRAINT `fk_rails_564eeef2fe` 
    FOREIGN KEY (`category_group_id`) REFERENCES `category_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `companies` ADD CONSTRAINT `fk_rails_036123791d` 
    FOREIGN KEY (`business_stream_id`) REFERENCES `business_streams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `company_images` ADD CONSTRAINT `fk_rails_6dcf524eba` 
    FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `education_details` ADD CONSTRAINT `fk_rails_83dae34213` 
    FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `experience_details` ADD CONSTRAINT `fk_rails_88777614ec` 
    FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_post_activities` ADD CONSTRAINT `fk_rails_8e6d99b791` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_post_activities` ADD CONSTRAINT `fk_rails_f366406e22` 
    FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_post_skill_sets` ADD CONSTRAINT `fk_rails_1907922d8e` 
    FOREIGN KEY (`skill_set_id`) REFERENCES `skill_sets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_post_skill_sets` ADD CONSTRAINT `fk_rails_33fbf8152b` 
    FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_posts` ADD CONSTRAINT `fk_rails_2195c80c12` 
    FOREIGN KEY (`job_location_id`) REFERENCES `job_locations` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_posts` ADD CONSTRAINT `fk_rails_3858cef379` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_posts` ADD CONSTRAINT `fk_rails_4fc6c084c5` 
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_posts` ADD CONSTRAINT `fk_rails_73ce73f3d3` 
    FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `job_posts` ADD CONSTRAINT `fk_rails_8242dd9497` 
    FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `seeker_profiles` ADD CONSTRAINT `fk_rails_2eeeefd390` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `seeker_skill_sets` ADD CONSTRAINT `fk_rails_89066233f0` 
    FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `seeker_skill_sets` ADD CONSTRAINT `fk_rails_c2099a3924` 
    FOREIGN KEY (`skill_set_id`) REFERENCES `skill_sets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `user_logs` ADD CONSTRAINT `fk_rails_903088cca6` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `users` ADD CONSTRAINT `fk_rails_a2f1461231` 
    FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
