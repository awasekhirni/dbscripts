# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onecommercedb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:14                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `cart_coupons` DROP FOREIGN KEY `carts_cart_coupons`;

ALTER TABLE `carts` DROP FOREIGN KEY `products_carts`;

ALTER TABLE `deposit_requests` DROP FOREIGN KEY `gateways_deposit_requests`;

ALTER TABLE `deposit_requests` DROP FOREIGN KEY `vendors_deposit_requests`;

ALTER TABLE `deposits` DROP FOREIGN KEY `gateways_deposits`;

ALTER TABLE `deposits` DROP FOREIGN KEY `vendors_deposits`;

ALTER TABLE `favorits` DROP FOREIGN KEY `products_favorits`;

ALTER TABLE `favorits` DROP FOREIGN KEY `users_favorits`;

ALTER TABLE `items` DROP FOREIGN KEY `users_items`;

ALTER TABLE `options` DROP FOREIGN KEY `product_attributes_options`;

ALTER TABLE `options` DROP FOREIGN KEY `products_options`;

ALTER TABLE `orderedproducts` DROP FOREIGN KEY `orders_orderedproducts`;

ALTER TABLE `orderedproducts` DROP FOREIGN KEY `products_orderedproducts`;

ALTER TABLE `orderedproducts` DROP FOREIGN KEY `users_orderedproducts`;

ALTER TABLE `orderedproducts` DROP FOREIGN KEY `vendors_orderedproducts`;

ALTER TABLE `orderpayments` DROP FOREIGN KEY `gateways_orderpayments`;

ALTER TABLE `orderpayments` DROP FOREIGN KEY `orders_orderpayments`;

ALTER TABLE `orderpayments` DROP FOREIGN KEY `users_orderpayments`;

ALTER TABLE `orders` DROP FOREIGN KEY `users_orders`;

ALTER TABLE `packages` DROP FOREIGN KEY `products_packages`;

ALTER TABLE `preview_images` DROP FOREIGN KEY `products_preview_images`;

ALTER TABLE `product_reviews` DROP FOREIGN KEY `products_product_reviews`;

ALTER TABLE `product_reviews` DROP FOREIGN KEY `users_product_reviews`;

ALTER TABLE `products` DROP FOREIGN KEY `vendors_products`;

ALTER TABLE `refunds` DROP FOREIGN KEY `orderedproducts_refunds`;

ALTER TABLE `refunds` DROP FOREIGN KEY `orders_refunds`;

ALTER TABLE `transactions` DROP FOREIGN KEY `vendors_transactions`;

ALTER TABLE `vendors` DROP FOREIGN KEY `products_vendors`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `vendors_withdraws`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `withdraw_methods_withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "withdraws"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraws` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraws` DROP PRIMARY KEY;

DROP TABLE `withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "vendors"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `vendors` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `vendors` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `products` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `email_sent` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `sms_sent` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `vsent` DROP DEFAULT;

ALTER TABLE `vendors` ALTER COLUMN `approved` DROP DEFAULT;

ALTER TABLE `vendors` DROP PRIMARY KEY;

DROP TABLE `vendors`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

# ---------------------------------------------------------------------- #
# Drop table "refunds"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `refunds` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `refunds` DROP PRIMARY KEY;

DROP TABLE `refunds`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `flash_status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `flash_div_refresh` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `sales` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `avg_rating` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "product_reviews"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_reviews` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_reviews` DROP PRIMARY KEY;

DROP TABLE `product_reviews`;

# ---------------------------------------------------------------------- #
# Drop table "preview_images"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `preview_images` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `preview_images` DROP PRIMARY KEY;

DROP TABLE `preview_images`;

# ---------------------------------------------------------------------- #
# Drop table "packages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `packages` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `packages` DROP PRIMARY KEY;

DROP TABLE `packages`;

# ---------------------------------------------------------------------- #
# Drop table "orderedproducts"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orderedproducts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orderedproducts` ALTER COLUMN `shipping_status` DROP DEFAULT;

ALTER TABLE `orderedproducts` ALTER COLUMN `approve` DROP DEFAULT;

ALTER TABLE `orderedproducts` ALTER COLUMN `refunded` DROP DEFAULT;

ALTER TABLE `orderedproducts` DROP PRIMARY KEY;

DROP TABLE `orderedproducts`;

# ---------------------------------------------------------------------- #
# Drop table "options"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `options` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `options` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `options` DROP PRIMARY KEY;

DROP TABLE `options`;

# ---------------------------------------------------------------------- #
# Drop table "favorits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `favorits` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `favorits` DROP PRIMARY KEY;

DROP TABLE `favorits`;

# ---------------------------------------------------------------------- #
# Drop table "deposits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposits` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposits` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `deposits` ALTER COLUMN `try` DROP DEFAULT;

ALTER TABLE `deposits` DROP PRIMARY KEY;

DROP TABLE `deposits`;

# ---------------------------------------------------------------------- #
# Drop table "deposit_requests"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposit_requests` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `deposit_requests` ALTER COLUMN `accepted` DROP DEFAULT;

ALTER TABLE `deposit_requests` DROP PRIMARY KEY;

DROP TABLE `deposit_requests`;

# ---------------------------------------------------------------------- #
# Drop table "carts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `carts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `carts` DROP PRIMARY KEY;

DROP TABLE `carts`;

# ---------------------------------------------------------------------- #
# Drop table "cart_coupons"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cart_coupons` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `cart_coupons` DROP PRIMARY KEY;

DROP TABLE `cart_coupons`;

# ---------------------------------------------------------------------- #
# Drop table "orderpayments"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orderpayments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orderpayments` DROP PRIMARY KEY;

DROP TABLE `orderpayments`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `shipping_status` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `approve` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "items"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `items` ALTER COLUMN `postad` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `contact_hide` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `sell` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `rent` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `items` DROP PRIMARY KEY;

DROP TABLE `items`;

# ---------------------------------------------------------------------- #
# Drop table "withdraw_methods"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraw_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraw_methods` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `withdraw_methods` DROP PRIMARY KEY;

DROP TABLE `withdraw_methods`;

# ---------------------------------------------------------------------- #
# Drop table "vendor_password_resets"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `vendor_password_resets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `vendor_password_resets` DROP PRIMARY KEY;

DROP TABLE `vendor_password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_sent` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `sms_sent` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `vsent` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "subscribers"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscribers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `subscribers` DROP PRIMARY KEY;

DROP TABLE `subscribers`;

# ---------------------------------------------------------------------- #
# Drop table "subcategories"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subcategories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `subcategories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `subcategories` DROP PRIMARY KEY;

DROP TABLE `subcategories`;

# ---------------------------------------------------------------------- #
# Drop table "socials"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `socials` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `socials` DROP PRIMARY KEY;

DROP TABLE `socials`;

# ---------------------------------------------------------------------- #
# Drop table "sliders"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sliders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sliders` DROP PRIMARY KEY;

DROP TABLE `sliders`;

# ---------------------------------------------------------------------- #
# Drop table "providers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `providers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `providers` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `providers` DROP PRIMARY KEY;

DROP TABLE `providers`;

# ---------------------------------------------------------------------- #
# Drop table "product_attributes"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_attributes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_attributes` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `product_attributes` DROP PRIMARY KEY;

DROP TABLE `product_attributes`;

# ---------------------------------------------------------------------- #
# Drop table "place_payments"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `place_payments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `place_payments` DROP PRIMARY KEY;

DROP TABLE `place_payments`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `password_resets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `password_resets` DROP PRIMARY KEY;

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "partners"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `partners` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `partners` DROP PRIMARY KEY;

DROP TABLE `partners`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "menus"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menus` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `menus` DROP PRIMARY KEY;

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "jobs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `jobs` DROP PRIMARY KEY;

DROP TABLE `jobs`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `general_settings` ALTER COLUMN `in_cash_on_delivery` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `in_advanced` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `around_cash_on_delivery` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `around_advanced` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `world_cash_on_delivery` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `world_advanced` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "gateways"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gateways` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gateways` DROP PRIMARY KEY;

DROP TABLE `gateways`;

# ---------------------------------------------------------------------- #
# Drop table "flash_intervals"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `flash_intervals` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `flash_intervals` DROP PRIMARY KEY;

DROP TABLE `flash_intervals`;

# ---------------------------------------------------------------------- #
# Drop table "coupons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupons` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `coupons` DROP PRIMARY KEY;

DROP TABLE `coupons`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "ads"                                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ads` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ads` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `ads` ALTER COLUMN `impression` DROP DEFAULT;

ALTER TABLE `ads` DROP PRIMARY KEY;

DROP TABLE `ads`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;
