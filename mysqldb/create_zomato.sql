# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          mysql_zomato_development.dez                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:02                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

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
# Add table "food_categories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `food_categories` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "restaurant_categories"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `restaurant_categories` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "restaurants"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `restaurants` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `city` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_file_size` BIGINT(20) NOT NULL,
    `image_updated_at` DATETIME NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `secondary_phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `owner_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `owner_phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `website` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `serve_alcohal` TINYINT(1) NOT NULL,
    `restaurant_category_id` BIGINT(20) NOT NULL,
    `latitude` FLOAT NOT NULL,
    `longitude` FLOAT NOT NULL,
    `distance` FLOAT,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_restaurants_on_restaurant_category_id` ON `restaurants` (`restaurant_category_id`);

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`version`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `admin` TINYINT(1) DEFAULT 0,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password_digest` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image_file_size` BIGINT(20),
    `image_updated_at` DATETIME,
    `provider` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'email',
    `uid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "booking_tables"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `booking_tables` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20) NOT NULL,
    `restaurant_id` BIGINT(20) NOT NULL,
    `guest_number` INTEGER(11) NOT NULL,
    `booking_date` DATE NOT NULL,
    `booking_time` TIME NOT NULL,
    `guest_first_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `guest_last_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `guest_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `guest_phone_number` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_booking_tables_on_restaurant_id` ON `booking_tables` (`restaurant_id`);

CREATE INDEX `index_booking_tables_on_user_id` ON `booking_tables` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "food_items"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `food_items` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `price` DECIMAL(10) NOT NULL DEFAULT 1,
    `veg` INTEGER(11) NOT NULL DEFAULT 0,
    `image_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_file_size` BIGINT(20) NOT NULL,
    `image_updated_at` DATETIME NOT NULL,
    `food_category_id` BIGINT(20) NOT NULL,
    `restaurant_id` BIGINT(20) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_food_items_on_food_category_id` ON `food_items` (`food_category_id`);

CREATE INDEX `index_food_items_on_restaurant_id` ON `food_items` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "menu_cards"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `menu_cards` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `restaurant_id` BIGINT(20) NOT NULL,
    `image_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_file_size` BIGINT(20) NOT NULL,
    `image_updated_at` DATETIME NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_menu_cards_on_restaurant_id` ON `menu_cards` (`restaurant_id`);

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20) NOT NULL,
    `restaurant_id` BIGINT(20) NOT NULL,
    `total_price` FLOAT NOT NULL DEFAULT 0,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `placed_at` DATETIME,
    `address` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `latitude` FLOAT NOT NULL,
    `longitude` FLOAT NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_orders_on_restaurant_id` ON `orders` (`restaurant_id`);

CREATE INDEX `index_orders_on_user_id` ON `orders` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "reviews"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reviews` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `rating` INTEGER(11) NOT NULL,
    `comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `image_file_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image_content_type` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `image_file_size` BIGINT(20),
    `image_updated_at` DATETIME,
    `approve` INTEGER(11) NOT NULL DEFAULT 0,
    `user_id` BIGINT(20) NOT NULL,
    `restaurant_id` BIGINT(20) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_reviews_on_restaurant_id` ON `reviews` (`restaurant_id`);

CREATE INDEX `index_reviews_on_user_id` ON `reviews` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "order_items"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_items` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `quantity` INTEGER(11) NOT NULL DEFAULT 1,
    `sub_total` DECIMAL(10) NOT NULL DEFAULT 0,
    `food_item_id` BIGINT(20) NOT NULL,
    `order_id` BIGINT(20) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `index_order_items_on_food_item_id` ON `order_items` (`food_item_id`);

CREATE INDEX `index_order_items_on_order_id` ON `order_items` (`order_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `booking_tables` ADD CONSTRAINT `fk_rails_190cc7f369` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `booking_tables` ADD CONSTRAINT `fk_rails_6784cfe125` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `food_items` ADD CONSTRAINT `fk_rails_ea28736128` 
    FOREIGN KEY (`food_category_id`) REFERENCES `food_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `food_items` ADD CONSTRAINT `fk_rails_f6476d3ec3` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `menu_cards` ADD CONSTRAINT `fk_rails_82242faa23` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `order_items` ADD CONSTRAINT `fk_rails_e3cb28f071` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `order_items` ADD CONSTRAINT `fk_rails_ecec0c691f` 
    FOREIGN KEY (`food_item_id`) REFERENCES `food_items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `orders` ADD CONSTRAINT `fk_rails_9af093cac8` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `orders` ADD CONSTRAINT `fk_rails_f868b47f6a` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `reviews` ADD CONSTRAINT `fk_rails_74a66bd6c5` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `reviews` ADD CONSTRAINT `fk_rails_8173017a90` 
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
