# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          hotelbookingdb.dez                              #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 08:28                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `applied_coupon_codes` DROP FOREIGN KEY `applied_coupon_codes_coupon_id_foreign`;

ALTER TABLE `applied_coupon_codes` DROP FOREIGN KEY `applied_coupon_codes_reservation_id_foreign`;

ALTER TABLE `applied_coupon_codes` DROP FOREIGN KEY `applied_coupon_codes_user_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "applied_coupon_codes"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `applied_coupon_codes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `applied_coupon_codes` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `applied_coupon_codes` ALTER COLUMN `coupon_rate` DROP DEFAULT;

ALTER TABLE `applied_coupon_codes` DROP PRIMARY KEY;

DROP TABLE `applied_coupon_codes`;

# ---------------------------------------------------------------------- #
# Drop table "web_socials"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_socials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_socials` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `web_socials` DROP PRIMARY KEY;

DROP TABLE `web_socials`;

# ---------------------------------------------------------------------- #
# Drop table "web_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_settings` DROP PRIMARY KEY;

DROP TABLE `web_settings`;

# ---------------------------------------------------------------------- #
# Drop table "web_our_teams"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_our_teams` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_our_teams` DROP PRIMARY KEY;

DROP TABLE `web_our_teams`;

# ---------------------------------------------------------------------- #
# Drop table "web_our_client_feedbacks"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_our_client_feedbacks` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_our_client_feedbacks` DROP PRIMARY KEY;

DROP TABLE `web_our_client_feedbacks`;

# ---------------------------------------------------------------------- #
# Drop table "web_gallery_categories"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_gallery_categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_gallery_categories` DROP PRIMARY KEY;

DROP TABLE `web_gallery_categories`;

# ---------------------------------------------------------------------- #
# Drop table "web_galleries"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_galleries` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_galleries` DROP PRIMARY KEY;

DROP TABLE `web_galleries`;

# ---------------------------------------------------------------------- #
# Drop table "web_faqs"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_faqs` DROP PRIMARY KEY;

DROP TABLE `web_faqs`;

# ---------------------------------------------------------------------- #
# Drop table "web_facilities"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_facilities` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_facilities` DROP PRIMARY KEY;

DROP TABLE `web_facilities`;

# ---------------------------------------------------------------------- #
# Drop table "web_counter_sections"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_counter_sections` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `web_counter_sections` ALTER COLUMN `number` DROP DEFAULT;

ALTER TABLE `web_counter_sections` DROP PRIMARY KEY;

DROP TABLE `web_counter_sections`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `sex` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `vip` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_verified_code` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `sms_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `sms_verified_code` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

# ---------------------------------------------------------------------- #
# Drop table "tax_managers"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tax_managers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tax_managers` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `tax_managers` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `tax_managers` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tax_managers` DROP PRIMARY KEY;

DROP TABLE `tax_managers`;

# ---------------------------------------------------------------------- #
# Drop table "special_prices"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `special_prices` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `special_prices` ALTER COLUMN `day_1_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_2_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_3_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_4_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_5_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_6_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `day_7_amount` DROP DEFAULT;

ALTER TABLE `special_prices` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `special_prices` DROP PRIMARY KEY;

DROP TABLE `special_prices`;

# ---------------------------------------------------------------------- #
# Drop table "rooms"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `rooms` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `rooms` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `rooms` DROP PRIMARY KEY;

DROP TABLE `rooms`;

# ---------------------------------------------------------------------- #
# Drop table "room_types"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `room_types` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `room_types` ALTER COLUMN `higher_capacity` DROP DEFAULT;

ALTER TABLE `room_types` ALTER COLUMN `kids_capacity` DROP DEFAULT;

ALTER TABLE `room_types` ALTER COLUMN `base_price` DROP DEFAULT;

ALTER TABLE `room_types` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `room_types` DROP PRIMARY KEY;

DROP TABLE `room_types`;

# ---------------------------------------------------------------------- #
# Drop table "room_type_pivot_amenity"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `room_type_pivot_amenity` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `room_type_pivot_amenity` DROP PRIMARY KEY;

DROP TABLE `room_type_pivot_amenity`;

# ---------------------------------------------------------------------- #
# Drop table "room_type_images"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `room_type_images` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `room_type_images` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `room_type_images` DROP PRIMARY KEY;

DROP TABLE `room_type_images`;

# ---------------------------------------------------------------------- #
# Drop table "reservations"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reservations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reservations` ALTER COLUMN `online` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `adults` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `kids` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `extra_bed` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `extra_bed_charge` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `number_of_room` DROP DEFAULT;

ALTER TABLE `reservations` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `reservations` DROP PRIMARY KEY;

DROP TABLE `reservations`;

# ---------------------------------------------------------------------- #
# Drop table "reservation_taxes"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reservation_taxes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reservation_taxes` ALTER COLUMN `value` DROP DEFAULT;

ALTER TABLE `reservation_taxes` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `reservation_taxes` DROP PRIMARY KEY;

DROP TABLE `reservation_taxes`;

# ---------------------------------------------------------------------- #
# Drop table "reservation_paid_services"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reservation_paid_services` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reservation_paid_services` ALTER COLUMN `value` DROP DEFAULT;

ALTER TABLE `reservation_paid_services` ALTER COLUMN `qty` DROP DEFAULT;

ALTER TABLE `reservation_paid_services` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `reservation_paid_services` DROP PRIMARY KEY;

DROP TABLE `reservation_paid_services`;

# ---------------------------------------------------------------------- #
# Drop table "reservation_nights"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reservation_nights` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reservation_nights` DROP PRIMARY KEY;

DROP TABLE `reservation_nights`;

# ---------------------------------------------------------------------- #
# Drop table "regular_prices"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `regular_prices` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `regular_prices` ALTER COLUMN `day_1_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_2_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_3_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_4_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_5_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_6_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` ALTER COLUMN `day_7_amount` DROP DEFAULT;

ALTER TABLE `regular_prices` DROP PRIMARY KEY;

DROP TABLE `regular_prices`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `hit` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payments` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `usd_amo` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `try` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `btc_amo` DROP DEFAULT;

ALTER TABLE `payments` ALTER COLUMN `btc_wallet` DROP DEFAULT;

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "paid_services"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `paid_services` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `paid_services` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `paid_services` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `paid_services` DROP PRIMARY KEY;

DROP TABLE `paid_services`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `general_settings` ALTER COLUMN `en` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `mn` DROP DEFAULT;

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "gateways"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `gateways` ALTER COLUMN `minamo` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `maxamo` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `fixed_charge` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `percent_charge` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `is_online` DROP DEFAULT;

ALTER TABLE `gateways` ALTER COLUMN `is_offline` DROP DEFAULT;

ALTER TABLE `gateways` DROP PRIMARY KEY;

DROP TABLE `gateways`;

# ---------------------------------------------------------------------- #
# Drop table "floors"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `floors` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `floors` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `floors` DROP PRIMARY KEY;

DROP TABLE `floors`;

# ---------------------------------------------------------------------- #
# Drop table "coupon_pivot_paid_service"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupon_pivot_paid_service` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coupon_pivot_paid_service` DROP PRIMARY KEY;

DROP TABLE `coupon_pivot_paid_service`;

# ---------------------------------------------------------------------- #
# Drop table "coupon_pivot_include_room_type"                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupon_pivot_include_room_type` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coupon_pivot_include_room_type` DROP PRIMARY KEY;

DROP TABLE `coupon_pivot_include_room_type`;

# ---------------------------------------------------------------------- #
# Drop table "coupon_masters"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupon_masters` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coupon_masters` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `value` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `min_amount` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `max_amount` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `limit_per_user` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `limit_per_coupon` DROP DEFAULT;

ALTER TABLE `coupon_masters` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `coupon_masters` DROP PRIMARY KEY;

DROP TABLE `coupon_masters`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "amenities"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `amenities` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `amenities` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `amenities` DROP PRIMARY KEY;

DROP TABLE `amenities`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` ALTER COLUMN `sex` DROP DEFAULT;

ALTER TABLE `admins` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `admins` ALTER COLUMN `role` DROP DEFAULT;

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;
