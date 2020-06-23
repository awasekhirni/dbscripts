# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          shopifyclone.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 18:19                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "active_admin_comments"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `active_admin_comments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `resource_id` INTEGER(11) NOT NULL,
    `resource_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `author_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `author_id` INTEGER(11),
    `namespace` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_active_admin_comments_on_author_type_and_author_id` ON `active_admin_comments` (`author_type`,`author_id`);

CREATE INDEX `index_active_admin_comments_on_namespace` ON `active_admin_comments` (`namespace`);

CREATE INDEX `index_active_admin_comments_on_resource_type_and_resource_id` ON `active_admin_comments` (`resource_type`,`resource_id`);

# ---------------------------------------------------------------------- #
# Add table "activities"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `activities` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `operate` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` INTEGER(11),
    `shop_id` INTEGER(11) NOT NULL,
    `class_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admin_users"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `remember_created_at` DATETIME,
    `sign_in_count` INTEGER(11) DEFAULT 0,
    `current_sign_in_at` DATETIME,
    `last_sign_in_at` DATETIME,
    `current_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `reset_password_sent_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_admin_users_on_email` ON `admin_users` (`email`);

CREATE UNIQUE INDEX `index_admin_users_on_reset_password_token` ON `admin_users` (`reset_password_token`);

# ---------------------------------------------------------------------- #
# Add table "api_clients"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `api_clients` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `api_key` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `shared_secret` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `title` VARCHAR(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ar_internal_metadata"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ar_internal_metadata` (
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`key`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "articles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `articles` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `blog_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `published` TINYINT(1) DEFAULT 1,
    `user_id` INTEGER(11),
    `author` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_articles_on_blog_id` ON `articles` (`blog_id`);

# ---------------------------------------------------------------------- #
# Add table "articles_tags"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `articles_tags` (
    `article_id` INTEGER(11) NOT NULL,
    `tag_id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `index_articles_tags_on_article_id` ON `articles_tags` (`article_id`);

CREATE INDEX `index_articles_tags_on_tag_id` ON `articles_tags` (`tag_id`);

# ---------------------------------------------------------------------- #
# Add table "blogs"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `blogs` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `commentable` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_blogs_on_shop_id` ON `blogs` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "cancel_reasons"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `cancel_reasons` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `selection` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `detailed` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "carts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `carts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `token` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `session_id` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `cart_hash` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `customer_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `note` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_carts_on_token` ON `carts` (`token`);

CREATE INDEX `index_carts_on_shop_id` ON `carts` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `article_id` INTEGER(11) NOT NULL,
    `shop_id` INTEGER(11) NOT NULL,
    `status` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `author` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_comments_on_article_id` ON `comments` (`article_id`);

# ---------------------------------------------------------------------- #
# Add table "consumptions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `consumptions` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `token` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `shop_id` INTEGER(11) NOT NULL,
    `quantity` INTEGER(11),
    `price` FLOAT,
    `status` TINYINT(1),
    `plan_type_id` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_collection_products"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_collection_products` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `custom_collection_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `position` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_custom_collection_products_on_custom_collection_id` ON `custom_collection_products` (`custom_collection_id`);

# ---------------------------------------------------------------------- #
# Add table "custom_collections"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_collections` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `published` TINYINT(1) DEFAULT 1,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `products_order` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_custom_collections_on_shop_id` ON `custom_collections` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "customer_addresses"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_addresses` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `province` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `district` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address2` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `zip` VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `default_address` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_customer_addresses_on_customer_id` ON `customer_addresses` (`customer_id`);

# ---------------------------------------------------------------------- #
# Add table "customer_groups"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_groups` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `term` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `query` VARCHAR(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_customer_groups_on_shop_id` ON `customer_groups` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "customer_tags"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_tags` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_customer_tags_on_shop_id` ON `customer_tags` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "customer_tags_customers"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_tags_customers` (
    `customer_id` INTEGER(11) NOT NULL,
    `customer_tag_id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `index_customer_tags_customers_on_customer_id` ON `customer_tags_customers` (`customer_id`);

CREATE INDEX `index_customer_tags_customers_on_customer_tag_id` ON `customer_tags_customers` (`customer_tag_id`);

# ---------------------------------------------------------------------- #
# Add table "customers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `customers` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `status` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `note` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `total_spent` FLOAT DEFAULT 0,
    `orders_count` INTEGER(11) DEFAULT 0,
    `accepts_marketing` TINYINT(1) DEFAULT 1,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `remember_created_at` DATETIME,
    `sign_in_count` INTEGER(11) DEFAULT 0,
    `current_sign_in_at` DATETIME,
    `last_sign_in_at` DATETIME,
    `current_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `authentication_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `reset_password_sent_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_customers_on_shop_id_and_email` ON `customers` (`shop_id`,`email`);

CREATE INDEX `index_customers_on_shop_id` ON `customers` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "discounts"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `discounts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_type` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `value` FLOAT,
    `used_times` INTEGER(11) DEFAULT 0,
    `usage_limit` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "emails"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `emails` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `mail_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `include_html` TINYINT(1) DEFAULT 0,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kindeditors"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `kindeditors` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `kindeditor_image_uid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "link_lists"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `link_lists` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `system_default` TINYINT(1) DEFAULT 0,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_link_lists_on_shop_id` ON `link_lists` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "links"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `links` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `link_list_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `link_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `subject_handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `subject_params` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `position` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_links_on_link_list_id` ON `links` (`link_list_id`);

# ---------------------------------------------------------------------- #
# Add table "oauth_access_grants"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_access_grants` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `resource_owner_id` INTEGER(11) NOT NULL,
    `application_id` INTEGER(11) NOT NULL,
    `token` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `expires_in` INTEGER(11) NOT NULL,
    `redirect_uri` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `revoked_at` DATETIME,
    `scopes` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_oauth_access_grants_on_token` ON `oauth_access_grants` (`token`);

# ---------------------------------------------------------------------- #
# Add table "oauth_access_tokens"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_access_tokens` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `resource_owner_id` INTEGER(11),
    `application_id` INTEGER(11) NOT NULL,
    `token` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `refresh_token` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `expires_in` INTEGER(11),
    `revoked_at` DATETIME,
    `created_at` DATETIME NOT NULL,
    `scopes` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_oauth_access_tokens_on_token` ON `oauth_access_tokens` (`token`);

CREATE UNIQUE INDEX `index_oauth_access_tokens_on_refresh_token` ON `oauth_access_tokens` (`refresh_token`);

CREATE INDEX `index_oauth_access_tokens_on_resource_owner_id` ON `oauth_access_tokens` (`resource_owner_id`);

# ---------------------------------------------------------------------- #
# Add table "oauth_applications"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_applications` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `uid` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `secret` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `redirect_uri` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_oauth_applications_on_uid` ON `oauth_applications` (`uid`);

# ---------------------------------------------------------------------- #
# Add table "order_discounts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_discounts` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `code` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `amount` FLOAT,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "order_fulfillments"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_fulfillments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `tracking_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tracking_company` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_fulfillments_on_order_id` ON `order_fulfillments` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "order_fulfillments_order_line_items"                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_fulfillments_order_line_items` (
    `order_fulfillment_id` INTEGER(11) NOT NULL,
    `order_line_item_id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `index_order_fulfillments_items` ON `order_fulfillments_order_line_items` (`order_fulfillment_id`,`order_line_item_id`);

CREATE INDEX `index_order_fulfillments_items_id` ON `order_fulfillments_order_line_items` (`order_fulfillment_id`);

# ---------------------------------------------------------------------- #
# Add table "order_histories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_histories` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `body` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `url` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_histories_on_order_id` ON `order_histories` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "order_line_items"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_line_items` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `product_variant_id` INTEGER(11) NOT NULL,
    `price` FLOAT NOT NULL,
    `quantity` INTEGER(11) NOT NULL,
    `fulfilled` TINYINT(1) DEFAULT 0,
    `product_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `variant_title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `vendor` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `requires_shipping` TINYINT(1),
    `grams` INTEGER(11),
    `sku` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_line_items_on_order_id` ON `order_line_items` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "order_shipping_addresses"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_shipping_addresses` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `company` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `province` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `district` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `address2` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `zip` VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_shipping_addresses_on_order_id` ON `order_shipping_addresses` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "order_transactions"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_transactions` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(11) NOT NULL,
    `kind` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `amount` FLOAT,
    `created_at` DATETIME NOT NULL,
    `status` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `batch_no` VARCHAR(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_transactions_on_order_id` ON `order_transactions` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11),
    `token` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `number` INTEGER(11) NOT NULL,
    `order_number` INTEGER(11) NOT NULL,
    `status` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `financial_status` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `fulfillment_status` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `email` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `shipping_rate` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_id` INTEGER(11),
    `total_line_items_price` FLOAT NOT NULL,
    `total_price` FLOAT NOT NULL,
    `note` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `closed_at` DATETIME,
    `cancel_reason` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `cancelled_at` DATETIME,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `subtotal_price` FLOAT,
    `trade_no` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_orders_on_token` ON `orders` (`token`);

CREATE INDEX `index_orders_on_customer_id` ON `orders` (`customer_id`);

CREATE INDEX `index_orders_on_shop_id` ON `orders` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `published` TINYINT(1) DEFAULT 0,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_pages_on_shop_id` ON `pages` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_type_id` INTEGER(11),
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `account` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `service` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11),
    `resource_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_permissions_on_user_id_and_resource_id` ON `permissions` (`user_id`,`resource_id`);

# ---------------------------------------------------------------------- #
# Add table "photos"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `photos` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11) NOT NULL,
    `product_image_uid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `product_image_format` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `position` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_photos_on_product_id` ON `photos` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "price_based_shipping_rates"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `price_based_shipping_rates` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `price` FLOAT,
    `min_order_subtotal` FLOAT,
    `max_order_subtotal` FLOAT,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `shipping_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_price_based_shipping_rates_on_shipping_id` ON `price_based_shipping_rates` (`shipping_id`);

# ---------------------------------------------------------------------- #
# Add table "product_options"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_options` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `position` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_product_options_on_product_id` ON `product_options` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "product_variants"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_variants` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `price` FLOAT NOT NULL DEFAULT 0,
    `weight` FLOAT NOT NULL DEFAULT 0,
    `compare_at_price` FLOAT,
    `option1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `option2` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `option3` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sku` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `requires_shipping` TINYINT(1) DEFAULT 1,
    `inventory_quantity` INTEGER(11),
    `inventory_management` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `inventory_policy` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'deny',
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `position` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_product_variants_on_product_id` ON `product_variants` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `published` TINYINT(1) DEFAULT 1,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `price` FLOAT,
    `product_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `vendor` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_products_on_shop_id` ON `products` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "products_tags"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `products_tags` (
    `product_id` INTEGER(11) NOT NULL,
    `tag_id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `index_products_tags_on_product_id` ON `products_tags` (`product_id`);

CREATE INDEX `index_products_tags_on_tag_id` ON `products_tags` (`tag_id`);

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`version`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shippings"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `shippings` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `code` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shippings_on_shop_id` ON `shippings` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_domains"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_domains` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `subdomain` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `domain` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `host` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `primary` TINYINT(1) DEFAULT 1,
    `force_domain` TINYINT(1) DEFAULT 0,
    `record` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `verified` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_domains_on_host` ON `shop_domains` (`host`);

CREATE INDEX `index_shop_domains_on_shop_id` ON `shop_domains` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_policies"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_policies` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `shop_id` INTEGER(11) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_policies_on_shop_id` ON `shop_policies` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_product_types"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_product_types` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_product_types_on_shop_id` ON `shop_product_types` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_product_vendors"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_product_vendors` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_product_vendors_on_shop_id` ON `shop_product_vendors` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_tasks"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_tasks` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `completed` TINYINT(1) DEFAULT 0,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_tasks_on_shop_id` ON `shop_tasks` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_theme_settings"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_theme_settings` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_theme_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `value` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_theme_settings_on_shop_theme_id` ON `shop_theme_settings` (`shop_theme_id`);

# ---------------------------------------------------------------------- #
# Add table "shop_themes"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `shop_themes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `theme_id` INTEGER(11),
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `role` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `load_preset` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_shop_themes_on_shop_id` ON `shop_themes` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "shops"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `shops` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `plan` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'free',
    `deadline` DATE,
    `province` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `district` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `zip_code` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password_enabled` TINYINT(1) DEFAULT 0,
    `password_message` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency` VARCHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `money_with_currency_format` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `money_format` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `money_with_currency_in_emails_format` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `money_in_emails_format` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `orders_count` INTEGER(11) DEFAULT 0,
    `order_number_format` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci{ DEFAULT '#{{number}}'},
    `customer_accounts` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'optional',
    `signup_source` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `guided` TINYINT(1) DEFAULT 0,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `access_enabled` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "smart_collection_products"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `smart_collection_products` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `smart_collection_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `position` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_smart_collection_products_on_smart_collection_id` ON `smart_collection_products` (`smart_collection_id`);

# ---------------------------------------------------------------------- #
# Add table "smart_collection_rules"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `smart_collection_rules` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `smart_collection_id` INTEGER(11) NOT NULL,
    `column` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `relation` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `condition` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_smart_collection_rules_on_smart_collection_id` ON `smart_collection_rules` (`smart_collection_id`);

# ---------------------------------------------------------------------- #
# Add table "smart_collections"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `smart_collections` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `published` TINYINT(1) DEFAULT 1,
    `handle` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `body_html` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `products_order` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_smart_collections_on_shop_id` ON `smart_collections` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "subscribes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscribes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11),
    `kind` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tags"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tags` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `shop_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `category` INTEGER(11),
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_tags_on_shop_id` ON `tags` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "themes"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `themes` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `handle` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `style` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `style_handle` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `role` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `price` FLOAT DEFAULT 0,
    `color` VARCHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `desc` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `shop` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `site` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `author` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `published` TINYINT(1) DEFAULT 0,
    `file` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `main` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `collection` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `product` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `position` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "translations"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `translations` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `value` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `encrypted_password` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
    `reset_password_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `remember_created_at` DATETIME,
    `sign_in_count` INTEGER(11) DEFAULT 0,
    `current_sign_in_at` DATETIME,
    `last_sign_in_at` DATETIME,
    `current_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `bio` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `receive_announcements` TINYINT(1) DEFAULT 1,
    `shop_id` INTEGER(11) NOT NULL,
    `avatar_image_uid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin` TINYINT(1) DEFAULT 1,
    `authentication_token` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `reset_password_sent_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `index_users_on_shop_id_and_email` ON `users` (`shop_id`,`email`);

CREATE UNIQUE INDEX `index_users_on_authentication_token` ON `users` (`authentication_token`);

CREATE UNIQUE INDEX `index_users_on_reset_password_token` ON `users` (`reset_password_token`);

CREATE INDEX `index_users_on_shop_id` ON `users` (`shop_id`);

# ---------------------------------------------------------------------- #
# Add table "webhooks"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `webhooks` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `application_id` INTEGER(11),
    `shop_id` INTEGER(11) NOT NULL,
    `event` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `callback_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "weight_based_shipping_rates"                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `weight_based_shipping_rates` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `price` FLOAT,
    `weight_low` FLOAT,
    `weight_high` FLOAT,
    `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `shipping_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_weight_based_shipping_rates_on_shipping_id` ON `weight_based_shipping_rates` (`shipping_id`);
