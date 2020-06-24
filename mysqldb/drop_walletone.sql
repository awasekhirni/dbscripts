# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          walletone.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:39                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `categories` DROP FOREIGN KEY `categories_parent_id_foreign`;

ALTER TABLE `data_rows` DROP FOREIGN KEY `data_rows_data_type_id_foreign`;

ALTER TABLE `menu_items` DROP FOREIGN KEY `menu_items_menu_id_foreign`;

ALTER TABLE `permission_role` DROP FOREIGN KEY `permission_role_permission_id_foreign`;

ALTER TABLE `permission_role` DROP FOREIGN KEY `permission_role_role_id_foreign`;

ALTER TABLE `user_roles` DROP FOREIGN KEY `user_roles_role_id_foreign`;

ALTER TABLE `user_roles` DROP FOREIGN KEY `user_roles_user_id_foreign`;

ALTER TABLE `users` DROP FOREIGN KEY `users_role_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "user_roles"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `user_roles` DROP PRIMARY KEY;

DROP TABLE `user_roles`;

# ---------------------------------------------------------------------- #
# Drop table "permission_role"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `permission_role` DROP PRIMARY KEY;

DROP TABLE `permission_role`;

# ---------------------------------------------------------------------- #
# Drop table "menu_items"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menu_items` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `menu_items` ALTER COLUMN `target` DROP DEFAULT;

ALTER TABLE `menu_items` DROP PRIMARY KEY;

DROP TABLE `menu_items`;

# ---------------------------------------------------------------------- #
# Drop table "data_rows"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `data_rows` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `data_rows` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `browse` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `edit` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `add` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `delete` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `data_rows` DROP PRIMARY KEY;

DROP TABLE `data_rows`;

# ---------------------------------------------------------------------- #
# Drop table "withdrawals"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdrawals` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdrawals` DROP PRIMARY KEY;

DROP TABLE `withdrawals`;

# ---------------------------------------------------------------------- #
# Drop table "withdrawal_methods"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdrawal_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdrawal_methods` DROP PRIMARY KEY;

DROP TABLE `withdrawal_methods`;

# ---------------------------------------------------------------------- #
# Drop table "wallets"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `wallets` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `wallets` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `wallets` DROP PRIMARY KEY;

DROP TABLE `wallets`;

# ---------------------------------------------------------------------- #
# Drop table "vouchers"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `vouchers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `vouchers` ALTER COLUMN `is_loaded` DROP DEFAULT;

ALTER TABLE `vouchers` DROP PRIMARY KEY;

DROP TABLE `vouchers`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `avatar` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `verified` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `merchant` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `social` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `account_status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `ticketit_admin` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `ticketit_agent` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `currency_id` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_ticket_admin` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "translations"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `translations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `translations` DROP PRIMARY KEY;

DROP TABLE `translations`;

# ---------------------------------------------------------------------- #
# Drop table "transactionable"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transactionable` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `transactionable` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `transactionable` ALTER COLUMN `fee` DROP DEFAULT;

ALTER TABLE `transactionable` DROP PRIMARY KEY;

DROP TABLE `transactionable`;

# ---------------------------------------------------------------------- #
# Drop table "transaction_states"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transaction_states` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `transaction_states` DROP PRIMARY KEY;

DROP TABLE `transaction_states`;

# ---------------------------------------------------------------------- #
# Drop table "tickets"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tickets` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tickets` DROP PRIMARY KEY;

DROP TABLE `tickets`;

# ---------------------------------------------------------------------- #
# Drop table "ticketcomments"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticketcomments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ticketcomments` DROP PRIMARY KEY;

DROP TABLE `ticketcomments`;

# ---------------------------------------------------------------------- #
# Drop table "ticketcategories"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticketcategories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ticketcategories` DROP PRIMARY KEY;

DROP TABLE `ticketcategories`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "sends"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sends` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sends` DROP PRIMARY KEY;

DROP TABLE `sends`;

# ---------------------------------------------------------------------- #
# Drop table "sales"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sales` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sales` DROP PRIMARY KEY;

DROP TABLE `sales`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "requests"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `requests` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `requests` ALTER COLUMN `attempts` DROP DEFAULT;

ALTER TABLE `requests` DROP PRIMARY KEY;

DROP TABLE `requests`;

# ---------------------------------------------------------------------- #
# Drop table "receives"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `receives` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `receives` DROP PRIMARY KEY;

DROP TABLE `receives`;

# ---------------------------------------------------------------------- #
# Drop table "purchases"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchases` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `purchases` DROP PRIMARY KEY;

DROP TABLE `purchases`;

# ---------------------------------------------------------------------- #
# Drop table "profiles"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `profiles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `profiles` DROP PRIMARY KEY;

DROP TABLE `profiles`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

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

ALTER TABLE `pages` ALTER COLUMN `status` DROP DEFAULT;

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
# Drop table "merchants"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `merchants` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `merchants` ALTER COLUMN `currency_id` DROP DEFAULT;

ALTER TABLE `merchants` DROP PRIMARY KEY;

DROP TABLE `merchants`;

# ---------------------------------------------------------------------- #
# Drop table "menus"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menus` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `menus` DROP PRIMARY KEY;

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "exchanges"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `exchanges` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `exchanges` DROP PRIMARY KEY;

DROP TABLE `exchanges`;

# ---------------------------------------------------------------------- #
# Drop table "deposits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposits` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposits` DROP PRIMARY KEY;

DROP TABLE `deposits`;

# ---------------------------------------------------------------------- #
# Drop table "deposit_methods"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposit_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposit_methods` DROP PRIMARY KEY;

DROP TABLE `deposit_methods`;

# ---------------------------------------------------------------------- #
# Drop table "data_types"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `data_types` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `data_types` ALTER COLUMN `generate_permissions` DROP DEFAULT;

ALTER TABLE `data_types` ALTER COLUMN `server_side` DROP DEFAULT;

ALTER TABLE `data_types` DROP PRIMARY KEY;

DROP TABLE `data_types`;

# ---------------------------------------------------------------------- #
# Drop table "currency_withdrawal_methods"                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency_withdrawal_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currency_withdrawal_methods` DROP PRIMARY KEY;

DROP TABLE `currency_withdrawal_methods`;

# ---------------------------------------------------------------------- #
# Drop table "currency_exchange_rates"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency_exchange_rates` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currency_exchange_rates` DROP PRIMARY KEY;

DROP TABLE `currency_exchange_rates`;

# ---------------------------------------------------------------------- #
# Drop table "currency_deposit_methods"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency_deposit_methods` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `currency_deposit_methods` DROP PRIMARY KEY;

DROP TABLE `currency_deposit_methods`;

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

ALTER TABLE `categories` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;
