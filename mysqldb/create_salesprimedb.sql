# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          salesprimedb.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:30                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "accounts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `account_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `initial_balance` DOUBLE,
    `total_balance` DOUBLE NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_default` TINYINT(1),
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "adjustments"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `adjustments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `total_qty` DOUBLE NOT NULL,
    `item` INTEGER(11) NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "attendances"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `attendances` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `employee_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `checkin` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `checkout` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "billers"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `billers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `vat_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `state` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `postal_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "brands"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `brands` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent_id` INTEGER(11),
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "coupons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupons` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` DOUBLE NOT NULL,
    `minimum_amount` DOUBLE,
    `quantity` INTEGER(11) NOT NULL,
    `used` INTEGER(11) NOT NULL,
    `expired_date` DATE NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customer_groups"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_groups` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `percentage` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `customers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `customer_group_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `company_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `tax_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `state` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `postal_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `deposit` DOUBLE,
    `expense` DOUBLE,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deliveries"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `deliveries` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sale_id` INTEGER(11) NOT NULL,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `delivered_by` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `recieved_by` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `file` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "departments"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `departments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "deposits"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `deposits` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `amount` DOUBLE NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employees"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `employees` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `department_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11),
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense_categories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense_categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expenses"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `expenses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `expense_category_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `account_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `amount` INTEGER(11) NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `site_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `site_logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `currency` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `staff_access` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `date_format` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `theme` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `currency_position` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "gift_card_recharges"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `gift_card_recharges` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `gift_card_id` INTEGER(11) NOT NULL,
    `amount` DOUBLE NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "gift_cards"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `gift_cards` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `card_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `amount` DOUBLE NOT NULL,
    `expense` DOUBLE NOT NULL,
    `customer_id` INTEGER(11),
    `user_id` INTEGER(11),
    `expired_date` DATE,
    `created_by` INTEGER(11) NOT NULL,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "holidays"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `holidays` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `from_date` DATE NOT NULL,
    `to_date` DATE NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_approved` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "hrm_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `hrm_settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `checkin` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `checkout` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

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
# Add table "money_transfers"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `money_transfers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `from_account_id` INTEGER(11) NOT NULL,
    `to_account_id` INTEGER(11) NOT NULL,
    `amount` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

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
# Add table "payment_with_cheque"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_with_cheque` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payment_id` INTEGER(11) NOT NULL,
    `cheque_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_with_credit_card"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_with_credit_card` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payment_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11),
    `customer_stripe_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_with_gift_card"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_with_gift_card` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payment_id` INTEGER(11) NOT NULL,
    `gift_card_id` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_with_paypal"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_with_paypal` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payment_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payment_reference` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `purchase_id` INTEGER(11),
    `sale_id` INTEGER(11),
    `account_id` INTEGER(11) NOT NULL,
    `amount` DOUBLE NOT NULL,
    `change` DOUBLE NOT NULL,
    `paying_method` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payment_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payrolls"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payrolls` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `employee_id` INTEGER(11) NOT NULL,
    `account_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `amount` DOUBLE NOT NULL,
    `paying_method` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pos_setting"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `pos_setting` (
    `id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `biller_id` INTEGER(11) NOT NULL,
    `product_number` INTEGER(11) NOT NULL,
    `keybord_active` TINYINT(1) NOT NULL,
    `stripe_public_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `stripe_secret_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `pos_setting_id_unique` ON `pos_setting` (`id`);

# ---------------------------------------------------------------------- #
# Add table "product_adjustments"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_adjustments` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `adjustment_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `qty` DOUBLE NOT NULL,
    `action` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_purchases"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_purchases` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `purchase_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `recieved` DOUBLE NOT NULL,
    `purchase_unit_id` INTEGER(11) NOT NULL,
    `net_unit_cost` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_quotation"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_quotation` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `quotation_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `sale_unit_id` INTEGER(11) NOT NULL,
    `net_unit_price` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_returns"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_returns` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `return_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `sale_unit_id` INTEGER(11) NOT NULL,
    `net_unit_price` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_sales"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_sales` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sale_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `sale_unit_id` INTEGER(11) NOT NULL,
    `net_unit_price` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_transfer"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_transfer` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `transfer_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `purchase_unit_id` INTEGER(11) NOT NULL,
    `net_unit_cost` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_variants"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_variants` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11) NOT NULL,
    `position` INTEGER(11) NOT NULL,
    `item_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `additional_price` DOUBLE,
    `qty` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_warehouse"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_warehouse` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_id` INTEGER(11),
    `warehouse_id` INTEGER(11) NOT NULL,
    `qty` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `barcode_symbology` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `brand_id` INTEGER(11),
    `category_id` INTEGER(11) NOT NULL,
    `unit_id` INTEGER(11) NOT NULL,
    `purchase_unit_id` INTEGER(11) NOT NULL,
    `sale_unit_id` INTEGER(11) NOT NULL,
    `cost` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `qty` DOUBLE,
    `alert_quantity` DOUBLE,
    `promotion` TINYINT(4),
    `promotion_price` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `starting_date` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `last_date` DATE,
    `tax_id` INTEGER(11),
    `tax_method` INTEGER(11),
    `image` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `file` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_variant` TINYINT(1),
    `featured` TINYINT(4),
    `product_list` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `qty_list` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price_list` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `product_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchase_product_return"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchase_product_return` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `return_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `variant_id` INTEGER(11),
    `qty` DOUBLE NOT NULL,
    `purchase_unit_id` INTEGER(11) NOT NULL,
    `net_unit_cost` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `tax_rate` DOUBLE NOT NULL,
    `tax` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchases"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchases` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `supplier_id` INTEGER(11),
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_discount` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_cost` DOUBLE NOT NULL,
    `order_tax_rate` DOUBLE,
    `order_tax` DOUBLE,
    `order_discount` DOUBLE,
    `shipping_cost` DOUBLE,
    `grand_total` DOUBLE NOT NULL,
    `paid_amount` DOUBLE NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `payment_status` INTEGER(11) NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "quotations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `quotations` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `biller_id` INTEGER(11) NOT NULL,
    `supplier_id` INTEGER(11),
    `customer_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_discount` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_price` DOUBLE NOT NULL,
    `order_tax_rate` DOUBLE,
    `order_tax` DOUBLE,
    `order_discount` DOUBLE,
    `shipping_cost` DOUBLE,
    `grand_total` DOUBLE NOT NULL,
    `quotation_status` INTEGER(11) NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "return_purchases"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `return_purchases` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `supplier_id` INTEGER(11),
    `warehouse_id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `account_id` INTEGER(11) NOT NULL,
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_discount` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_cost` DOUBLE NOT NULL,
    `order_tax_rate` DOUBLE,
    `order_tax` DOUBLE,
    `grand_total` DOUBLE NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `return_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `staff_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "returns"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `returns` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `biller_id` INTEGER(11) NOT NULL,
    `account_id` INTEGER(11) NOT NULL,
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_discount` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_price` DOUBLE NOT NULL,
    `order_tax_rate` DOUBLE,
    `order_tax` DOUBLE,
    `grand_total` DOUBLE NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `return_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `staff_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `guard_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sales"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `sales` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `biller_id` INTEGER(11),
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_discount` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_price` DOUBLE NOT NULL,
    `grand_total` DOUBLE NOT NULL,
    `order_tax_rate` DOUBLE,
    `order_tax` DOUBLE,
    `order_discount` DOUBLE,
    `coupon_id` INTEGER(11),
    `coupon_discount` DOUBLE,
    `shipping_cost` DOUBLE,
    `sale_status` INTEGER(11) NOT NULL,
    `payment_status` INTEGER(11) NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paid_amount` DOUBLE,
    `sale_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `staff_note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "stock_counts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `stock_counts` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `warehouse_id` INTEGER(11) NOT NULL,
    `category_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `brand_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_id` INTEGER(11) NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `initial_file` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `final_file` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_adjusted` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "suppliers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `suppliers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `vat_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `state` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `postal_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taxes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `taxes` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` DOUBLE NOT NULL,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "transfers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `transfers` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reference_no` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `from_warehouse_id` INTEGER(11) NOT NULL,
    `to_warehouse_id` INTEGER(11) NOT NULL,
    `item` INTEGER(11) NOT NULL,
    `total_qty` DOUBLE NOT NULL,
    `total_tax` DOUBLE NOT NULL,
    `total_cost` DOUBLE NOT NULL,
    `shipping_cost` DOUBLE,
    `grand_total` DOUBLE NOT NULL,
    `document` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "units"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `units` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `unit_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `unit_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `base_unit` INTEGER(11),
    `operator` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `operation_value` DOUBLE,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `company_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `role_id` INTEGER(11) NOT NULL,
    `biller_id` INTEGER(11),
    `warehouse_id` INTEGER(11),
    `is_active` TINYINT(1) NOT NULL,
    `is_deleted` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "variants"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `variants` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "warehouses"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `warehouses` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active` TINYINT(1),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "role_has_permissions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `role_has_permissions` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`permission_id`, `role_id`)
)
ENGINE = INNODB;

CREATE INDEX `role_has_permissions_role_id_foreign` ON `role_has_permissions` (`role_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_permission_id_foreign` 
    FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_role_id_foreign` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
