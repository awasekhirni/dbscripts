# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          shopifyclone_development.dez                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:32                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "weight_based_shipping_rates"                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `weight_based_shipping_rates` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `weight_based_shipping_rates` DROP PRIMARY KEY;

DROP TABLE `weight_based_shipping_rates`;

# ---------------------------------------------------------------------- #
# Drop table "webhooks"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `webhooks` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `webhooks` DROP PRIMARY KEY;

DROP TABLE `webhooks`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `sign_in_count` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `receive_announcements` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `admin` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "translations"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `translations` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `translations` DROP PRIMARY KEY;

DROP TABLE `translations`;

# ---------------------------------------------------------------------- #
# Drop table "themes"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `themes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `themes` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `themes` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `themes` DROP PRIMARY KEY;

DROP TABLE `themes`;

# ---------------------------------------------------------------------- #
# Drop table "tags"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tags` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `tags` DROP PRIMARY KEY;

DROP TABLE `tags`;

# ---------------------------------------------------------------------- #
# Drop table "subscribes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `subscribes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `subscribes` DROP PRIMARY KEY;

DROP TABLE `subscribes`;

# ---------------------------------------------------------------------- #
# Drop table "smart_collections"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `smart_collections` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `smart_collections` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `smart_collections` DROP PRIMARY KEY;

DROP TABLE `smart_collections`;

# ---------------------------------------------------------------------- #
# Drop table "smart_collection_rules"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `smart_collection_rules` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `smart_collection_rules` DROP PRIMARY KEY;

DROP TABLE `smart_collection_rules`;

# ---------------------------------------------------------------------- #
# Drop table "smart_collection_products"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `smart_collection_products` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `smart_collection_products` DROP PRIMARY KEY;

DROP TABLE `smart_collection_products`;

# ---------------------------------------------------------------------- #
# Drop table "shops"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shops` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shops` ALTER COLUMN `plan` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `password_enabled` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `orders_count` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `order_number_format` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `customer_accounts` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `guided` DROP DEFAULT;

ALTER TABLE `shops` ALTER COLUMN `access_enabled` DROP DEFAULT;

ALTER TABLE `shops` DROP PRIMARY KEY;

DROP TABLE `shops`;

# ---------------------------------------------------------------------- #
# Drop table "shop_themes"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_themes` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_themes` DROP PRIMARY KEY;

DROP TABLE `shop_themes`;

# ---------------------------------------------------------------------- #
# Drop table "shop_theme_settings"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_theme_settings` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_theme_settings` DROP PRIMARY KEY;

DROP TABLE `shop_theme_settings`;

# ---------------------------------------------------------------------- #
# Drop table "shop_tasks"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_tasks` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_tasks` ALTER COLUMN `completed` DROP DEFAULT;

ALTER TABLE `shop_tasks` DROP PRIMARY KEY;

DROP TABLE `shop_tasks`;

# ---------------------------------------------------------------------- #
# Drop table "shop_product_vendors"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_product_vendors` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_product_vendors` DROP PRIMARY KEY;

DROP TABLE `shop_product_vendors`;

# ---------------------------------------------------------------------- #
# Drop table "shop_product_types"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_product_types` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_product_types` DROP PRIMARY KEY;

DROP TABLE `shop_product_types`;

# ---------------------------------------------------------------------- #
# Drop table "shop_policies"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_policies` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_policies` DROP PRIMARY KEY;

DROP TABLE `shop_policies`;

# ---------------------------------------------------------------------- #
# Drop table "shop_domains"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shop_domains` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shop_domains` ALTER COLUMN `primary` DROP DEFAULT;

ALTER TABLE `shop_domains` ALTER COLUMN `force_domain` DROP DEFAULT;

ALTER TABLE `shop_domains` ALTER COLUMN `verified` DROP DEFAULT;

ALTER TABLE `shop_domains` DROP PRIMARY KEY;

DROP TABLE `shop_domains`;

# ---------------------------------------------------------------------- #
# Drop table "shippings"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shippings` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `shippings` DROP PRIMARY KEY;

DROP TABLE `shippings`;

# ---------------------------------------------------------------------- #
# Drop table "schema_migrations"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `schema_migrations` DROP PRIMARY KEY;

DROP TABLE `schema_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "products_tags"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `products_tags`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "product_variants"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_variants` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `product_variants` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `product_variants` ALTER COLUMN `weight` DROP DEFAULT;

ALTER TABLE `product_variants` ALTER COLUMN `requires_shipping` DROP DEFAULT;

ALTER TABLE `product_variants` ALTER COLUMN `inventory_policy` DROP DEFAULT;

ALTER TABLE `product_variants` DROP PRIMARY KEY;

DROP TABLE `product_variants`;

# ---------------------------------------------------------------------- #
# Drop table "product_options"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_options` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `product_options` DROP PRIMARY KEY;

DROP TABLE `product_options`;

# ---------------------------------------------------------------------- #
# Drop table "price_based_shipping_rates"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `price_based_shipping_rates` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `price_based_shipping_rates` DROP PRIMARY KEY;

DROP TABLE `price_based_shipping_rates`;

# ---------------------------------------------------------------------- #
# Drop table "photos"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `photos` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `photos` DROP PRIMARY KEY;

DROP TABLE `photos`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "order_transactions"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_transactions` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_transactions` DROP PRIMARY KEY;

DROP TABLE `order_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "order_shipping_addresses"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_shipping_addresses` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_shipping_addresses` DROP PRIMARY KEY;

DROP TABLE `order_shipping_addresses`;

# ---------------------------------------------------------------------- #
# Drop table "order_line_items"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_line_items` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_line_items` ALTER COLUMN `fulfilled` DROP DEFAULT;

ALTER TABLE `order_line_items` DROP PRIMARY KEY;

DROP TABLE `order_line_items`;

# ---------------------------------------------------------------------- #
# Drop table "order_histories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_histories` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_histories` DROP PRIMARY KEY;

DROP TABLE `order_histories`;

# ---------------------------------------------------------------------- #
# Drop table "order_fulfillments_order_line_items"                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `order_fulfillments_order_line_items`;

# ---------------------------------------------------------------------- #
# Drop table "order_fulfillments"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_fulfillments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_fulfillments` DROP PRIMARY KEY;

DROP TABLE `order_fulfillments`;

# ---------------------------------------------------------------------- #
# Drop table "order_discounts"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_discounts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `order_discounts` DROP PRIMARY KEY;

DROP TABLE `order_discounts`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_applications"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `oauth_applications` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `oauth_applications` DROP PRIMARY KEY;

DROP TABLE `oauth_applications`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_access_tokens"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `oauth_access_tokens` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `oauth_access_tokens` DROP PRIMARY KEY;

DROP TABLE `oauth_access_tokens`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_access_grants"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `oauth_access_grants` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `oauth_access_grants` DROP PRIMARY KEY;

DROP TABLE `oauth_access_grants`;

# ---------------------------------------------------------------------- #
# Drop table "links"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `links` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `links` DROP PRIMARY KEY;

DROP TABLE `links`;

# ---------------------------------------------------------------------- #
# Drop table "link_lists"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `link_lists` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `link_lists` ALTER COLUMN `system_default` DROP DEFAULT;

ALTER TABLE `link_lists` DROP PRIMARY KEY;

DROP TABLE `link_lists`;

# ---------------------------------------------------------------------- #
# Drop table "kindeditors"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kindeditors` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `kindeditors` DROP PRIMARY KEY;

DROP TABLE `kindeditors`;

# ---------------------------------------------------------------------- #
# Drop table "emails"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `emails` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `emails` ALTER COLUMN `include_html` DROP DEFAULT;

ALTER TABLE `emails` DROP PRIMARY KEY;

DROP TABLE `emails`;

# ---------------------------------------------------------------------- #
# Drop table "discounts"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `discounts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `discounts` ALTER COLUMN `used_times` DROP DEFAULT;

ALTER TABLE `discounts` DROP PRIMARY KEY;

DROP TABLE `discounts`;

# ---------------------------------------------------------------------- #
# Drop table "customers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customers` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `customers` ALTER COLUMN `total_spent` DROP DEFAULT;

ALTER TABLE `customers` ALTER COLUMN `orders_count` DROP DEFAULT;

ALTER TABLE `customers` ALTER COLUMN `accepts_marketing` DROP DEFAULT;

ALTER TABLE `customers` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `customers` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `customers` ALTER COLUMN `sign_in_count` DROP DEFAULT;

ALTER TABLE `customers` DROP PRIMARY KEY;

DROP TABLE `customers`;

# ---------------------------------------------------------------------- #
# Drop table "customer_tags_customers"                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `customer_tags_customers`;

# ---------------------------------------------------------------------- #
# Drop table "customer_tags"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_tags` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `customer_tags` DROP PRIMARY KEY;

DROP TABLE `customer_tags`;

# ---------------------------------------------------------------------- #
# Drop table "customer_groups"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_groups` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `customer_groups` DROP PRIMARY KEY;

DROP TABLE `customer_groups`;

# ---------------------------------------------------------------------- #
# Drop table "customer_addresses"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_addresses` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `customer_addresses` ALTER COLUMN `default_address` DROP DEFAULT;

ALTER TABLE `customer_addresses` DROP PRIMARY KEY;

DROP TABLE `customer_addresses`;

# ---------------------------------------------------------------------- #
# Drop table "custom_collections"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_collections` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `custom_collections` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `custom_collections` DROP PRIMARY KEY;

DROP TABLE `custom_collections`;

# ---------------------------------------------------------------------- #
# Drop table "custom_collection_products"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_collection_products` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `custom_collection_products` DROP PRIMARY KEY;

DROP TABLE `custom_collection_products`;

# ---------------------------------------------------------------------- #
# Drop table "consumptions"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `consumptions` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `consumptions` DROP PRIMARY KEY;

DROP TABLE `consumptions`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "carts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `carts` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `carts` DROP PRIMARY KEY;

DROP TABLE `carts`;

# ---------------------------------------------------------------------- #
# Drop table "cancel_reasons"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `cancel_reasons` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `cancel_reasons` DROP PRIMARY KEY;

DROP TABLE `cancel_reasons`;

# ---------------------------------------------------------------------- #
# Drop table "blogs"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `blogs` DROP PRIMARY KEY;

DROP TABLE `blogs`;

# ---------------------------------------------------------------------- #
# Drop table "articles_tags"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `articles_tags`;

# ---------------------------------------------------------------------- #
# Drop table "articles"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `articles` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `articles` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `articles` DROP PRIMARY KEY;

DROP TABLE `articles`;

# ---------------------------------------------------------------------- #
# Drop table "ar_internal_metadata"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ar_internal_metadata` DROP PRIMARY KEY;

DROP TABLE `ar_internal_metadata`;

# ---------------------------------------------------------------------- #
# Drop table "api_clients"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `api_clients` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `api_clients` DROP PRIMARY KEY;

DROP TABLE `api_clients`;

# ---------------------------------------------------------------------- #
# Drop table "admin_users"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_users` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `admin_users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `admin_users` ALTER COLUMN `encrypted_password` DROP DEFAULT;

ALTER TABLE `admin_users` ALTER COLUMN `sign_in_count` DROP DEFAULT;

ALTER TABLE `admin_users` DROP PRIMARY KEY;

DROP TABLE `admin_users`;

# ---------------------------------------------------------------------- #
# Drop table "activities"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `activities` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `activities` DROP PRIMARY KEY;

DROP TABLE `activities`;

# ---------------------------------------------------------------------- #
# Drop table "active_admin_comments"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `active_admin_comments` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `active_admin_comments` DROP PRIMARY KEY;

DROP TABLE `active_admin_comments`;
