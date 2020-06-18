# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          shoppingcartdb.dez                              #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-18 13:33                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER(10) UNSIGNED,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `categories_slug_unique` ON `categories` (`slug`);

CREATE INDEX `categories_parent_id_foreign` ON `categories` (`parent_id`);

# ---------------------------------------------------------------------- #
# Add table "data_types"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_types` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_singular` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_plural` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `policy_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `controller` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `generate_permissions` TINYINT(1) NOT NULL DEFAULT 0,
    `server_side` TINYINT(4) NOT NULL DEFAULT 0,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `data_types_name_unique` ON `data_types` (`name`);

CREATE UNIQUE INDEX `data_types_slug_unique` ON `data_types` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "invoices"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoices` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `json_data` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `is_paid` TINYINT(4) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menus"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `menus` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `menus_name_unique` ON `menus` (`name`);

# ---------------------------------------------------------------------- #
# Add table "migrations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `migrations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `migration` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `author_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `excerpt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `pages_slug_unique` ON `pages` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE INDEX `password_resets_email_index` ON `password_resets` (`email`);

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `permissions_key_index` ON `permissions` (`key`);

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `author_id` INTEGER(11) NOT NULL,
    `category_id` INTEGER(11),
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `seo_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `excerpt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `posts_slug_unique` ON `posts` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `thumbnailurl` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `thumbnail` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `price` FLOAT,
    `categorie_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `roles_name_unique` ON `roles` (`name`);

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `group` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `settings_key_unique` ON `settings` (`key`);

# ---------------------------------------------------------------------- #
# Add table "translations"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `translations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `column_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `foreign_key` INTEGER(10) UNSIGNED NOT NULL,
    `locale` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique` ON `translations` (`table_name`,`column_name`,`foreign_key`,`locale`);

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `role_id` INTEGER(10) UNSIGNED,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `settings` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

CREATE INDEX `users_role_id_foreign` ON `users` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "data_rows"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_rows` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `data_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `field` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `browse` TINYINT(1) NOT NULL DEFAULT 1,
    `read` TINYINT(1) NOT NULL DEFAULT 1,
    `edit` TINYINT(1) NOT NULL DEFAULT 1,
    `add` TINYINT(1) NOT NULL DEFAULT 1,
    `delete` TINYINT(1) NOT NULL DEFAULT 1,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `data_rows_data_type_id_foreign` ON `data_rows` (`data_type_id`);

# ---------------------------------------------------------------------- #
# Add table "menu_items"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `menu_items` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `menu_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `target` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
    `icon_class` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parent_id` INTEGER(11),
    `order` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `route` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parameters` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `menu_items_menu_id_foreign` ON `menu_items` (`menu_id`);

# ---------------------------------------------------------------------- #
# Add table "permission_role"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `permission_role` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `permission_role_permission_id_index` ON `permission_role` (`permission_id`);

CREATE INDEX `permission_role_role_id_index` ON `permission_role` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "user_roles"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_roles` (
    `user_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`user_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `user_roles_user_id_index` ON `user_roles` (`user_id`);

CREATE INDEX `user_roles_role_id_index` ON `user_roles` (`role_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `categories` ADD CONSTRAINT `categories_parent_id_foreign` 
    FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `data_rows` ADD CONSTRAINT `data_rows_data_type_id_foreign` 
    FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `menu_items` ADD CONSTRAINT `menu_items_menu_id_foreign` 
    FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `permission_role` ADD CONSTRAINT `permission_role_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `permission_role` ADD CONSTRAINT `permission_role_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_roles` ADD CONSTRAINT `user_roles_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `user_roles` ADD CONSTRAINT `user_roles_user_id_foreign` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `users` ADD CONSTRAINT `users_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
