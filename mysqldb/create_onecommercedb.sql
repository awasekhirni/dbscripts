# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onecommercedb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:14                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `username` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

CREATE UNIQUE INDEX `admins_username_unique` ON `admins` (`username`);

# ---------------------------------------------------------------------- #
# Add table "ads"                                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `ads` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `size` INTEGER(11),
    `script` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `views` INTEGER(11) NOT NULL DEFAULT 0,
    `impression` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(3) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "coupons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupons` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `coupon_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `coupon_type` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `coupon_amount` DECIMAL(11,2),
    `coupon_min_amount` DECIMAL(11,2),
    `valid_till` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "flash_intervals"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `flash_intervals` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `start_time` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `end_time` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "gateways"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `gateways` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `main_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `minamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `maxamo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fixed_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `percent_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val1` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val2` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `val3` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Website',
    `val4` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Industry Type',
    `val5` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Channel ID',
    `val6` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Transaction URL',
    `val7` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'paytm Transaction Status URL	',
    `status` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `website_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `base_color_code` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `base_curr_text` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `base_curr_symbol` BLOB,
    `dec_pt` INTEGER(11),
    `registration` INTEGER(11),
    `email_verification` INTEGER(11),
    `sms_verification` INTEGER(11),
    `email_notification` INTEGER(11),
    `sms_notification` INTEGER(11),
    `email_sent_from` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email_template` BLOB,
    `sms_api` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `comment_script` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `footer` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `home_style` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `refund_policy` BLOB,
    `replacement_policy` BLOB,
    `main_city` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `in_cash_on_delivery` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `in_advanced` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `around_cash_on_delivery` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `around_advanced` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `world_cash_on_delivery` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `world_advanced` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `tax` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
    `coupon_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `coupon_type` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `coupon_amount` DECIMAL(11,2),
    `coupon_min_amount` DECIMAL(11,2),
    `valid_till` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `tos` BLOB,
    `privacy` BLOB,
    `in_min` INTEGER(11),
    `in_max` INTEGER(11),
    `am_min` INTEGER(11),
    `am_max` INTEGER(11),
    `aw_min` INTEGER(11),
    `aw_max` INTEGER(11),
    `con_phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `con_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `con_address` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `work_hours` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `support_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `support_phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `menu_text` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `user_login_text` BLOB,
    `user_register_text` BLOB,
    `vendor_login_text` BLOB,
    `vendor_register_text` BLOB,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "jobs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `jobs` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `queue` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `attempts` TINYINT(3) UNSIGNED NOT NULL,
    `reserved_at` INTEGER(10) UNSIGNED,
    `available_at` INTEGER(10) UNSIGNED NOT NULL,
    `created_at` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menus"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `menus` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `body` BLOB,
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
    `migration` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "partners"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `partners` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `token` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "place_payments"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `place_payments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cart_id` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `place` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `payment` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_attributes"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_attributes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `attrname` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(3) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "providers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `providers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `provider` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `client_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `client_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `small_text` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `bold_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "socials"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `socials` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fontawesome_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `url` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subcategories"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `subcategories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(11),
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(3) NOT NULL DEFAULT 1,
    `attributes` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subscribers"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscribers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `first_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `last_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `gender` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `date_of_birth` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_first_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_last_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `country` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `state` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `city` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `zip_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_first_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_last_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_phone` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_country` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_state` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_city` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `billing_zip_code` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `remember_token` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'active',
    `email_verified` INTEGER(3),
    `sms_verified` INTEGER(3),
    `email_ver_code` INTEGER(11),
    `sms_ver_code` INTEGER(11),
    `email_sent` INTEGER(3) NOT NULL DEFAULT 0,
    `sms_sent` INTEGER(3) NOT NULL DEFAULT 0,
    `vsent` INTEGER(11) NOT NULL DEFAULT 0,
    `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `provider` VARCHAR(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `provider_id` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "vendor_password_resets"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `vendor_password_resets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `token` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdraw_methods"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraw_methods` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `min_limit` DOUBLE(10,2),
    `max_limit` DOUBLE(10,2),
    `fixed_charge` DOUBLE(8,2),
    `percentage_charge` DOUBLE(5,2),
    `process_time` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `deleted` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "items"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `category_id` INTEGER(11),
    `subcategory_id` INTEGER(11),
    `district` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `subdistrict` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` BLOB,
    `price` DECIMAL(11,2),
    `negotiable` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `extras` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `postad` INTEGER(3) NOT NULL DEFAULT 0,
    `contact_hide` INTEGER(3) NOT NULL DEFAULT 0,
    `sell` INTEGER(3) NOT NULL DEFAULT 0,
    `rent` INTEGER(3) NOT NULL DEFAULT 0,
    `featured` INTEGER(3) NOT NULL DEFAULT 0,
    `expired_date` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `published` INTEGER(3) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `unique_id` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `first_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `last_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `address` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `country` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `state` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `city` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `zip_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `order_notes` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `subtotal` DECIMAL(11,2),
    `total` DECIMAL(11,2),
    `place` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_charge` DECIMAL(11,2),
    `tax` DECIMAL(11,2),
    `payment_method` INTEGER(3),
    `shipping_method` VARCHAR(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_status` INTEGER(11) DEFAULT 0 COMMENT '0 - pending, 1- in-process, 2- shipped',
    `approve` INTEGER(11) DEFAULT 0 COMMENT '0-pending, 1-approve, -1- reject',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orderpayments"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `orderpayments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11),
    `user_id` INTEGER(11),
    `gateway_id` INTEGER(11),
    `amount` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `usd_amo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `btc_amo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `btc_wallet` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `trx` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(11),
    `try` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cart_coupons"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `cart_coupons` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cart_id` INTEGER(11),
    `coupon_fixed` DECIMAL(11,2),
    `coupon_percentage` DECIMAL(11,2),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "carts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `carts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11),
    `cart_id` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `quantity` INTEGER(11),
    `price` DECIMAL(11,2),
    `current_price` DECIMAL(11,2),
    `attributes` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deposit_requests"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposit_requests` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `vendor_id` INTEGER(11),
    `gateway_id` INTEGER(11),
    `amount` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `usd_amo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `charge` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `accepted` INTEGER(3) DEFAULT 0,
    `r_img` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deposits"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposits` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `vendor_id` INTEGER(11),
    `gateway_id` INTEGER(11),
    `amount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `usd_amo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btc_amo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btc_wallet` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `trx` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `try` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "favorits"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorits` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `product_id` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "options"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `options` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_attribute_id` INTEGER(11),
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(3) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orderedproducts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `orderedproducts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11),
    `user_id` INTEGER(11),
    `vendor_id` INTEGER(11),
    `product_id` INTEGER(11),
    `product_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `offered_product_price` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_price` DECIMAL(11,2),
    `coupon_amount` DECIMAL(11,2) COMMENT 'total coupon discount for this product',
    `quantity` INTEGER(11),
    `attributes` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_total` DECIMAL(11,2) COMMENT 'it will be added to vendor balance',
    `shipping_status` INTEGER(11) NOT NULL DEFAULT 0 COMMENT '0 - pending, 1- in-process, 2- shipped',
    `shipping_date` TIMESTAMP,
    `approve` INTEGER(11) NOT NULL DEFAULT 0 COMMENT '0-pending, -1- reject',
    `refunded` INTEGER(11) NOT NULL DEFAULT 0,
    `comment_type` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `comment` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "packages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `packages` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `s_desc` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `price` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `products` INTEGER(11),
    `validity` INTEGER(11),
    `status` INTEGER(3),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "preview_images"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `preview_images` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11),
    `image` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `big_image` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_reviews"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_reviews` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `product_id` INTEGER(11),
    `rating` DOUBLE(11,2),
    `comment` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `vendor_id` INTEGER(11),
    `category_id` INTEGER(11),
    `subcategory_id` INTEGER(11),
    `title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `price` DECIMAL(11,2),
    `quantity` INTEGER(11),
    `product_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `attributes` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` BLOB,
    `coupon_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `type` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `amount` DOUBLE(11,2),
    `valid_till` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `offer_type` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `offer_amount` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `flash_sale` INTEGER(3) COMMENT '0 - no, 1 - yes',
    `flash_type` INTEGER(3) COMMENT '0 - fixed, 1 - percent',
    `flash_amount` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `flash_date` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `flash_interval` INTEGER(11),
    `flash_status` INTEGER(3) NOT NULL DEFAULT 0 COMMENT '0-pending, 1-approve, -1- reject',
    `flash_div_refresh` INTEGER(11) NOT NULL DEFAULT 0,
    `current_price` DECIMAL(11,2),
    `search_price` DECIMAL(11,2),
    `sales` INTEGER(11) NOT NULL DEFAULT 0,
    `avg_rating` DECIMAL(11,2) NOT NULL DEFAULT 0.00,
    `deleted` INTEGER(11) NOT NULL DEFAULT 0,
    `flash_request_date` TIMESTAMP,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "refunds"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `refunds` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `orderedproduct_id` INTEGER(11),
    `reason` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` INTEGER(3) COMMENT '0 - pending, 1 - accept, -1 - reject',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `vendor_id` INTEGER(11),
    `details` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `amount` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `trx_id` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `after_balance` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "vendors"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `vendors` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `shop_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `balance` DECIMAL(11,2) DEFAULT 0.00,
    `address` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `zip_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `products` INTEGER(11) DEFAULT 0,
    `expired_date` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `logo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `remember_token` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'active',
    `email_verified` INTEGER(3),
    `sms_verified` INTEGER(3),
    `email_ver_code` INTEGER(11),
    `sms_ver_code` INTEGER(11),
    `email_sent` INTEGER(3) NOT NULL DEFAULT 0,
    `sms_sent` INTEGER(3) NOT NULL DEFAULT 0,
    `vsent` INTEGER(11) NOT NULL DEFAULT 0,
    `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `provider` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `provider_id` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `approved` INTEGER(3) NOT NULL DEFAULT 0 COMMENT '0-pending, 1-approve, -1- reject',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdraws"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraws` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `withdraw_method_id` INTEGER(11),
    `trx` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `vendor_id` INTEGER(11),
    `amount` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `message` BLOB,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `cart_coupons` ADD CONSTRAINT `carts_cart_coupons` 
    FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`);

ALTER TABLE `carts` ADD CONSTRAINT `products_carts` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `deposit_requests` ADD CONSTRAINT `gateways_deposit_requests` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `deposit_requests` ADD CONSTRAINT `vendors_deposit_requests` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `gateways_deposits` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `deposits` ADD CONSTRAINT `vendors_deposits` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `favorits` ADD CONSTRAINT `products_favorits` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `favorits` ADD CONSTRAINT `users_favorits` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `items` ADD CONSTRAINT `users_items` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `options` ADD CONSTRAINT `product_attributes_options` 
    FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`);

ALTER TABLE `options` ADD CONSTRAINT `products_options` 
    FOREIGN KEY (`product_attribute_id`) REFERENCES `products` (`id`);

ALTER TABLE `orderedproducts` ADD CONSTRAINT `orders_orderedproducts` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orderedproducts` ADD CONSTRAINT `products_orderedproducts` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `orderedproducts` ADD CONSTRAINT `users_orderedproducts` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `orderedproducts` ADD CONSTRAINT `vendors_orderedproducts` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `orderpayments` ADD CONSTRAINT `gateways_orderpayments` 
    FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

ALTER TABLE `orderpayments` ADD CONSTRAINT `orders_orderpayments` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orderpayments` ADD CONSTRAINT `users_orderpayments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `orders` ADD CONSTRAINT `users_orders` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `packages` ADD CONSTRAINT `products_packages` 
    FOREIGN KEY (`products`) REFERENCES `products` (`id`);

ALTER TABLE `preview_images` ADD CONSTRAINT `products_preview_images` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_reviews` ADD CONSTRAINT `products_product_reviews` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_reviews` ADD CONSTRAINT `users_product_reviews` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `products` ADD CONSTRAINT `vendors_products` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `refunds` ADD CONSTRAINT `orderedproducts_refunds` 
    FOREIGN KEY (`orderedproduct_id`) REFERENCES `orderedproducts` (`id`);

ALTER TABLE `refunds` ADD CONSTRAINT `orders_refunds` 
    FOREIGN KEY (`orderedproduct_id`) REFERENCES `orders` (`id`);

ALTER TABLE `transactions` ADD CONSTRAINT `vendors_transactions` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `vendors` ADD CONSTRAINT `products_vendors` 
    FOREIGN KEY (`products`) REFERENCES `products` (`id`);

ALTER TABLE `withdraws` ADD CONSTRAINT `vendors_withdraws` 
    FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

ALTER TABLE `withdraws` ADD CONSTRAINT `withdraw_methods_withdraws` 
    FOREIGN KEY (`withdraw_method_id`) REFERENCES `withdraw_methods` (`id`);
