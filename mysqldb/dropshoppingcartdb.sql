# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          shoppingcartdb.dez                              #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-18 13:33                                #
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
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `avatar` DROP DEFAULT;

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
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

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
# Drop table "menus"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `menus` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `menus` DROP PRIMARY KEY;

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "invoices"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoices` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `invoices` ALTER COLUMN `is_paid` DROP DEFAULT;

ALTER TABLE `invoices` DROP PRIMARY KEY;

DROP TABLE `invoices`;

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
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;
