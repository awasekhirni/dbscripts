# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project4.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:37                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `deposit_images` DROP FOREIGN KEY `deposits_deposit_images`;

ALTER TABLE `deposits` DROP FOREIGN KEY `users_deposits`;

ALTER TABLE `investments` DROP FOREIGN KEY `plans_investments`;

ALTER TABLE `investments` DROP FOREIGN KEY `users_investments`;

ALTER TABLE `plans` DROP FOREIGN KEY `compounds_plans`;

ALTER TABLE `purchases` DROP FOREIGN KEY `products_purchases`;

ALTER TABLE `purchases` DROP FOREIGN KEY `users_purchases`;

ALTER TABLE `repeat_logs` DROP FOREIGN KEY `investments_repeat_logs`;

ALTER TABLE `repeat_logs` DROP FOREIGN KEY `users_repeat_logs`;

ALTER TABLE `repeats` DROP FOREIGN KEY `users_repeats`;

ALTER TABLE `support_messages` DROP FOREIGN KEY `supports_support_messages`;

ALTER TABLE `supports` DROP FOREIGN KEY `users_supports`;

ALTER TABLE `trades` DROP FOREIGN KEY `products_trades`;

ALTER TABLE `user_logins` DROP FOREIGN KEY `users_user_logins`;

ALTER TABLE `user_logs` DROP FOREIGN KEY `users_user_logs`;

ALTER TABLE `user_trade_logs` DROP FOREIGN KEY `trades_user_trade_logs`;

ALTER TABLE `user_trade_logs` DROP FOREIGN KEY `users_user_trade_logs`;

ALTER TABLE `withdraw_logs` DROP FOREIGN KEY `users_withdraw_logs`;

# ---------------------------------------------------------------------- #
# Drop table "support_messages"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `support_messages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `support_messages` DROP PRIMARY KEY;

DROP TABLE `support_messages`;

# ---------------------------------------------------------------------- #
# Drop table "deposit_images"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposit_images` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposit_images` DROP PRIMARY KEY;

DROP TABLE `deposit_images`;

# ---------------------------------------------------------------------- #
# Drop table "user_trade_logs"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_trade_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `user_trade_logs` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `user_trade_logs` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `user_trade_logs` DROP PRIMARY KEY;

DROP TABLE `user_trade_logs`;

# ---------------------------------------------------------------------- #
# Drop table "user_logs"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_logs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_logs` ALTER COLUMN `post_bal` DROP DEFAULT;

ALTER TABLE `user_logs` DROP PRIMARY KEY;

DROP TABLE `user_logs`;

# ---------------------------------------------------------------------- #
# Drop table "user_logins"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_logins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `user_logins` DROP PRIMARY KEY;

DROP TABLE `user_logins`;

# ---------------------------------------------------------------------- #
# Drop table "supports"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `supports` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `supports` DROP PRIMARY KEY;

DROP TABLE `supports`;

# ---------------------------------------------------------------------- #
# Drop table "repeats"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `repeats` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `repeats` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `repeats` DROP PRIMARY KEY;

DROP TABLE `repeats`;

# ---------------------------------------------------------------------- #
# Drop table "repeat_logs"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `repeat_logs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `repeat_logs` DROP PRIMARY KEY;

DROP TABLE `repeat_logs`;

# ---------------------------------------------------------------------- #
# Drop table "purchases"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchases` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `purchases` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `purchases` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `purchases` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `purchases` DROP PRIMARY KEY;

DROP TABLE `purchases`;

# ---------------------------------------------------------------------- #
# Drop table "investments"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `investments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `investments` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `investments` DROP PRIMARY KEY;

DROP TABLE `investments`;

# ---------------------------------------------------------------------- #
# Drop table "deposits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposits` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposits` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `deposits` DROP PRIMARY KEY;

DROP TABLE `deposits`;

# ---------------------------------------------------------------------- #
# Drop table "withdraw_methods"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraw_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraw_methods` DROP PRIMARY KEY;

DROP TABLE `withdraw_methods`;

# ---------------------------------------------------------------------- #
# Drop table "withdraw_logs"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraw_logs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraw_logs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `withdraw_logs` DROP PRIMARY KEY;

DROP TABLE `withdraw_logs`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `image` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "trades"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trades` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `trades` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `trades` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `trades` DROP PRIMARY KEY;

DROP TABLE `trades`;

# ---------------------------------------------------------------------- #
# Drop table "testimonials"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `testimonials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `testimonials` DROP PRIMARY KEY;

DROP TABLE `testimonials`;

# ---------------------------------------------------------------------- #
# Drop table "socials"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `socials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

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
# Drop table "services"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `services` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `services` DROP PRIMARY KEY;

DROP TABLE `services`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `trade_status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "product_categories"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_categories` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `product_categories` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `product_categories` DROP PRIMARY KEY;

DROP TABLE `product_categories`;

# ---------------------------------------------------------------------- #
# Drop table "plans"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `plans` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `plans` DROP PRIMARY KEY;

DROP TABLE `plans`;

# ---------------------------------------------------------------------- #
# Drop table "payment_methods"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `payment_methods` ALTER COLUMN `main_name` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `minamo` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `maxamo` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `payment_methods` DROP PRIMARY KEY;

DROP TABLE `payment_methods`;

# ---------------------------------------------------------------------- #
# Drop table "payment_logs"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_logs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_logs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `payment_logs` ALTER COLUMN `try` DROP DEFAULT;

ALTER TABLE `payment_logs` DROP PRIMARY KEY;

DROP TABLE `payment_logs`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

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

ALTER TABLE `menus` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `menus` DROP PRIMARY KEY;

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "compounds"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `compounds` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `compounds` DROP PRIMARY KEY;

DROP TABLE `compounds`;

# ---------------------------------------------------------------------- #
# Drop table "basic_settings"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `basic_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `basic_settings` ALTER COLUMN `user_reg` DROP DEFAULT;

ALTER TABLE `basic_settings` DROP PRIMARY KEY;

DROP TABLE `basic_settings`;

# ---------------------------------------------------------------------- #
# Drop table "admins"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admins` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admins` DROP PRIMARY KEY;

DROP TABLE `admins`;
