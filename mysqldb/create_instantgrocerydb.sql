# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          instantgrocerydb.dez                            #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 08:32                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "aboutuspage"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `aboutuspage` (
    `about_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`about_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admin"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `admin_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `admin_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `admin_pass` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `admin_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admin_payouts"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_payouts` (
    `payout_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `payout_date` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `respond_payout_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `bill` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `store_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payout_amt` FLOAT NOT NULL,
    PRIMARY KEY (`payout_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "banner"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `banner` (
    `banner_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `banner_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `banner_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`banner_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cancel_for"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `cancel_for` (
    `res_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `reason` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`res_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `cat_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent` INTEGER(11) NOT NULL DEFAULT 0,
    `level` INTEGER(11) NOT NULL,
    `description` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`cat_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "city"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `city` (
    `city_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `city_name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`city_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "closing_hours"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `closing_hours` (
    `closing_hrs_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `date` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `start_hrs` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `end_hrs` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`closing_hrs_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "coupon"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupon` (
    `coupon_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `coupon_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `coupon_code` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `coupon_description` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `valid_to` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `valid_from` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `cart_value` INTEGER(100) NOT NULL,
    `amount` INTEGER(100) NOT NULL,
    `type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`coupon_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currency"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `currency_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_sign` CHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "delivery_boy"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `delivery_boy` (
    `dboy_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `boy_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `boy_phone` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `boy_city` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `device_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `boy_loc` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lat` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lng` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`dboy_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "failed_jobs"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `failed_jobs` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `connection` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `queue` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fcm"                                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `fcm` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `server_key` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `store_server_key` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `driver_server_key` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "freedeliverycart"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `freedeliverycart` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `min_cart_value` FLOAT NOT NULL DEFAULT 0,
    `del_charge` FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "map_api"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `map_api` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `map_api_key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
# Add table "minimum_maximum_order_value"                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `minimum_maximum_order_value` (
    `min_max_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `min_value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `max_value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`min_max_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "msg91"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `msg91` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sender_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `api_key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "payout_req_valid"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `payout_req_valid` (
    `val_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `min_amt` INTEGER(11) NOT NULL,
    `min_days` INTEGER(11) NOT NULL,
    PRIMARY KEY (`val_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payout_requests"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `payout_requests` (
    `req_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `store_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payout_amt` FLOAT NOT NULL,
    `req_date` DATE NOT NULL,
    `complete` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`req_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `product` (
    `product_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cat_id` INTEGER(11) NOT NULL,
    `product_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`product_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_varient"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_varient` (
    `varient_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11) NOT NULL,
    `quantity` INTEGER(11) NOT NULL,
    `unit` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `mrp` FLOAT,
    `price` FLOAT NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `varient_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`varient_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reedem_values"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `reedem_values` (
    `reedem_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `reward_point` INTEGER(100) NOT NULL,
    `value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`reedem_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reward_points"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `reward_points` (
    `reward_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `min_cart_value` INTEGER(100) NOT NULL,
    `reward_point` INTEGER(100) NOT NULL,
    PRIMARY KEY (`reward_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "secondary_banner"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `secondary_banner` (
    `sec_banner_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `banner_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `banner_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`sec_banner_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "society"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `society` (
    `society_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `society_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city_id` INTEGER(100) NOT NULL,
    PRIMARY KEY (`society_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `store` (
    `store_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `store_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `employee_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `admin_share` FLOAT NOT NULL DEFAULT 0,
    `device_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lat` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lng` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`store_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_bank"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_bank` (
    `ac_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `store_id` INTEGER(11) NOT NULL,
    `ac_no` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ifsc` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `holder_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `bank_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `upi` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`ac_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_earning"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_earning` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `store_id` INTEGER(11) NOT NULL,
    `paid` FLOAT NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_notification"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_notification` (
    `not_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `not_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `not_message` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `store_id` INTEGER(11) NOT NULL,
    `read_by_store` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`not_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_orders"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_orders` (
    `store_order_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `varient_id` INTEGER(11) NOT NULL,
    `qty` INTEGER(11) NOT NULL,
    `price` FLOAT NOT NULL,
    `order_cart_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order_date` DATETIME NOT NULL,
    `store_approval` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`store_order_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_products"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_products` (
    `p_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `varient_id` INTEGER(11) NOT NULL,
    `stock` INTEGER(11) NOT NULL,
    `store_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`p_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "store_society"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `store_society` (
    `store_society_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `society_id` INTEGER(100) NOT NULL,
    `store_id` INTEGER(100) NOT NULL,
    PRIMARY KEY (`store_society_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_web_setting"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_web_setting` (
    `set_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `icon` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `favicon` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`set_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "termspage"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `termspage` (
    `terms_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`terms_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "time_slot"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `time_slot` (
    `time_slot_id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `open_hour` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `close_hour` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time_slot` INTEGER(11) NOT NULL,
    PRIMARY KEY (`time_slot_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_phone` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `device_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_image` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
    `user_password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `otp_value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `wallet` FLOAT NOT NULL DEFAULT 0,
    `rewards` INTEGER(11) NOT NULL DEFAULT 0,
    `is_verified` INTEGER(11) NOT NULL DEFAULT 0,
    `block` INTEGER(11) NOT NULL DEFAULT 0,
    `reg_date` DATETIME NOT NULL,
    PRIMARY KEY (`user_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "wallet_recharge_history"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `wallet_recharge_history` (
    `wallet_recharge_history` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `recharge_status` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` FLOAT NOT NULL,
    `date_of_recharge` DATE NOT NULL,
    PRIMARY KEY (`wallet_recharge_history`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "address"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `address` (
    `address_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `receiver_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `receiver_phone` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `society` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `house_no` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `landmark` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `state` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pincode` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lat` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `lng` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `select_status` INTEGER(11) NOT NULL,
    `added_at` DATETIME NOT NULL,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`address_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cart_rewards"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `cart_rewards` (
    `cart_rewards_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cart_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rewards` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`cart_rewards_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deal_product"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `deal_product` (
    `deal_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `varient_id` INTEGER(11) NOT NULL,
    `deal_price` FLOAT NOT NULL,
    `valid_from` DATETIME NOT NULL,
    `valid_to` DATETIME NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`deal_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "delivery_rating"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `delivery_rating` (
    `rating_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `dboy_id` INTEGER(11) NOT NULL,
    `rating` FLOAT NOT NULL,
    `description` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`rating_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notificationby"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `notificationby` (
    `noti_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `sms` INTEGER(11) NOT NULL,
    `app` INTEGER(11) NOT NULL,
    `email` INTEGER(11) NOT NULL,
    PRIMARY KEY (`noti_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `order_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `store_id` INTEGER(11) NOT NULL,
    `address_id` INTEGER(11) NOT NULL,
    `cart_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `total_price` FLOAT NOT NULL,
    `payment_method` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paid_by_wallet` FLOAT NOT NULL DEFAULT 0,
    `rem_price` FLOAT NOT NULL DEFAULT 0,
    `order_date` DATE NOT NULL,
    `delivery_date` DATE NOT NULL,
    `delivery_charge` FLOAT NOT NULL DEFAULT 0,
    `time_slot` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `dboy_id` INTEGER(11) NOT NULL DEFAULT 0,
    `order_status` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
    `user_signature` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cancelling_reason` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `coupon_id` INTEGER(11) NOT NULL DEFAULT 0,
    `coupon_discount` FLOAT NOT NULL DEFAULT 0,
    `payment_status` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cancel_by_store` INTEGER(11) NOT NULL DEFAULT 0,
    `updated_at` DATETIME,
    PRIMARY KEY (`order_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_notification"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_notification` (
    `noti_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `noti_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `noti_message` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `read_by_user` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`noti_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `address` ADD CONSTRAINT `users_address` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `cart_rewards` ADD CONSTRAINT `users_cart_rewards` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `deal_product` ADD CONSTRAINT `product_varient_deal_product` 
    FOREIGN KEY (`varient_id`) REFERENCES `product_varient` (`varient_id`);

ALTER TABLE `delivery_rating` ADD CONSTRAINT `delivery_boy_delivery_rating` 
    FOREIGN KEY (`dboy_id`) REFERENCES `delivery_boy` (`dboy_id`);

ALTER TABLE `delivery_rating` ADD CONSTRAINT `users_delivery_rating` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `notificationby` ADD CONSTRAINT `users_notificationby` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `orders` ADD CONSTRAINT `coupon_orders` 
    FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`coupon_id`);

ALTER TABLE `orders` ADD CONSTRAINT `delivery_boy_orders` 
    FOREIGN KEY (`dboy_id`) REFERENCES `delivery_boy` (`dboy_id`);

ALTER TABLE `orders` ADD CONSTRAINT `store_orders` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `orders` ADD CONSTRAINT `users_orders` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `product` ADD CONSTRAINT `categories_product` 
    FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

ALTER TABLE `product_varient` ADD CONSTRAINT `product_product_varient` 
    FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

ALTER TABLE `store_bank` ADD CONSTRAINT `store_store_bank` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `store_earning` ADD CONSTRAINT `store_store_earning` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `store_notification` ADD CONSTRAINT `store_store_notification` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `store_orders` ADD CONSTRAINT `product_varient_store_orders` 
    FOREIGN KEY (`varient_id`) REFERENCES `product_varient` (`varient_id`);

ALTER TABLE `store_products` ADD CONSTRAINT `product_varient_store_products` 
    FOREIGN KEY (`varient_id`) REFERENCES `product_varient` (`varient_id`);

ALTER TABLE `store_products` ADD CONSTRAINT `store_store_products` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `store_society` ADD CONSTRAINT `society_store_society` 
    FOREIGN KEY (`society_id`) REFERENCES `society` (`society_id`);

ALTER TABLE `store_society` ADD CONSTRAINT `store_store_society` 
    FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

ALTER TABLE `user_notification` ADD CONSTRAINT `users_user_notification` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `wallet_recharge_history` ADD CONSTRAINT `users_wallet_recharge_history` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
