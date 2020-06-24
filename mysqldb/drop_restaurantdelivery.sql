# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          restaurantdelivery.dez                          #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:28                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `cart_extras` DROP FOREIGN KEY `cart_extras_cart_id_foreign`;

ALTER TABLE `cart_extras` DROP FOREIGN KEY `cart_extras_extra_id_foreign`;

ALTER TABLE `carts` DROP FOREIGN KEY `carts_food_id_foreign`;

ALTER TABLE `carts` DROP FOREIGN KEY `carts_user_id_foreign`;

ALTER TABLE `custom_field_values` DROP FOREIGN KEY `custom_field_values_custom_field_id_foreign`;

ALTER TABLE `delivery_addresses` DROP FOREIGN KEY `delivery_addresses_user_id_foreign`;

ALTER TABLE `driver_restaurants` DROP FOREIGN KEY `driver_restaurants_restaurant_id_foreign`;

ALTER TABLE `driver_restaurants` DROP FOREIGN KEY `driver_restaurants_user_id_foreign`;

ALTER TABLE `drivers` DROP FOREIGN KEY `drivers_user_id_foreign`;

ALTER TABLE `drivers_payouts` DROP FOREIGN KEY `drivers_payouts_user_id_foreign`;

ALTER TABLE `earnings` DROP FOREIGN KEY `earnings_restaurant_id_foreign`;

ALTER TABLE `extras` DROP FOREIGN KEY `extras_food_id_foreign`;

ALTER TABLE `faqs` DROP FOREIGN KEY `faqs_faq_category_id_foreign`;

ALTER TABLE `favorite_extras` DROP FOREIGN KEY `favorite_extras_extra_id_foreign`;

ALTER TABLE `favorite_extras` DROP FOREIGN KEY `favorite_extras_favorite_id_foreign`;

ALTER TABLE `favorites` DROP FOREIGN KEY `favorites_food_id_foreign`;

ALTER TABLE `favorites` DROP FOREIGN KEY `favorites_user_id_foreign`;

ALTER TABLE `food_order_extras` DROP FOREIGN KEY `food_order_extras_extra_id_foreign`;

ALTER TABLE `food_order_extras` DROP FOREIGN KEY `food_order_extras_food_order_id_foreign`;

ALTER TABLE `food_orders` DROP FOREIGN KEY `food_orders_food_id_foreign`;

ALTER TABLE `food_orders` DROP FOREIGN KEY `food_orders_order_id_foreign`;

ALTER TABLE `food_reviews` DROP FOREIGN KEY `food_reviews_food_id_foreign`;

ALTER TABLE `food_reviews` DROP FOREIGN KEY `food_reviews_user_id_foreign`;

ALTER TABLE `foods` DROP FOREIGN KEY `foods_category_id_foreign`;

ALTER TABLE `foods` DROP FOREIGN KEY `foods_restaurant_id_foreign`;

ALTER TABLE `galleries` DROP FOREIGN KEY `galleries_restaurant_id_foreign`;

ALTER TABLE `model_has_permissions` DROP FOREIGN KEY `model_has_permissions_permission_id_foreign`;

ALTER TABLE `model_has_roles` DROP FOREIGN KEY `model_has_roles_role_id_foreign`;

ALTER TABLE `nutrition` DROP FOREIGN KEY `nutrition_food_id_foreign`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_delivery_address_id_foreign`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_driver_id_foreign`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_order_status_id_foreign`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_payment_id_foreign`;

ALTER TABLE `orders` DROP FOREIGN KEY `orders_user_id_foreign`;

ALTER TABLE `payments` DROP FOREIGN KEY `payments_user_id_foreign`;

ALTER TABLE `restaurant_reviews` DROP FOREIGN KEY `restaurant_reviews_restaurant_id_foreign`;

ALTER TABLE `restaurant_reviews` DROP FOREIGN KEY `restaurant_reviews_user_id_foreign`;

ALTER TABLE `restaurants_payouts` DROP FOREIGN KEY `restaurants_payouts_restaurant_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_permission_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_role_id_foreign`;

ALTER TABLE `user_restaurants` DROP FOREIGN KEY `user_restaurants_restaurant_id_foreign`;

ALTER TABLE `user_restaurants` DROP FOREIGN KEY `user_restaurants_user_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "food_order_extras"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `food_order_extras` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `food_order_extras` DROP PRIMARY KEY;

DROP TABLE `food_order_extras`;

# ---------------------------------------------------------------------- #
# Drop table "food_orders"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `food_orders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `food_orders` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `food_orders` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `food_orders` DROP PRIMARY KEY;

DROP TABLE `food_orders`;

# ---------------------------------------------------------------------- #
# Drop table "favorite_extras"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `favorite_extras` DROP PRIMARY KEY;

DROP TABLE `favorite_extras`;

# ---------------------------------------------------------------------- #
# Drop table "cart_extras"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `cart_extras` DROP PRIMARY KEY;

DROP TABLE `cart_extras`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `delivery_fee` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "food_reviews"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `food_reviews` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `food_reviews` DROP PRIMARY KEY;

DROP TABLE `food_reviews`;

# ---------------------------------------------------------------------- #
# Drop table "favorites"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `favorites` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `favorites` DROP PRIMARY KEY;

DROP TABLE `favorites`;

# ---------------------------------------------------------------------- #
# Drop table "extras"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `extras` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `extras` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `extras` DROP PRIMARY KEY;

DROP TABLE `extras`;

# ---------------------------------------------------------------------- #
# Drop table "carts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `carts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `carts` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `carts` DROP PRIMARY KEY;

DROP TABLE `carts`;

# ---------------------------------------------------------------------- #
# Drop table "user_restaurants"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `user_restaurants` DROP PRIMARY KEY;

DROP TABLE `user_restaurants`;

# ---------------------------------------------------------------------- #
# Drop table "role_has_permissions"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `role_has_permissions` DROP PRIMARY KEY;

DROP TABLE `role_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "restaurant_reviews"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `restaurant_reviews` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `restaurant_reviews` DROP PRIMARY KEY;

DROP TABLE `restaurant_reviews`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payments` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "nutrition"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `nutrition` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `nutrition` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `nutrition` DROP PRIMARY KEY;

DROP TABLE `nutrition`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_roles"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `model_has_roles` DROP PRIMARY KEY;

DROP TABLE `model_has_roles`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_permissions"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `model_has_permissions` DROP PRIMARY KEY;

DROP TABLE `model_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "galleries"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `galleries` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `galleries` DROP PRIMARY KEY;

DROP TABLE `galleries`;

# ---------------------------------------------------------------------- #
# Drop table "foods"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `foods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `foods` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `foods` ALTER COLUMN `discount_price` DROP DEFAULT;

ALTER TABLE `foods` ALTER COLUMN `weight` DROP DEFAULT;

ALTER TABLE `foods` DROP PRIMARY KEY;

DROP TABLE `foods`;

# ---------------------------------------------------------------------- #
# Drop table "earnings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `earnings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `earnings` ALTER COLUMN `total_orders` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `total_earning` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `admin_earning` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `restaurant_earning` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `delivery_fee` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `earnings` DROP PRIMARY KEY;

DROP TABLE `earnings`;

# ---------------------------------------------------------------------- #
# Drop table "drivers_payouts"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `drivers_payouts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `drivers_payouts` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `drivers_payouts` DROP PRIMARY KEY;

DROP TABLE `drivers_payouts`;

# ---------------------------------------------------------------------- #
# Drop table "drivers"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `drivers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `drivers` ALTER COLUMN `delivery_fee` DROP DEFAULT;

ALTER TABLE `drivers` ALTER COLUMN `total_orders` DROP DEFAULT;

ALTER TABLE `drivers` ALTER COLUMN `earning` DROP DEFAULT;

ALTER TABLE `drivers` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `drivers` DROP PRIMARY KEY;

DROP TABLE `drivers`;

# ---------------------------------------------------------------------- #
# Drop table "driver_restaurants"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `driver_restaurants` DROP PRIMARY KEY;

DROP TABLE `driver_restaurants`;

# ---------------------------------------------------------------------- #
# Drop table "delivery_addresses"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `delivery_addresses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `delivery_addresses` DROP PRIMARY KEY;

DROP TABLE `delivery_addresses`;

# ---------------------------------------------------------------------- #
# Drop table "custom_field_values"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_field_values` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `custom_field_values` DROP PRIMARY KEY;

DROP TABLE `custom_field_values`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "uploads"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `uploads` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `uploads` DROP PRIMARY KEY;

DROP TABLE `uploads`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `roles` ALTER COLUMN `guard_name` DROP DEFAULT;

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "restaurants_payouts"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `restaurants_payouts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `restaurants_payouts` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `restaurants_payouts` DROP PRIMARY KEY;

DROP TABLE `restaurants_payouts`;

# ---------------------------------------------------------------------- #
# Drop table "restaurants"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `restaurants` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `restaurants` ALTER COLUMN `delivery_fee` DROP DEFAULT;

ALTER TABLE `restaurants` ALTER COLUMN `admin_commission` DROP DEFAULT;

ALTER TABLE `restaurants` DROP PRIMARY KEY;

DROP TABLE `restaurants`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` ALTER COLUMN `guard_name` DROP DEFAULT;

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "order_statuses"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_statuses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `order_statuses` DROP PRIMARY KEY;

DROP TABLE `order_statuses`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "media"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `media` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `media` DROP PRIMARY KEY;

DROP TABLE `media`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "faq_categories"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faq_categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faq_categories` DROP PRIMARY KEY;

DROP TABLE `faq_categories`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_fields` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `custom_fields` DROP PRIMARY KEY;

DROP TABLE `custom_fields`;

# ---------------------------------------------------------------------- #
# Drop table "currencies"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currencies` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currencies` DROP PRIMARY KEY;

DROP TABLE `currencies`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "app_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `app_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `app_settings` DROP PRIMARY KEY;

DROP TABLE `app_settings`;
