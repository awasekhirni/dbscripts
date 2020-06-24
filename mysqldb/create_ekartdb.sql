# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ekartdbone.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 21:00                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "area"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `area` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `city_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "category"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `category` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subtitle` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(4) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "city"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `city` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "delivery_boys"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `delivery_boys` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `mobile` VARCHAR(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `password` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `bonus` INTEGER(11) NOT NULL,
    `balance` DOUBLE NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "devices"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `devices` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `token` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faq"                                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `faq` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `question` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `answer` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` CHAR(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '1',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fund_transfers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `fund_transfers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `delivery_boy_id` INTEGER(11) NOT NULL,
    `opening_balance` DOUBLE NOT NULL,
    `closing_balance` DOUBLE NOT NULL,
    `amount` DOUBLE NOT NULL,
    `status` VARCHAR(28) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message` VARCHAR(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoice_date` DATE NOT NULL,
    `order_id` INTEGER(11) NOT NULL,
    `name` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `order_date` DATETIME NOT NULL,
    `phone_number` VARCHAR(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `order_list` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `discount` VARCHAR(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `total_sale` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `shipping_charge` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message` VARCHAR(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type` VARCHAR(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type_id` INTEGER(11) NOT NULL,
    `image` VARCHAR(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_sent` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "offers"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `offers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `image` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `delivery_boy_id` INTEGER(11) NOT NULL,
    `mobile` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `total` FLOAT NOT NULL,
    `delivery_charge` FLOAT NOT NULL,
    `wallet_balance` FLOAT NOT NULL,
    `final_total` FLOAT,
    `discount` FLOAT NOT NULL,
    `payment_method` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `delivery_time` VARCHAR(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` VARCHAR(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `active_status` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `latitude` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `longitude` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `promo_code` VARCHAR(28) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "payment_requests"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_requests` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `payment_type` VARCHAR(56) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_address` VARCHAR(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `amount_requested` INTEGER(11) NOT NULL,
    `remarks` VARCHAR(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_variant"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_variant` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11) NOT NULL,
    `type` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `measurement` INTEGER(11) NOT NULL,
    `measurement_unit_id` INTEGER(11) NOT NULL,
    `price` INTEGER(11) NOT NULL,
    `discounted_price` INTEGER(11) NOT NULL,
    `serve_for` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `stock` FLOAT NOT NULL,
    `stock_unit_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `row_order` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `subcategory_id` INTEGER(11) NOT NULL,
    `indicator` TINYINT(4) NOT NULL COMMENT '0 - none | 1 - veg | 2 - non-veg',
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `other_images` VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) DEFAULT 1,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "promo_codes"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `promo_codes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `promo_code` VARCHAR(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `message` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `start_date` VARCHAR(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `end_date` VARCHAR(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `no_of_users` INTEGER(11) NOT NULL,
    `minimum_order_amount` INTEGER(11) NOT NULL,
    `discount` INTEGER(11) NOT NULL,
    `discount_type` VARCHAR(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `max_discount_amount` INTEGER(11) NOT NULL,
    `repeat_usage` TINYINT(4) NOT NULL,
    `no_of_repeat_usage` INTEGER(11) NOT NULL,
    `status` TINYINT(4) NOT NULL,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sections"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sections` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `short_description` VARCHAR(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `style` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `product_ids` VARCHAR(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "seller"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `seller` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `mobile` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `company_name` VARCHAR(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `personal_address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `company_address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `dob` DATE NOT NULL,
    `account_details` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `password` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `gst_no` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pan_no` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` VARCHAR(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `commission` VARCHAR(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `balance` INTEGER(11) NOT NULL,
    `last_login_ip` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `last_updated` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `variable` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "slider"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `slider` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type_id` TINYINT(4) NOT NULL,
    `image` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "subcategory"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `subcategory` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subtitle` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "time_slots"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `time_slots` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `from_time` TIME NOT NULL,
    `to_time` TIME NOT NULL,
    `last_order_time` TIME NOT NULL,
    `status` TINYINT(4) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "unit"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `unit` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `short_code` VARCHAR(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `parent_id` INTEGER(11),
    `conversion` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `mobile` VARCHAR(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `dob` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `city` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `area` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `street` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pincode` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `apikey` VARCHAR(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `balance` DOUBLE NOT NULL DEFAULT 0,
    `referral_code` VARCHAR(28) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `friends_code` VARCHAR(28) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `fcm_id` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `latitude` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `longitude` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `password` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` INTEGER(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "wallet_transactions"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `wallet_transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `type` VARCHAR(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'credit | debit',
    `amount` DOUBLE NOT NULL,
    `message` VARCHAR(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(4) NOT NULL,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_updated` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "order_items"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `order_id` INTEGER(11) NOT NULL,
    `product_variant_id` INTEGER(11) NOT NULL,
    `quantity` INTEGER(11) NOT NULL,
    `price` FLOAT NOT NULL,
    `discounted_price` DOUBLE NOT NULL,
    `discount` FLOAT NOT NULL,
    `sub_total` FLOAT NOT NULL,
    `deliver_by` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `active_status` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_id` ON `order_items` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `order_id` VARCHAR(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type` VARCHAR(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `txn_id` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payu_txn_id` VARCHAR(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `amount` DOUBLE NOT NULL,
    `status` VARCHAR(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message` VARCHAR(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `transaction_date` DATETIME NOT NULL,
    `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `user_id` ON `transactions` (`user_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `order_items` ADD CONSTRAINT `order_items_ibfk_1` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `transactions` ADD CONSTRAINT `transactions_ibfk_1` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
