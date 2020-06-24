# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          restaurantdelivery.dez                          #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:28                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "app_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `app_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `app_settings_key_index` ON `app_settings` (`key`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `symbol` VARCHAR(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `code` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `decimal_digits` TINYINT(3) UNSIGNED NOT NULL,
    `rounding` TINYINT(3) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_fields"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `values` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `disabled` TINYINT(1),
    `required` TINYINT(1),
    `in_table` TINYINT(1),
    `bootstrap_column` TINYINT(4),
    `order` TINYINT(4),
    `custom_field_model` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faq_categories"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `faq_categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faqs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `faqs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `question` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `answer` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `faq_category_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `faqs_faq_category_id_foreign` ON `faqs` (`faq_category_id`);

# ---------------------------------------------------------------------- #
# Add table "media"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `media` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `model_id` BIGINT(20) UNSIGNED NOT NULL,
    `collection_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `file_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mime_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `disk` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `size` INTEGER(10) UNSIGNED NOT NULL,
    `manipulations` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `custom_properties` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `responsive_images` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order_column` INTEGER(10) UNSIGNED,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `media_model_type_model_id_index` ON `media` (`model_type`,`model_id`);

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
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` CHAR(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `notifiable_type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `notifiable_id` BIGINT(20) UNSIGNED NOT NULL,
    `data` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `read_at` TIMESTAMP,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `notifications_notifiable_type_notifiable_id_index` ON `notifications` (`notifiable_type`,`notifiable_id`);

# ---------------------------------------------------------------------- #
# Add table "order_statuses"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_statuses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `status` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
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
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "restaurants"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `restaurants` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `latitude` VARCHAR(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `longitude` VARCHAR(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mobile` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `information` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `delivery_fee` DOUBLE(5,2) NOT NULL DEFAULT 0.00,
    `admin_commission` DOUBLE(5,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "restaurants_payouts"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `restaurants_payouts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    `method` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `paid_date` DATETIME NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `restaurants_payouts_restaurant_id_foreign` ON `restaurants_payouts` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
    `default` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "uploads"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `uploads` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `api_token` CHAR(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `braintree_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paypal_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `stripe_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `card_brand` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `card_last_four` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trial_ends_at` TIMESTAMP,
    `device_token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE UNIQUE INDEX `users_api_token_unique` ON `users` (`api_token`);

# ---------------------------------------------------------------------- #
# Add table "custom_field_values"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_field_values` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `value` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `view` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `custom_field_id` INTEGER(10) UNSIGNED NOT NULL,
    `customizable_type` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `customizable_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `custom_field_values_custom_field_id_foreign` ON `custom_field_values` (`custom_field_id`);

# ---------------------------------------------------------------------- #
# Add table "delivery_addresses"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `delivery_addresses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `latitude` VARCHAR(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `longitude` VARCHAR(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_default` TINYINT(1),
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `delivery_addresses_user_id_foreign` ON `delivery_addresses` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "driver_restaurants"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `driver_restaurants` (
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`, `restaurant_id`)
)
ENGINE = INNODB;

CREATE INDEX `driver_restaurants_restaurant_id_foreign` ON `driver_restaurants` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "drivers"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `drivers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `delivery_fee` DOUBLE(5,2) NOT NULL DEFAULT 0.00,
    `total_orders` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `earning` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `available` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `drivers_user_id_foreign` ON `drivers` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "drivers_payouts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `drivers_payouts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `method` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `paid_date` DATETIME NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `drivers_payouts_user_id_foreign` ON `drivers_payouts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "earnings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `earnings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    `total_orders` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `total_earning` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `admin_earning` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `restaurant_earning` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `delivery_fee` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `tax` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `earnings_restaurant_id_foreign` ON `earnings` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "foods"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `foods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `discount_price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ingredients` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `weight` DOUBLE(9,2) NOT NULL DEFAULT 0.00,
    `featured` TINYINT(1) NOT NULL,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    `category_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `foods_restaurant_id_foreign` ON `foods` (`restaurant_id`);

CREATE INDEX `foods_category_id_foreign` ON `foods` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "galleries"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `galleries` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `galleries_restaurant_id_foreign` ON `galleries` (`restaurant_id`);

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
# Add table "nutrition"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `nutrition` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `quantity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `nutrition_food_id_foreign` ON `nutrition` (`food_id`);

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `description` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `method` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `payments_user_id_foreign` ON `payments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "restaurant_reviews"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `restaurant_reviews` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `review` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` TINYINT(3) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `restaurant_reviews_user_id_foreign` ON `restaurant_reviews` (`user_id`);

CREATE INDEX `restaurant_reviews_restaurant_id_foreign` ON `restaurant_reviews` (`restaurant_id`);

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
# Add table "user_restaurants"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_restaurants` (
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `restaurant_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`, `restaurant_id`)
)
ENGINE = INNODB;

CREATE INDEX `user_restaurants_restaurant_id_foreign` ON `user_restaurants` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "carts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `carts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `quantity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `carts_food_id_foreign` ON `carts` (`food_id`);

CREATE INDEX `carts_user_id_foreign` ON `carts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "extras"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `extras` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `extras_food_id_foreign` ON `extras` (`food_id`);

# ---------------------------------------------------------------------- #
# Add table "favorites"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorites` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `favorites_food_id_foreign` ON `favorites` (`food_id`);

CREATE INDEX `favorites_user_id_foreign` ON `favorites` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "food_reviews"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `food_reviews` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `review` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` TINYINT(3) UNSIGNED NOT NULL,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `food_reviews_user_id_foreign` ON `food_reviews` (`user_id`);

CREATE INDEX `food_reviews_food_id_foreign` ON `food_reviews` (`food_id`);

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `order_status_id` INTEGER(10) UNSIGNED NOT NULL,
    `tax` DOUBLE(5,2) NOT NULL DEFAULT 0.00,
    `delivery_fee` DOUBLE(5,2) NOT NULL DEFAULT 0.00,
    `hint` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `payment_id` INTEGER(10) UNSIGNED,
    `delivery_address_id` INTEGER(10) UNSIGNED,
    `driver_id` INTEGER(10) UNSIGNED,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `orders_user_id_foreign` ON `orders` (`user_id`);

CREATE INDEX `orders_order_status_id_foreign` ON `orders` (`order_status_id`);

CREATE INDEX `orders_payment_id_foreign` ON `orders` (`payment_id`);

CREATE INDEX `orders_delivery_address_id_foreign` ON `orders` (`delivery_address_id`);

CREATE INDEX `orders_driver_id_foreign` ON `orders` (`driver_id`);

# ---------------------------------------------------------------------- #
# Add table "cart_extras"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `cart_extras` (
    `extra_id` INTEGER(10) UNSIGNED NOT NULL,
    `cart_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`extra_id`, `cart_id`)
)
ENGINE = INNODB;

CREATE INDEX `cart_extras_cart_id_foreign` ON `cart_extras` (`cart_id`);

# ---------------------------------------------------------------------- #
# Add table "favorite_extras"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorite_extras` (
    `extra_id` INTEGER(10) UNSIGNED NOT NULL,
    `favorite_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`extra_id`, `favorite_id`)
)
ENGINE = INNODB;

CREATE INDEX `favorite_extras_favorite_id_foreign` ON `favorite_extras` (`favorite_id`);

# ---------------------------------------------------------------------- #
# Add table "food_orders"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `food_orders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `quantity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `food_id` INTEGER(10) UNSIGNED NOT NULL,
    `order_id` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `food_orders_food_id_foreign` ON `food_orders` (`food_id`);

CREATE INDEX `food_orders_order_id_foreign` ON `food_orders` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "food_order_extras"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `food_order_extras` (
    `food_order_id` INTEGER(10) UNSIGNED NOT NULL,
    `extra_id` INTEGER(10) UNSIGNED NOT NULL,
    `price` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`food_order_id`, `extra_id`)
)
ENGINE = INNODB;

CREATE INDEX `food_order_extras_extra_id_foreign` ON `food_order_extras` (`extra_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `cart_extras` ADD CONSTRAINT `cart_extras_cart_id_foreign` 
    FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `cart_extras` ADD CONSTRAINT `cart_extras_extra_id_foreign` 
    FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `carts` ADD CONSTRAINT `carts_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `carts` ADD CONSTRAINT `carts_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `custom_field_values` ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` 
    FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `delivery_addresses` ADD CONSTRAINT `delivery_addresses_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `driver_restaurants` ADD CONSTRAINT `driver_restaurants_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `driver_restaurants` ADD CONSTRAINT `driver_restaurants_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `drivers` ADD CONSTRAINT `drivers_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `drivers_payouts` ADD CONSTRAINT `drivers_payouts_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `earnings` ADD CONSTRAINT `earnings_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `extras` ADD CONSTRAINT `extras_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `faqs` ADD CONSTRAINT `faqs_faq_category_id_foreign` 
    FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `favorite_extras` ADD CONSTRAINT `favorite_extras_extra_id_foreign` 
    FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `favorite_extras` ADD CONSTRAINT `favorite_extras_favorite_id_foreign` 
    FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `favorites` ADD CONSTRAINT `favorites_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `favorites` ADD CONSTRAINT `favorites_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_order_extras` ADD CONSTRAINT `food_order_extras_extra_id_foreign` 
    FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_order_extras` ADD CONSTRAINT `food_order_extras_food_order_id_foreign` 
    FOREIGN KEY (`food_order_id`) REFERENCES `food_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_orders` ADD CONSTRAINT `food_orders_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_orders` ADD CONSTRAINT `food_orders_order_id_foreign` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_reviews` ADD CONSTRAINT `food_reviews_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `food_reviews` ADD CONSTRAINT `food_reviews_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `foods` ADD CONSTRAINT `foods_category_id_foreign` 
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `foods` ADD CONSTRAINT `foods_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `galleries` ADD CONSTRAINT `galleries_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `model_has_permissions` ADD CONSTRAINT `model_has_permissions_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `model_has_roles` ADD CONSTRAINT `model_has_roles_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `nutrition` ADD CONSTRAINT `nutrition_food_id_foreign` 
    FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `orders` ADD CONSTRAINT `orders_delivery_address_id_foreign` 
    FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `orders` ADD CONSTRAINT `orders_driver_id_foreign` 
    FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `orders` ADD CONSTRAINT `orders_order_status_id_foreign` 
    FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `orders` ADD CONSTRAINT `orders_payment_id_foreign` 
    FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `orders` ADD CONSTRAINT `orders_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `payments` ADD CONSTRAINT `payments_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `restaurant_reviews` ADD CONSTRAINT `restaurant_reviews_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `restaurant_reviews` ADD CONSTRAINT `restaurant_reviews_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `restaurants_payouts` ADD CONSTRAINT `restaurants_payouts_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_restaurants` ADD CONSTRAINT `user_restaurants_restaurant_id_foreign` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `user_restaurants` ADD CONSTRAINT `user_restaurants_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
