# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          hotelbookingdb.dez                              #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:28                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `first_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sex` ENUM('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
    `picture` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `role` INTEGER(11) NOT NULL DEFAULT 2 COMMENT 'admin=0,staff=1',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_username_unique` ON `admins` (`username`);

# ---------------------------------------------------------------------- #
# Add table "amenities"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `amenities` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `amenities_name_unique` ON `amenities` (`name`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "coupon_masters"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupon_masters` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `offer_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `period_start_time` DATETIME NOT NULL,
    `period_end_time` DATETIME NOT NULL,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` ENUM('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERCENTAGE',
    `value` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `min_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `max_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `limit_per_user` INTEGER(11) NOT NULL DEFAULT 0,
    `limit_per_coupon` INTEGER(11) NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `coupon_masters_code_unique` ON `coupon_masters` (`code`);

# ---------------------------------------------------------------------- #
# Add table "coupon_pivot_include_room_type"                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupon_pivot_include_room_type` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `coupon_id` INTEGER(10) UNSIGNED NOT NULL,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `coupon_pivot_include_room_type_coupon_id_foreign` ON `coupon_pivot_include_room_type` (`coupon_id`);

CREATE INDEX `coupon_pivot_include_room_type_room_type_id_foreign` ON `coupon_pivot_include_room_type` (`room_type_id`);

# ---------------------------------------------------------------------- #
# Add table "coupon_pivot_paid_service"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupon_pivot_paid_service` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `coupon_id` INTEGER(10) UNSIGNED NOT NULL,
    `paid_service_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `coupon_pivot_paid_service_coupon_id_foreign` ON `coupon_pivot_paid_service` (`coupon_id`);

CREATE INDEX `coupon_pivot_paid_service_paid_service_id_foreign` ON `coupon_pivot_paid_service` (`paid_service_id`);

# ---------------------------------------------------------------------- #
# Add table "floors"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `floors` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `number` INTEGER(11) NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `floors_name_unique` ON `floors` (`name`);

CREATE UNIQUE INDEX `floors_number_unique` ON `floors` (`number`);

# ---------------------------------------------------------------------- #
# Add table "gateways"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `gateways` (
    `id` INTEGER(11) NOT NULL,
    `main_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `minamo` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `maxamo` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `fixed_charge` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `percent_charge` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `rate` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `val1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val3` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val4` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val5` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val6` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val7` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `is_online` TINYINT(1) NOT NULL DEFAULT 0,
    `is_offline` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `gateways_main_name_unique` ON `gateways` (`main_name`);

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cur` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CURRENCY',
    `cur_sym` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CURRENCY SYMBOL',
    `en` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'EMAIL NOTIFICATION',
    `mn` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'SMS NOTIFICATION',
    `sender_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_message` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sms_api` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `check_in_time` TIME,
    `check_out_time` TIME,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
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
# Add table "paid_services"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `paid_services` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `paid_services_title_unique` ON `paid_services` (`title`);

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
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `gateway_id` INTEGER(10) UNSIGNED NOT NULL,
    `reservetion_id` INTEGER(11),
    `amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `usd_amo` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `trx` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `type` ENUM('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
    `try` TINYINT(1) NOT NULL DEFAULT 0,
    `btc_amo` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `btc_wallet` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `payments_user_id_foreign` ON `payments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cat_id` INTEGER(11),
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `thumb` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `hit` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "regular_prices"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `regular_prices` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `day_1` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_1_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_2` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_2_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_3` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_3_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_4` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_4_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_5` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_5_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_6` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_6_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_7` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_7_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `regular_prices_room_type_id_foreign` ON `regular_prices` (`room_type_id`);

# ---------------------------------------------------------------------- #
# Add table "reservation_nights"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `reservation_nights` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INTEGER(10) UNSIGNED NOT NULL,
    `room_id` INTEGER(10) UNSIGNED,
    `date` DATE,
    `check_in` DATETIME,
    `check_out` DATETIME,
    `price` DOUBLE(18,2) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `reservation_nights_reservation_id_foreign` ON `reservation_nights` (`reservation_id`);

CREATE INDEX `reservation_nights_room_id_foreign` ON `reservation_nights` (`room_id`);

# ---------------------------------------------------------------------- #
# Add table "reservation_paid_services"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `reservation_paid_services` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INTEGER(10) UNSIGNED NOT NULL,
    `date` DATE,
    `pad_service_id` INTEGER(10) UNSIGNED NOT NULL,
    `value` DOUBLE(18,2) NOT NULL DEFAULT 0.00,
    `qty` INTEGER(11) NOT NULL DEFAULT 0,
    `price` DOUBLE(18,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `reservation_paid_services_reservation_id_foreign` ON `reservation_paid_services` (`reservation_id`);

CREATE INDEX `reservation_paid_services_pad_service_id_foreign` ON `reservation_paid_services` (`pad_service_id`);

# ---------------------------------------------------------------------- #
# Add table "reservation_taxes"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `reservation_taxes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INTEGER(10) UNSIGNED NOT NULL,
    `tax_id` INTEGER(10) UNSIGNED NOT NULL,
    `type` ENUM('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `reservation_taxes_reservation_id_foreign` ON `reservation_taxes` (`reservation_id`);

CREATE INDEX `reservation_taxes_tax_id_foreign` ON `reservation_taxes` (`tax_id`);

# ---------------------------------------------------------------------- #
# Add table "reservations"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `reservations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `online` TINYINT(1) DEFAULT 0,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `adults` INTEGER(11) NOT NULL DEFAULT 1,
    `kids` INTEGER(11) NOT NULL DEFAULT 0,
    `extra_bed` INTEGER(11) NOT NULL DEFAULT 0,
    `extra_bed_charge` FLOAT NOT NULL DEFAULT 0,
    `check_in` DATE NOT NULL,
    `check_out` DATE NOT NULL,
    `number_of_room` INTEGER(11) NOT NULL DEFAULT 1,
    `status` ENUM('PENDING','CANCEL','SUCCESS','ONLINE_PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `reservations_uid_unique` ON `reservations` (`uid`);

CREATE INDEX `reservations_user_id_foreign` ON `reservations` (`user_id`);

CREATE INDEX `reservations_room_type_id_foreign` ON `reservations` (`room_type_id`);

# ---------------------------------------------------------------------- #
# Add table "room_type_images"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `room_type_images` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `room_type_images_room_type_id_foreign` ON `room_type_images` (`room_type_id`);

# ---------------------------------------------------------------------- #
# Add table "room_type_pivot_amenity"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `room_type_pivot_amenity` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `amenity_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `room_type_pivot_amenity_room_type_id_foreign` ON `room_type_pivot_amenity` (`room_type_id`);

CREATE INDEX `room_type_pivot_amenity_amenity_id_foreign` ON `room_type_pivot_amenity` (`amenity_id`);

# ---------------------------------------------------------------------- #
# Add table "room_types"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `room_types` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `short_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `short_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `higher_capacity` INTEGER(11) NOT NULL DEFAULT 0,
    `kids_capacity` INTEGER(11) NOT NULL DEFAULT 0,
    `base_price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `room_types_title_unique` ON `room_types` (`title`);

CREATE UNIQUE INDEX `room_types_slug_unique` ON `room_types` (`slug`);

CREATE UNIQUE INDEX `room_types_short_code_unique` ON `room_types` (`short_code`);

# ---------------------------------------------------------------------- #
# Add table "rooms"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `rooms` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `floor_id` INTEGER(10) UNSIGNED NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `number` INTEGER(11) NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `rooms_number_unique` ON `rooms` (`number`);

CREATE INDEX `rooms_room_type_id_foreign` ON `rooms` (`room_type_id`);

CREATE INDEX `rooms_floor_id_foreign` ON `rooms` (`floor_id`);

# ---------------------------------------------------------------------- #
# Add table "special_prices"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `special_prices` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `room_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `day_1` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_1_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_2` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_2_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_3` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_3_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_4` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_4_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_5` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_5_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_6` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_6_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `day_7` ENUM('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
    `day_7_amount` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `special_prices_room_type_id_foreign` ON `special_prices` (`room_type_id`);

# ---------------------------------------------------------------------- #
# Add table "tax_managers"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tax_managers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` ENUM('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERCENTAGE',
    `rate` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `deleted_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gateway_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remarks` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trx` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `first_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `dob` DATE,
    `address` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sex` ENUM('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
    `picture` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `id_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `id_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `id_card_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remarks` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `vip` TINYINT(1) NOT NULL DEFAULT 0,
    `email_verified` TINYINT(1) NOT NULL DEFAULT 0,
    `email_verified_code` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_verified` TINYINT(1) NOT NULL DEFAULT 0,
    `sms_verified_code` TINYINT(1) NOT NULL DEFAULT 0,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_username_unique` ON `users` (`username`);

# ---------------------------------------------------------------------- #
# Add table "web_counter_sections"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_counter_sections` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `number` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_facilities"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_facilities` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_faqs"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_faqs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `answer` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_galleries"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_galleries` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `category_id` INTEGER(10) UNSIGNED,
    `type` ENUM('image','url','video') COLLATE utf8mb4_unicode_ci NOT NULL,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_gallery_categories"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_gallery_categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_our_client_feedbacks"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_our_client_feedbacks` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `feed` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_our_teams"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_our_teams` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fb` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `tw` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `lin` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gp` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `home_banner_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_banner_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_banner_section_title_3` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_about_section_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_about_section_short_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_about_section_long_details` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_room_section_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_room_section_title_sub` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_team_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_team_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_service_section_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_service_section_sub_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_video_section_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_video_section_sub_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_video_section_video_link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gallery_gallery_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gallery_gallery_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_testimonial_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_testimonial_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_facility_section_title_1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `home_facility_section_title_2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `general_general_section_footer_content` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `general_general_section_fb_comment_script` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `blog_blog_section_title_1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `blog_blog_section_title_2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `faq_faq_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `faq_faq_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_title_1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_title_2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_phone` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_email_web` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_all_section_map` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "web_socials"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_socials` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(1) DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "applied_coupon_codes"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `applied_coupon_codes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INTEGER(10) UNSIGNED NOT NULL,
    `coupon_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `date` DATE NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `coupon_type` ENUM('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci,
    `coupon_rate` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `applied_coupon_codes_reservation_id_foreign` ON `applied_coupon_codes` (`reservation_id`);

CREATE INDEX `applied_coupon_codes_coupon_id_foreign` ON `applied_coupon_codes` (`coupon_id`);

CREATE INDEX `applied_coupon_codes_user_id_foreign` ON `applied_coupon_codes` (`user_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `applied_coupon_codes` ADD CONSTRAINT `applied_coupon_codes_coupon_id_foreign` 
    FOREIGN KEY (`coupon_id`) REFERENCES `coupon_masters` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `applied_coupon_codes` ADD CONSTRAINT `applied_coupon_codes_reservation_id_foreign` 
    FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `applied_coupon_codes` ADD CONSTRAINT `applied_coupon_codes_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
