# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          marketplacedb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:56                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `admin_user_conversations` DROP FOREIGN KEY `users_admin_user_conversations`;

ALTER TABLE `admin_user_messages` DROP FOREIGN KEY `conversations_admin_user_messages`;

ALTER TABLE `admin_user_messages` DROP FOREIGN KEY `users_admin_user_messages`;

ALTER TABLE `admins` DROP FOREIGN KEY `roles_admins`;

ALTER TABLE `attribute_options` DROP FOREIGN KEY `attributes_attribute_options`;

ALTER TABLE `comments` DROP FOREIGN KEY `products_comments`;

ALTER TABLE `comments` DROP FOREIGN KEY `users_comments`;

ALTER TABLE `favorite_sellers` DROP FOREIGN KEY `users_favorite_sellers`;

ALTER TABLE `galleries` DROP FOREIGN KEY `products_galleries`;

ALTER TABLE `messages` DROP FOREIGN KEY `conversations_messages`;

ALTER TABLE `notifications` DROP FOREIGN KEY `conversations_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `orders_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `products_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `users_notifications`;

ALTER TABLE `order_tracks` DROP FOREIGN KEY `orders_order_tracks`;

ALTER TABLE `orders` DROP FOREIGN KEY `users_orders`;

ALTER TABLE `packages` DROP FOREIGN KEY `users_packages`;

ALTER TABLE `product_clicks` DROP FOREIGN KEY `products_product_clicks`;

ALTER TABLE `products` DROP FOREIGN KEY `users_products`;

ALTER TABLE `ratings` DROP FOREIGN KEY `products_ratings`;

ALTER TABLE `ratings` DROP FOREIGN KEY `users_ratings`;

ALTER TABLE `replies` DROP FOREIGN KEY `comments_replies`;

ALTER TABLE `replies` DROP FOREIGN KEY `users_replies`;

ALTER TABLE `reports` DROP FOREIGN KEY `products_reports`;

ALTER TABLE `reports` DROP FOREIGN KEY `users_reports`;

ALTER TABLE `services` DROP FOREIGN KEY `users_services`;

ALTER TABLE `shippings` DROP FOREIGN KEY `users_shippings`;

ALTER TABLE `social_providers` DROP FOREIGN KEY `users_social_providers`;

ALTER TABLE `subscriptions` DROP FOREIGN KEY `products_subscriptions`;

ALTER TABLE `user_notifications` DROP FOREIGN KEY `users_user_notifications`;

ALTER TABLE `user_subscriptions` DROP FOREIGN KEY `products_user_subscriptions`;

ALTER TABLE `user_subscriptions` DROP FOREIGN KEY `subscriptions_user_subscriptions`;

ALTER TABLE `user_subscriptions` DROP FOREIGN KEY `users_user_subscriptions`;

ALTER TABLE `vendor_orders` DROP FOREIGN KEY `orders_vendor_orders`;

ALTER TABLE `vendor_orders` DROP FOREIGN KEY `users_vendor_orders`;

ALTER TABLE `verifications` DROP FOREIGN KEY `users_verifications`;

ALTER TABLE `wishlists` DROP FOREIGN KEY `products_wishlists`;

ALTER TABLE `wishlists` DROP FOREIGN KEY `users_wishlists`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `users_withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "replies"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `replies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `replies` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `replies` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `replies` DROP PRIMARY KEY;

DROP TABLE `replies`;

# ---------------------------------------------------------------------- #
# Drop table "product_clicks"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_clicks` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `product_clicks` DROP PRIMARY KEY;

DROP TABLE `product_clicks`;

# ---------------------------------------------------------------------- #
# Drop table "order_tracks"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_tracks` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `order_tracks` DROP PRIMARY KEY;

DROP TABLE `order_tracks`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `is_read` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "galleries"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `galleries` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `galleries` DROP PRIMARY KEY;

DROP TABLE `galleries`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "wishlists"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `wishlists` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `wishlists` DROP PRIMARY KEY;

DROP TABLE `wishlists`;

# ---------------------------------------------------------------------- #
# Drop table "vendor_orders"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `vendor_orders` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `vendor_orders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `vendor_orders` DROP PRIMARY KEY;

DROP TABLE `vendor_orders`;

# ---------------------------------------------------------------------- #
# Drop table "user_subscriptions"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_subscriptions` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `user_subscriptions` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `user_subscriptions` ALTER COLUMN `allowed_products` DROP DEFAULT;

ALTER TABLE `user_subscriptions` ALTER COLUMN `method` DROP DEFAULT;

ALTER TABLE `user_subscriptions` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `user_subscriptions` DROP PRIMARY KEY;

DROP TABLE `user_subscriptions`;

# ---------------------------------------------------------------------- #
# Drop table "user_notifications"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_notifications` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `user_notifications` ALTER COLUMN `is_read` DROP DEFAULT;

ALTER TABLE `user_notifications` DROP PRIMARY KEY;

DROP TABLE `user_notifications`;

# ---------------------------------------------------------------------- #
# Drop table "subscriptions"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscriptions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `subscriptions` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `subscriptions` ALTER COLUMN `allowed_products` DROP DEFAULT;

ALTER TABLE `subscriptions` DROP PRIMARY KEY;

DROP TABLE `subscriptions`;

# ---------------------------------------------------------------------- #
# Drop table "social_providers"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `social_providers` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `social_providers` DROP PRIMARY KEY;

DROP TABLE `social_providers`;

# ---------------------------------------------------------------------- #
# Drop table "shippings"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shippings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shippings` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `shippings` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `shippings` DROP PRIMARY KEY;

DROP TABLE `shippings`;

# ---------------------------------------------------------------------- #
# Drop table "services"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `services` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `services` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `services` DROP PRIMARY KEY;

DROP TABLE `services`;

# ---------------------------------------------------------------------- #
# Drop table "reports"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reports` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `reports` DROP PRIMARY KEY;

DROP TABLE `reports`;

# ---------------------------------------------------------------------- #
# Drop table "ratings"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ratings` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `ratings` DROP PRIMARY KEY;

DROP TABLE `ratings`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `product_type` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `product_condition` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_meta` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `best` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `top` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `hot` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `latest` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `big` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `trending` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `sale` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_discount` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_catalog` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `catalog_id` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "packages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `packages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `packages` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `packages` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `packages` DROP PRIMARY KEY;

DROP TABLE `packages`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `packing_cost` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `dp` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `vendor_shipping_id` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `vendor_packing_id` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "favorite_sellers"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `favorite_sellers` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `favorite_sellers` DROP PRIMARY KEY;

DROP TABLE `favorite_sellers`;

# ---------------------------------------------------------------------- #
# Drop table "attribute_options"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attribute_options` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `attribute_options` DROP PRIMARY KEY;

DROP TABLE `attribute_options`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` ALTER COLUMN `role_id` DROP DEFAULT;

ALTER TABLE `admins` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;

# ---------------------------------------------------------------------- #
# Drop table "admin_user_messages"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_user_messages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_user_messages` DROP PRIMARY KEY;

DROP TABLE `admin_user_messages`;

# ---------------------------------------------------------------------- #
# Drop table "admin_user_conversations"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_user_conversations` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_user_conversations` DROP PRIMARY KEY;

DROP TABLE `admin_user_conversations`;

# ---------------------------------------------------------------------- #
# Drop table "withdraws"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraws` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `withdraws` ALTER COLUMN `fee` DROP DEFAULT;

ALTER TABLE `withdraws` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `withdraws` DROP PRIMARY KEY;

DROP TABLE `withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "verifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `verifications` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `verifications` ALTER COLUMN `admin_warning` DROP DEFAULT;

ALTER TABLE `verifications` DROP PRIMARY KEY;

DROP TABLE `verifications`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `is_provider` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `affilate_income` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_vendor` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `f_check` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `g_check` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `t_check` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `l_check` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `mail_sent` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `shipping_cost` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `current_balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `ban` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "subscribers"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscribers` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `subscribers` DROP PRIMARY KEY;

DROP TABLE `subscribers`;

# ---------------------------------------------------------------------- #
# Drop table "subcategories"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subcategories` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `subcategories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `subcategories` DROP PRIMARY KEY;

DROP TABLE `subcategories`;

# ---------------------------------------------------------------------- #
# Drop table "socialsettings"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `socialsettings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `socialsettings` ALTER COLUMN `f_status` DROP DEFAULT;

ALTER TABLE `socialsettings` ALTER COLUMN `g_status` DROP DEFAULT;

ALTER TABLE `socialsettings` ALTER COLUMN `t_status` DROP DEFAULT;

ALTER TABLE `socialsettings` ALTER COLUMN `l_status` DROP DEFAULT;

ALTER TABLE `socialsettings` ALTER COLUMN `d_status` DROP DEFAULT;

ALTER TABLE `socialsettings` DROP PRIMARY KEY;

DROP TABLE `socialsettings`;

# ---------------------------------------------------------------------- #
# Drop table "sliders"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sliders` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sliders` DROP PRIMARY KEY;

DROP TABLE `sliders`;

# ---------------------------------------------------------------------- #
# Drop table "seotools"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `seotools` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `seotools` DROP PRIMARY KEY;

DROP TABLE `seotools`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "reviews"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reviews` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reviews` DROP PRIMARY KEY;

DROP TABLE `reviews`;

# ---------------------------------------------------------------------- #
# Drop table "pickups"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pickups` MODIFY `id` INTEGER(191) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pickups` DROP PRIMARY KEY;

DROP TABLE `pickups`;

# ---------------------------------------------------------------------- #
# Drop table "payment_gateways"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_gateways` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `payment_gateways` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `payment_gateways` DROP PRIMARY KEY;

DROP TABLE `payment_gateways`;

# ---------------------------------------------------------------------- #
# Drop table "partners"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `partners` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `partners` DROP PRIMARY KEY;

DROP TABLE `partners`;

# ---------------------------------------------------------------------- #
# Drop table "pagesettings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pagesettings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pagesettings` ALTER COLUMN `slider` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `service` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `small_banner` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `best` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `top_rated` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `large_banner` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `big` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `hot_sale` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `partners` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `review_blog` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `bottom_small` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `flash_deal` DROP DEFAULT;

ALTER TABLE `pagesettings` ALTER COLUMN `featured_category` DROP DEFAULT;

ALTER TABLE `pagesettings` DROP PRIMARY KEY;

DROP TABLE `pagesettings`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `header` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `footer` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `languages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `languages` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "generalsettings"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `generalsettings` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `generalsettings` ALTER COLUMN `is_talkto` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_language` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_loader` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_disqus` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_contact` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_faq` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `guest_checkout` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `stripe_check` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `cod_check` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `currency_format` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `withdraw_fee` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `withdraw_charge` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `shipping_cost` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_smtp` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_comment` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_currency` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_affilate` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `affilate_charge` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `fixed_commission` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `percentage_commission` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `multiple_shipping` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `multiple_packaging` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `vendor_ship_info` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `reg_vendor` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_admin_loader` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_home` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_verification_email` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_instamojo` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `instamojo_sandbox` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_paystack` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `wholesell` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_capcha` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_popup` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_secure` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `paypal_check` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_paytm` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_molly` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_razorpay` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `show_stock` DROP DEFAULT;

ALTER TABLE `generalsettings` ALTER COLUMN `is_maintain` DROP DEFAULT;

ALTER TABLE `generalsettings` DROP PRIMARY KEY;

DROP TABLE `generalsettings`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "email_templates"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_templates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_templates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `email_templates` DROP PRIMARY KEY;

DROP TABLE `email_templates`;

# ---------------------------------------------------------------------- #
# Drop table "currencies"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currencies` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `currencies` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `currencies` DROP PRIMARY KEY;

DROP TABLE `currencies`;

# ---------------------------------------------------------------------- #
# Drop table "coupons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupons` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `coupons` ALTER COLUMN `used` DROP DEFAULT;

ALTER TABLE `coupons` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `coupons` DROP PRIMARY KEY;

DROP TABLE `coupons`;

# ---------------------------------------------------------------------- #
# Drop table "countries"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `countries` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `countries` ALTER COLUMN `country_code` DROP DEFAULT;

ALTER TABLE `countries` ALTER COLUMN `country_name` DROP DEFAULT;

ALTER TABLE `countries` DROP PRIMARY KEY;

DROP TABLE `countries`;

# ---------------------------------------------------------------------- #
# Drop table "counters"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `counters` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `counters` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `counters` ALTER COLUMN `total_count` DROP DEFAULT;

ALTER TABLE `counters` ALTER COLUMN `todays_count` DROP DEFAULT;

ALTER TABLE `counters` DROP PRIMARY KEY;

DROP TABLE `counters`;

# ---------------------------------------------------------------------- #
# Drop table "conversations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `conversations` DROP PRIMARY KEY;

DROP TABLE `conversations`;

# ---------------------------------------------------------------------- #
# Drop table "childcategories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `childcategories` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `childcategories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `childcategories` DROP PRIMARY KEY;

DROP TABLE `childcategories`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `is_featured` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "blogs"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `blogs` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `blogs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `blogs` DROP PRIMARY KEY;

DROP TABLE `blogs`;

# ---------------------------------------------------------------------- #
# Drop table "blog_categories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_categories` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `blog_categories` DROP PRIMARY KEY;

DROP TABLE `blog_categories`;

# ---------------------------------------------------------------------- #
# Drop table "banners"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `banners` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `banners` DROP PRIMARY KEY;

DROP TABLE `banners`;

# ---------------------------------------------------------------------- #
# Drop table "attributes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attributes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `attributes` ALTER COLUMN `price_status` DROP DEFAULT;

ALTER TABLE `attributes` ALTER COLUMN `details_status` DROP DEFAULT;

ALTER TABLE `attributes` DROP PRIMARY KEY;

DROP TABLE `attributes`;

# ---------------------------------------------------------------------- #
# Drop table "admin_languages"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_languages` MODIFY `id` INTEGER(191) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_languages` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `admin_languages` ALTER COLUMN `rtl` DROP DEFAULT;

ALTER TABLE `admin_languages` DROP PRIMARY KEY;

DROP TABLE `admin_languages`;
