# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          learningmgmt.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:46                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin_menus"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_menus` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blog_comments"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_comments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `blog_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cache"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `cache` (
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `expiration` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `cache_key_unique` ON `cache` (`key`);

# ---------------------------------------------------------------------- #
# Add table "cart_storage"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `cart_storage` (
    `id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `cart_data` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `cart_storage_id_index` ON `cart_storage` (`id`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `icon` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - disabled, 1 - enabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "chatter_categories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `chatter_categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER(10) UNSIGNED,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `color` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "configs"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `configs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "contacts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `contacts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `number` BIGINT(20),
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "coupons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupons` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '1 - Discount, 2 - Flat Amount',
    `amount` DOUBLE(8,2) NOT NULL COMMENT 'Percentage or Amount',
    `min_price` DOUBLE(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Minimum price to allow coupons',
    `expires_at` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `per_user_limit` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - Unlimited',
    `status` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled, 2 - Expired',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "course_timeline"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `course_timeline` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_id` BIGINT(20) UNSIGNED,
    `course_id` INTEGER(11) NOT NULL,
    `sequence` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `course_timeline_model_type_model_id_index` ON `course_timeline` (`model_type`,`model_id`);

# ---------------------------------------------------------------------- #
# Add table "courses"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `courses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price` DECIMAL(15,2),
    `course_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `start_date` DATE,
    `featured` INTEGER(11) DEFAULT 0,
    `trending` INTEGER(11) DEFAULT 0,
    `popular` INTEGER(11) DEFAULT 0,
    `meta_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `published` TINYINT(4) DEFAULT 0,
    `free` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `courses_deleted_at_index` ON `courses` (`deleted_at`);

CREATE INDEX `courses_category_id_foreign` ON `courses` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "faqs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `faqs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(10) UNSIGNED,
    `question` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `answer` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - disbaled, 1 - enabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `faqs_category_id_foreign` ON `faqs` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "invoices"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoices` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "jobs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `jobs` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `queue` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `attempts` TINYINT(3) UNSIGNED NOT NULL,
    `reserved_at` INTEGER(10) UNSIGNED,
    `available_at` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `jobs_queue_index` ON `jobs` (`queue`);

# ---------------------------------------------------------------------- #
# Add table "lessons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `lessons` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `course_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `lesson_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `short_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `full_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `position` INTEGER(10) UNSIGNED,
    `free_lesson` TINYINT(4) DEFAULT 1,
    `published` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `54419_596eedbb6686e` ON `lessons` (`course_id`);

CREATE INDEX `lessons_deleted_at_index` ON `lessons` (`deleted_at`);

# ---------------------------------------------------------------------- #
# Add table "locales"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `locales` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `short_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `display_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr - Left to right, rtl - Right to Left',
    `is_default` TINYINT(4) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ltm_translations"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `ltm_translations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `locale` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `group` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "media"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `media` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_id` BIGINT(20) UNSIGNED,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `file_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `size` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `media_model_type_model_id_index` ON `media` (`model_type`,`model_id`);

# ---------------------------------------------------------------------- #
# Add table "message_threads"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `message_threads` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "migrations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `migrations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `migration` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "oauth_access_tokens"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_access_tokens` (
    `id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11),
    `client_id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `scopes` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `revoked` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `expires_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `oauth_access_tokens_user_id_index` ON `oauth_access_tokens` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "oauth_auth_codes"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_auth_codes` (
    `id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `client_id` INTEGER(10) UNSIGNED NOT NULL,
    `scopes` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `revoked` TINYINT(1) NOT NULL,
    `expires_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "oauth_clients"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_clients` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `secret` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `redirect` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `personal_access_client` TINYINT(1) NOT NULL,
    `password_client` TINYINT(1) NOT NULL,
    `revoked` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `oauth_clients_user_id_index` ON `oauth_clients` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "oauth_personal_access_clients"                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_personal_access_clients` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `client_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `oauth_personal_access_clients_client_id_index` ON `oauth_personal_access_clients` (`client_id`);

# ---------------------------------------------------------------------- #
# Add table "oauth_refresh_tokens"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_refresh_tokens` (
    `id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `access_token_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `revoked` TINYINT(1) NOT NULL,
    `expires_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `oauth_refresh_tokens_access_token_id_index` ON `oauth_refresh_tokens` (`access_token_id`);

# ---------------------------------------------------------------------- #
# Add table "order_items"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_items` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `item_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `item_id` INTEGER(11) NOT NULL,
    `price` DOUBLE(8,2) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` DOUBLE(8,2) NOT NULL,
    `payment_type` INTEGER(11) NOT NULL DEFAULT 0 COMMENT '1-stripe/card, 2 - Paypal, 3 - Offline',
    `status` INTEGER(11) NOT NULL DEFAULT 0 COMMENT '0 - in progress, 1 - Completed',
    `transaction_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remarks` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `coupon_id` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reasons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reasons` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - disabled, 1 - enabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `roles_name_index` ON `roles` (`name`);

# ---------------------------------------------------------------------- #
# Add table "sessions"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sessions` (
    `id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(10) UNSIGNED,
    `ip_address` VARCHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_agent` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payload` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `last_activity` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `sessions_id_unique` ON `sessions` (`id`);

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `content` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `bg_image` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `overlay` INTEGER(11) DEFAULT 0,
    `sequence` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sponsors"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sponsors` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `logo` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - disabled, 1 - enabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taggables"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `taggables` (
    `tag_id` INTEGER(11) NOT NULL,
    `taggable_id` INTEGER(11) NOT NULL,
    `taggable_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tags"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tags` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taxes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `taxes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` DOUBLE(8,2) NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "testimonials"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `testimonials` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `occupation` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1 COMMENT '0 - disabled, 1 - enabled',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tests"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tests` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `course_id` INTEGER(10) UNSIGNED,
    `lesson_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `published` TINYINT(4) DEFAULT 0,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `54422_596eeef514d00` ON `tests` (`course_id`);

CREATE INDEX `54422_596eeef53411a` ON `tests` (`lesson_id`);

CREATE INDEX `tests_deleted_at_index` ON `tests` (`deleted_at`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uuid` CHAR(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `first_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `dob` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gender` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `pincode` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `state` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `avatar_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
    `avatar_location` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password_changed_at` TIMESTAMP,
    `active` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1,
    `confirmation_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `confirmed` TINYINT(1) NOT NULL DEFAULT 0,
    `timezone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_login_at` TIMESTAMP,
    `last_login_ip` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

# ---------------------------------------------------------------------- #
# Add table "video_progresses"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `video_progresses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `media_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `duration` DOUBLE(8,2) NOT NULL,
    `progress` DOUBLE(8,2) NOT NULL,
    `complete` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '0.Pending 1.Complete',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `video_progresses_media_id_foreign` ON `video_progresses` (`media_id`);

CREATE INDEX `video_progresses_user_id_foreign` ON `video_progresses` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "withdraws"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraws` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `amount` DECIMAL(8,2) NOT NULL,
    `payment_type` TINYINT(4) COMMENT '0=Bank, 1=Paypal,2=offline',
    `status` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=accepted,2=rejected',
    `remarks` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `withdraws_user_id_foreign` ON `withdraws` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "admin_menu_items"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_menu_items` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `label` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `sort` INTEGER(11) NOT NULL DEFAULT 0,
    `class` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `menu` INTEGER(10) UNSIGNED NOT NULL,
    `depth` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `admin_menu_items_menu_foreign` ON `admin_menu_items` (`menu`);

# ---------------------------------------------------------------------- #
# Add table "blogs"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `blogs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `views` INTEGER(11) NOT NULL DEFAULT 0,
    `meta_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `blogs_category_id_foreign` ON `blogs` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "bundles"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `bundles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(11),
    `user_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price` DECIMAL(15,2),
    `course_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `start_date` DATE,
    `featured` INTEGER(11) DEFAULT 0,
    `trending` INTEGER(11) DEFAULT 0,
    `popular` INTEGER(11) DEFAULT 0,
    `meta_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `published` TINYINT(4) DEFAULT 0,
    `free` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `bundles_user_id_foreign` ON `bundles` (`user_id`);

CREATE INDEX `bundles_deleted_at_index` ON `bundles` (`deleted_at`);

# ---------------------------------------------------------------------- #
# Add table "certificates"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `certificates` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_id` INTEGER(10) UNSIGNED,
    `course_id` INTEGER(10) UNSIGNED,
    `url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '1-Generated 0-Not Generated',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `certificates_user_id_foreign` ON `certificates` (`user_id`);

CREATE INDEX `certificates_course_id_foreign` ON `certificates` (`course_id`);

# ---------------------------------------------------------------------- #
# Add table "chapter_students"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `chapter_students` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_id` BIGINT(20) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED,
    `course_id` INTEGER(10) UNSIGNED,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `chapter_students_model_type_model_id_index` ON `chapter_students` (`model_type`,`model_id`);

CREATE INDEX `chapter_students_user_id_foreign` ON `chapter_students` (`user_id`);

CREATE INDEX `chapter_students_course_id_foreign` ON `chapter_students` (`course_id`);

# ---------------------------------------------------------------------- #
# Add table "chatter_discussion"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `chatter_discussion` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `chatter_category_id` INTEGER(10) UNSIGNED NOT NULL DEFAULT 1,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `sticky` TINYINT(1) NOT NULL DEFAULT 0,
    `views` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `answered` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `color` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#232629',
    `deleted_at` TIMESTAMP,
    `last_reply_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `chatter_discussion_slug_unique` ON `chatter_discussion` (`slug`);

CREATE INDEX `chatter_discussion_chatter_category_id_foreign` ON `chatter_discussion` (`chatter_category_id`);

CREATE INDEX `chatter_discussion_user_id_foreign` ON `chatter_discussion` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "chatter_post"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `chatter_post` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `chatter_discussion_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `markdown` TINYINT(1) NOT NULL DEFAULT 0,
    `locked` TINYINT(1) NOT NULL DEFAULT 0,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `chatter_post_chatter_discussion_id_foreign` ON `chatter_post` (`chatter_discussion_id`);

CREATE INDEX `chatter_post_user_id_foreign` ON `chatter_post` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "chatter_user_discussion"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `chatter_user_discussion` (
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `discussion_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`, `discussion_id`)
)
ENGINE = INNODB;

CREATE INDEX `chatter_user_discussion_user_id_index` ON `chatter_user_discussion` (`user_id`);

CREATE INDEX `chatter_user_discussion_discussion_id_index` ON `chatter_user_discussion` (`discussion_id`);

# ---------------------------------------------------------------------- #
# Add table "course_student"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `course_student` (
    `course_id` INTEGER(10) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED,
    `rating` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `course_student_course_id_foreign` ON `course_student` (`course_id`);

CREATE INDEX `course_student_user_id_foreign` ON `course_student` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "course_user"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `course_user` (
    `course_id` INTEGER(10) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED
)
ENGINE = INNODB;

CREATE INDEX `fk_p_54418_54417_user_cou_596eece522b73` ON `course_user` (`course_id`);

CREATE INDEX `fk_p_54417_54418_course_u_596eece522bee` ON `course_user` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "earnings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `earnings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(10) UNSIGNED,
    `course_id` INTEGER(10) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED,
    `course_price` DECIMAL(8,2) NOT NULL,
    `amount` DECIMAL(5,2) NOT NULL,
    `rate` DECIMAL(5,2) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `earnings_course_id_foreign` ON `earnings` (`course_id`);

CREATE INDEX `earnings_user_id_foreign` ON `earnings` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "message_thread_participants"                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `message_thread_participants` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `thread_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `last_read` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `message_thread_participants_thread_id_user_id_unique` ON `message_thread_participants` (`thread_id`,`user_id`);

CREATE INDEX `message_thread_participants_user_id_foreign` ON `message_thread_participants` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `thread_id` INTEGER(10) UNSIGNED NOT NULL,
    `sender_id` INTEGER(10) UNSIGNED NOT NULL,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `messages_sender_id_foreign` ON `messages` (`sender_id`);

CREATE INDEX `messages_thread_id_foreign` ON `messages` (`thread_id`);

# ---------------------------------------------------------------------- #
# Add table "model_has_permissions"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `model_has_permissions` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`, `model_type`, `model_id`)
)
ENGINE = INNODB;

CREATE INDEX `model_has_permissions_model_type_model_id_index` ON `model_has_permissions` (`model_type`,`model_id`);

# ---------------------------------------------------------------------- #
# Add table "model_has_roles"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `model_has_roles` (
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`role_id`, `model_type`, `model_id`)
)
ENGINE = INNODB;

CREATE INDEX `model_has_roles_model_type_model_id_index` ON `model_has_roles` (`model_type`,`model_id`);

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `content` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sidebar` INTEGER(11) NOT NULL DEFAULT 0,
    `meta_title` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `published` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `pages_slug_unique` ON `pages` (`slug`);

CREATE INDEX `pages_user_id_foreign` ON `pages` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "password_histories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_histories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `password_histories_user_id_foreign` ON `password_histories` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "questions"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `questions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `question_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `score` INTEGER(11),
    `user_id` INTEGER(10) UNSIGNED,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `questions_user_id_foreign` ON `questions` (`user_id`);

CREATE INDEX `questions_deleted_at_index` ON `questions` (`deleted_at`);

# ---------------------------------------------------------------------- #
# Add table "questions_options"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `questions_options` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question_id` INTEGER(10) UNSIGNED,
    `option_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `explanation` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `correct` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `54421_596eee8745a1e` ON `questions_options` (`question_id`);

CREATE INDEX `questions_options_deleted_at_index` ON `questions_options` (`deleted_at`);

# ---------------------------------------------------------------------- #
# Add table "reviews"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reviews` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `reviewable_id` INTEGER(11) NOT NULL,
    `reviewable_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rating` INTEGER(11),
    `content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `reviews_user_id_foreign` ON `reviews` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "role_has_permissions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `role_has_permissions` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `role_has_permissions_role_id_foreign` ON `role_has_permissions` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "social_accounts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `social_accounts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `provider` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `provider_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `avatar` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `social_accounts_user_id_foreign` ON `social_accounts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "teacher_profiles"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `teacher_profiles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `facebook_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `twitter_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `linkedin_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payment_method` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'paypal,bank',
    `payment_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `teacher_profiles_user_id_foreign` ON `teacher_profiles` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "tests_results"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tests_results` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `test_id` INTEGER(10) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED,
    `test_result` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `tests_results_test_id_foreign` ON `tests_results` (`test_id`);

CREATE INDEX `tests_results_user_id_foreign` ON `tests_results` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "tests_results_answers"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tests_results_answers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `tests_result_id` INTEGER(10) UNSIGNED,
    `question_id` INTEGER(10) UNSIGNED,
    `option_id` INTEGER(10) UNSIGNED,
    `correct` TINYINT(4) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `tests_results_answers_tests_result_id_foreign` ON `tests_results_answers` (`tests_result_id`);

CREATE INDEX `tests_results_answers_question_id_foreign` ON `tests_results_answers` (`question_id`);

CREATE INDEX `tests_results_answers_option_id_foreign` ON `tests_results_answers` (`option_id`);

# ---------------------------------------------------------------------- #
# Add table "bundle_courses"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `bundle_courses` (
    `bundle_id` INTEGER(10) UNSIGNED NOT NULL,
    `course_id` INTEGER(10) UNSIGNED NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `bundle_courses_bundle_id_foreign` ON `bundle_courses` (`bundle_id`);

CREATE INDEX `bundle_courses_course_id_foreign` ON `bundle_courses` (`course_id`);

# ---------------------------------------------------------------------- #
# Add table "bundle_student"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `bundle_student` (
    `bundle_id` INTEGER(10) UNSIGNED,
    `user_id` INTEGER(10) UNSIGNED,
    `rating` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `bundle_student_bundle_id_foreign` ON `bundle_student` (`bundle_id`);

CREATE INDEX `bundle_student_user_id_foreign` ON `bundle_student` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "question_test"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `question_test` (
    `question_id` INTEGER(10) UNSIGNED,
    `test_id` INTEGER(10) UNSIGNED
)
ENGINE = INNODB;

CREATE INDEX `fk_p_54420_54422_test_que_596eeef70992f` ON `question_test` (`question_id`);

CREATE INDEX `fk_p_54422_54420_question_596eeef7099af` ON `question_test` (`test_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `admin_menu_items` ADD CONSTRAINT `admin_menu_items_menu_foreign` 
    FOREIGN KEY (`menu`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `blogs` ADD CONSTRAINT `blogs_category_id_foreign` 
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `bundle_courses` ADD CONSTRAINT `bundle_courses_bundle_id_foreign` 
    FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `bundle_courses` ADD CONSTRAINT `bundle_courses_course_id_foreign` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `bundle_student` ADD CONSTRAINT `bundle_student_bundle_id_foreign` 
    FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `bundle_student` ADD CONSTRAINT `bundle_student_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `bundles` ADD CONSTRAINT `bundles_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `certificates` ADD CONSTRAINT `certificates_course_id_foreign` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `certificates` ADD CONSTRAINT `certificates_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `chapter_students` ADD CONSTRAINT `chapter_students_course_id_foreign` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `chapter_students` ADD CONSTRAINT `chapter_students_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `chatter_discussion` ADD CONSTRAINT `chatter_discussion_chatter_category_id_foreign` 
    FOREIGN KEY (`chatter_category_id`) REFERENCES `chatter_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `chatter_discussion` ADD CONSTRAINT `chatter_discussion_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `chatter_post` ADD CONSTRAINT `chatter_post_chatter_discussion_id_foreign` 
    FOREIGN KEY (`chatter_discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `chatter_post` ADD CONSTRAINT `chatter_post_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `chatter_user_discussion` ADD CONSTRAINT `chatter_user_discussion_discussion_id_foreign` 
    FOREIGN KEY (`discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `chatter_user_discussion` ADD CONSTRAINT `chatter_user_discussion_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `course_student` ADD CONSTRAINT `course_student_course_id_foreign` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `course_student` ADD CONSTRAINT `course_student_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `course_user` ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `course_user` ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `courses` ADD CONSTRAINT `courses_category_id_foreign` 
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `earnings` ADD CONSTRAINT `earnings_course_id_foreign` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `earnings` ADD CONSTRAINT `earnings_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `faqs` ADD CONSTRAINT `faqs_category_id_foreign` 
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `lessons` ADD CONSTRAINT `54419_596eedbb6686e` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `message_thread_participants` ADD CONSTRAINT `message_thread_participants_thread_id_foreign` 
    FOREIGN KEY (`thread_id`) REFERENCES `message_threads` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `message_thread_participants` ADD CONSTRAINT `message_thread_participants_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `messages` ADD CONSTRAINT `messages_sender_id_foreign` 
    FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `messages` ADD CONSTRAINT `messages_thread_id_foreign` 
    FOREIGN KEY (`thread_id`) REFERENCES `message_threads` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `model_has_permissions` ADD CONSTRAINT `model_has_permissions_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `model_has_roles` ADD CONSTRAINT `model_has_roles_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `pages` ADD CONSTRAINT `pages_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `password_histories` ADD CONSTRAINT `password_histories_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `question_test` ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` 
    FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `question_test` ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` 
    FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `questions` ADD CONSTRAINT `questions_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `questions_options` ADD CONSTRAINT `54421_596eee8745a1e` 
    FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `reviews` ADD CONSTRAINT `reviews_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `social_accounts` ADD CONSTRAINT `social_accounts_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `teacher_profiles` ADD CONSTRAINT `teacher_profiles_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tests` ADD CONSTRAINT `54422_596eeef514d00` 
    FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests` ADD CONSTRAINT `54422_596eeef53411a` 
    FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests_results` ADD CONSTRAINT `tests_results_test_id_foreign` 
    FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests_results` ADD CONSTRAINT `tests_results_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests_results_answers` ADD CONSTRAINT `tests_results_answers_option_id_foreign` 
    FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests_results_answers` ADD CONSTRAINT `tests_results_answers_question_id_foreign` 
    FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tests_results_answers` ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` 
    FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `video_progresses` ADD CONSTRAINT `video_progresses_media_id_foreign` 
    FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `video_progresses` ADD CONSTRAINT `video_progresses_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `withdraws` ADD CONSTRAINT `withdraws_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
