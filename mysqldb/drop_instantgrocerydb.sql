# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          instantgrocerydb.dez                            #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:32                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `address` DROP FOREIGN KEY `users_address`;

ALTER TABLE `cart_rewards` DROP FOREIGN KEY `users_cart_rewards`;

ALTER TABLE `deal_product` DROP FOREIGN KEY `product_varient_deal_product`;

ALTER TABLE `delivery_rating` DROP FOREIGN KEY `delivery_boy_delivery_rating`;

ALTER TABLE `delivery_rating` DROP FOREIGN KEY `users_delivery_rating`;

ALTER TABLE `notificationby` DROP FOREIGN KEY `users_notificationby`;

ALTER TABLE `orders` DROP FOREIGN KEY `coupon_orders`;

ALTER TABLE `orders` DROP FOREIGN KEY `delivery_boy_orders`;

ALTER TABLE `orders` DROP FOREIGN KEY `store_orders`;

ALTER TABLE `orders` DROP FOREIGN KEY `users_orders`;

ALTER TABLE `product` DROP FOREIGN KEY `categories_product`;

ALTER TABLE `product_varient` DROP FOREIGN KEY `product_product_varient`;

ALTER TABLE `store_bank` DROP FOREIGN KEY `store_store_bank`;

ALTER TABLE `store_earning` DROP FOREIGN KEY `store_store_earning`;

ALTER TABLE `store_notification` DROP FOREIGN KEY `store_store_notification`;

ALTER TABLE `store_orders` DROP FOREIGN KEY `product_varient_store_orders`;

ALTER TABLE `store_products` DROP FOREIGN KEY `product_varient_store_products`;

ALTER TABLE `store_products` DROP FOREIGN KEY `store_store_products`;

ALTER TABLE `store_society` DROP FOREIGN KEY `society_store_society`;

ALTER TABLE `store_society` DROP FOREIGN KEY `store_store_society`;

ALTER TABLE `user_notification` DROP FOREIGN KEY `users_user_notification`;

ALTER TABLE `wallet_recharge_history` DROP FOREIGN KEY `users_wallet_recharge_history`;

# ---------------------------------------------------------------------- #
# Drop table "user_notification"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_notification` MODIFY `noti_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `user_notification` ALTER COLUMN `read_by_user` DROP DEFAULT;

ALTER TABLE `user_notification` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `user_notification` DROP PRIMARY KEY;

DROP TABLE `user_notification`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `order_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `paid_by_wallet` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `rem_price` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `delivery_charge` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `dboy_id` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `order_status` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `coupon_id` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `coupon_discount` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `cancel_by_store` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "notificationby"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notificationby` MODIFY `noti_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notificationby` DROP PRIMARY KEY;

DROP TABLE `notificationby`;

# ---------------------------------------------------------------------- #
# Drop table "delivery_rating"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `delivery_rating` MODIFY `rating_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `delivery_rating` DROP PRIMARY KEY;

DROP TABLE `delivery_rating`;

# ---------------------------------------------------------------------- #
# Drop table "deal_product"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deal_product` MODIFY `deal_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `deal_product` DROP PRIMARY KEY;

DROP TABLE `deal_product`;

# ---------------------------------------------------------------------- #
# Drop table "cart_rewards"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cart_rewards` MODIFY `cart_rewards_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `cart_rewards` DROP PRIMARY KEY;

DROP TABLE `cart_rewards`;

# ---------------------------------------------------------------------- #
# Drop table "address"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `address` MODIFY `address_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `address` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `address` DROP PRIMARY KEY;

DROP TABLE `address`;

# ---------------------------------------------------------------------- #
# Drop table "wallet_recharge_history"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `wallet_recharge_history` MODIFY `wallet_recharge_history` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `wallet_recharge_history` DROP PRIMARY KEY;

DROP TABLE `wallet_recharge_history`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `user_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `user_image` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `wallet` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `rewards` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `block` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "time_slot"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `time_slot` MODIFY `time_slot_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `time_slot` DROP PRIMARY KEY;

DROP TABLE `time_slot`;

# ---------------------------------------------------------------------- #
# Drop table "termspage"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `termspage` MODIFY `terms_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `termspage` DROP PRIMARY KEY;

DROP TABLE `termspage`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_web_setting"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_web_setting` MODIFY `set_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_web_setting` DROP PRIMARY KEY;

DROP TABLE `tbl_web_setting`;

# ---------------------------------------------------------------------- #
# Drop table "store_society"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_society` MODIFY `store_society_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `store_society` DROP PRIMARY KEY;

DROP TABLE `store_society`;

# ---------------------------------------------------------------------- #
# Drop table "store_products"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_products` MODIFY `p_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `store_products` DROP PRIMARY KEY;

DROP TABLE `store_products`;

# ---------------------------------------------------------------------- #
# Drop table "store_orders"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_orders` MODIFY `store_order_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `store_orders` ALTER COLUMN `store_approval` DROP DEFAULT;

ALTER TABLE `store_orders` DROP PRIMARY KEY;

DROP TABLE `store_orders`;

# ---------------------------------------------------------------------- #
# Drop table "store_notification"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_notification` MODIFY `not_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `store_notification` ALTER COLUMN `read_by_store` DROP DEFAULT;

ALTER TABLE `store_notification` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `store_notification` DROP PRIMARY KEY;

DROP TABLE `store_notification`;

# ---------------------------------------------------------------------- #
# Drop table "store_earning"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_earning` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `store_earning` DROP PRIMARY KEY;

DROP TABLE `store_earning`;

# ---------------------------------------------------------------------- #
# Drop table "store_bank"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store_bank` MODIFY `ac_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `store_bank` DROP PRIMARY KEY;

DROP TABLE `store_bank`;

# ---------------------------------------------------------------------- #
# Drop table "store"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `store` MODIFY `store_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `store` ALTER COLUMN `admin_share` DROP DEFAULT;

ALTER TABLE `store` DROP PRIMARY KEY;

DROP TABLE `store`;

# ---------------------------------------------------------------------- #
# Drop table "society"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `society` MODIFY `society_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `society` DROP PRIMARY KEY;

DROP TABLE `society`;

# ---------------------------------------------------------------------- #
# Drop table "secondary_banner"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `secondary_banner` MODIFY `sec_banner_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `secondary_banner` DROP PRIMARY KEY;

DROP TABLE `secondary_banner`;

# ---------------------------------------------------------------------- #
# Drop table "reward_points"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reward_points` MODIFY `reward_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `reward_points` DROP PRIMARY KEY;

DROP TABLE `reward_points`;

# ---------------------------------------------------------------------- #
# Drop table "reedem_values"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reedem_values` MODIFY `reedem_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `reedem_values` DROP PRIMARY KEY;

DROP TABLE `reedem_values`;

# ---------------------------------------------------------------------- #
# Drop table "product_varient"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_varient` MODIFY `varient_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_varient` DROP PRIMARY KEY;

DROP TABLE `product_varient`;

# ---------------------------------------------------------------------- #
# Drop table "product"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product` MODIFY `product_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product` DROP PRIMARY KEY;

DROP TABLE `product`;

# ---------------------------------------------------------------------- #
# Drop table "payout_requests"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payout_requests` MODIFY `req_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payout_requests` ALTER COLUMN `complete` DROP DEFAULT;

ALTER TABLE `payout_requests` DROP PRIMARY KEY;

DROP TABLE `payout_requests`;

# ---------------------------------------------------------------------- #
# Drop table "payout_req_valid"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payout_req_valid` MODIFY `val_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payout_req_valid` DROP PRIMARY KEY;

DROP TABLE `payout_req_valid`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "msg91"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `msg91` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `msg91` DROP PRIMARY KEY;

DROP TABLE `msg91`;

# ---------------------------------------------------------------------- #
# Drop table "minimum_maximum_order_value"                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `minimum_maximum_order_value` MODIFY `min_max_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `minimum_maximum_order_value` DROP PRIMARY KEY;

DROP TABLE `minimum_maximum_order_value`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "map_api"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `map_api` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `map_api` DROP PRIMARY KEY;

DROP TABLE `map_api`;

# ---------------------------------------------------------------------- #
# Drop table "freedeliverycart"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `freedeliverycart` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `freedeliverycart` ALTER COLUMN `min_cart_value` DROP DEFAULT;

ALTER TABLE `freedeliverycart` ALTER COLUMN `del_charge` DROP DEFAULT;

ALTER TABLE `freedeliverycart` DROP PRIMARY KEY;

DROP TABLE `freedeliverycart`;

# ---------------------------------------------------------------------- #
# Drop table "fcm"                                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fcm` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `fcm` DROP PRIMARY KEY;

DROP TABLE `fcm`;

# ---------------------------------------------------------------------- #
# Drop table "failed_jobs"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `failed_jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `failed_jobs` ALTER COLUMN `failed_at` DROP DEFAULT;

ALTER TABLE `failed_jobs` DROP PRIMARY KEY;

DROP TABLE `failed_jobs`;

# ---------------------------------------------------------------------- #
# Drop table "delivery_boy"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `delivery_boy` MODIFY `dboy_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `delivery_boy` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `delivery_boy` DROP PRIMARY KEY;

DROP TABLE `delivery_boy`;

# ---------------------------------------------------------------------- #
# Drop table "currency"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `currency` DROP PRIMARY KEY;

DROP TABLE `currency`;

# ---------------------------------------------------------------------- #
# Drop table "coupon"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupon` MODIFY `coupon_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `coupon` DROP PRIMARY KEY;

DROP TABLE `coupon`;

# ---------------------------------------------------------------------- #
# Drop table "closing_hours"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `closing_hours` MODIFY `closing_hrs_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `closing_hours` DROP PRIMARY KEY;

DROP TABLE `closing_hours`;

# ---------------------------------------------------------------------- #
# Drop table "city"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `city` MODIFY `city_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `city` DROP PRIMARY KEY;

DROP TABLE `city`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `cat_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `parent` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "cancel_for"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cancel_for` MODIFY `res_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `cancel_for` DROP PRIMARY KEY;

DROP TABLE `cancel_for`;

# ---------------------------------------------------------------------- #
# Drop table "banner"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `banner` MODIFY `banner_id` INTEGER(100) NOT NULL;

# Drop constraints #

ALTER TABLE `banner` DROP PRIMARY KEY;

DROP TABLE `banner`;

# ---------------------------------------------------------------------- #
# Drop table "admin_payouts"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_payouts` MODIFY `payout_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_payouts` DROP PRIMARY KEY;

DROP TABLE `admin_payouts`;

# ---------------------------------------------------------------------- #
# Drop table "admin"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `admin` DROP PRIMARY KEY;

DROP TABLE `admin`;

# ---------------------------------------------------------------------- #
# Drop table "aboutuspage"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `aboutuspage` MODIFY `about_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `aboutuspage` DROP PRIMARY KEY;

DROP TABLE `aboutuspage`;
