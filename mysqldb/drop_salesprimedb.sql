# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          salesprimedb.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:30                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_permission_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_role_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "role_has_permissions"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `role_has_permissions` DROP PRIMARY KEY;

DROP TABLE `role_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "warehouses"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `warehouses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `warehouses` DROP PRIMARY KEY;

DROP TABLE `warehouses`;

# ---------------------------------------------------------------------- #
# Drop table "variants"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `variants` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `variants` DROP PRIMARY KEY;

DROP TABLE `variants`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "units"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `units` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `units` DROP PRIMARY KEY;

DROP TABLE `units`;

# ---------------------------------------------------------------------- #
# Drop table "transfers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `transfers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `transfers` DROP PRIMARY KEY;

DROP TABLE `transfers`;

# ---------------------------------------------------------------------- #
# Drop table "taxes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `taxes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `taxes` DROP PRIMARY KEY;

DROP TABLE `taxes`;

# ---------------------------------------------------------------------- #
# Drop table "suppliers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `suppliers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `suppliers` DROP PRIMARY KEY;

DROP TABLE `suppliers`;

# ---------------------------------------------------------------------- #
# Drop table "stock_counts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stock_counts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `stock_counts` DROP PRIMARY KEY;

DROP TABLE `stock_counts`;

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
# Drop table "returns"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `returns` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `returns` DROP PRIMARY KEY;

DROP TABLE `returns`;

# ---------------------------------------------------------------------- #
# Drop table "return_purchases"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `return_purchases` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `return_purchases` DROP PRIMARY KEY;

DROP TABLE `return_purchases`;

# ---------------------------------------------------------------------- #
# Drop table "quotations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `quotations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `quotations` DROP PRIMARY KEY;

DROP TABLE `quotations`;

# ---------------------------------------------------------------------- #
# Drop table "purchases"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchases` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `purchases` DROP PRIMARY KEY;

DROP TABLE `purchases`;

# ---------------------------------------------------------------------- #
# Drop table "purchase_product_return"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchase_product_return` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `purchase_product_return` DROP PRIMARY KEY;

DROP TABLE `purchase_product_return`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `products` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "product_warehouse"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_warehouse` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_warehouse` DROP PRIMARY KEY;

DROP TABLE `product_warehouse`;

# ---------------------------------------------------------------------- #
# Drop table "product_variants"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_variants` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_variants` DROP PRIMARY KEY;

DROP TABLE `product_variants`;

# ---------------------------------------------------------------------- #
# Drop table "product_transfer"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_transfer` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_transfer` DROP PRIMARY KEY;

DROP TABLE `product_transfer`;

# ---------------------------------------------------------------------- #
# Drop table "product_sales"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_sales` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_sales` DROP PRIMARY KEY;

DROP TABLE `product_sales`;

# ---------------------------------------------------------------------- #
# Drop table "product_returns"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_returns` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_returns` DROP PRIMARY KEY;

DROP TABLE `product_returns`;

# ---------------------------------------------------------------------- #
# Drop table "product_quotation"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_quotation` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_quotation` DROP PRIMARY KEY;

DROP TABLE `product_quotation`;

# ---------------------------------------------------------------------- #
# Drop table "product_purchases"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_purchases` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_purchases` DROP PRIMARY KEY;

DROP TABLE `product_purchases`;

# ---------------------------------------------------------------------- #
# Drop table "product_adjustments"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_adjustments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `product_adjustments` DROP PRIMARY KEY;

DROP TABLE `product_adjustments`;

# ---------------------------------------------------------------------- #
# Drop table "pos_setting"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `pos_setting`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "payrolls"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payrolls` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payrolls` DROP PRIMARY KEY;

DROP TABLE `payrolls`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "payment_with_paypal"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_with_paypal` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_with_paypal` DROP PRIMARY KEY;

DROP TABLE `payment_with_paypal`;

# ---------------------------------------------------------------------- #
# Drop table "payment_with_gift_card"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_with_gift_card` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_with_gift_card` DROP PRIMARY KEY;

DROP TABLE `payment_with_gift_card`;

# ---------------------------------------------------------------------- #
# Drop table "payment_with_credit_card"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_with_credit_card` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_with_credit_card` DROP PRIMARY KEY;

DROP TABLE `payment_with_credit_card`;

# ---------------------------------------------------------------------- #
# Drop table "payment_with_cheque"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_with_cheque` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payment_with_cheque` DROP PRIMARY KEY;

DROP TABLE `payment_with_cheque`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "money_transfers"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `money_transfers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `money_transfers` DROP PRIMARY KEY;

DROP TABLE `money_transfers`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `languages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "hrm_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `hrm_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `hrm_settings` DROP PRIMARY KEY;

DROP TABLE `hrm_settings`;

# ---------------------------------------------------------------------- #
# Drop table "holidays"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `holidays` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `holidays` DROP PRIMARY KEY;

DROP TABLE `holidays`;

# ---------------------------------------------------------------------- #
# Drop table "gift_cards"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gift_cards` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gift_cards` DROP PRIMARY KEY;

DROP TABLE `gift_cards`;

# ---------------------------------------------------------------------- #
# Drop table "gift_card_recharges"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `gift_card_recharges` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `gift_card_recharges` DROP PRIMARY KEY;

DROP TABLE `gift_card_recharges`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_settings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "expenses"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expenses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `expenses` DROP PRIMARY KEY;

DROP TABLE `expenses`;

# ---------------------------------------------------------------------- #
# Drop table "expense_categories"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense_categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `expense_categories` DROP PRIMARY KEY;

DROP TABLE `expense_categories`;

# ---------------------------------------------------------------------- #
# Drop table "employees"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employees` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `employees` DROP PRIMARY KEY;

DROP TABLE `employees`;

# ---------------------------------------------------------------------- #
# Drop table "deposits"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deposits` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deposits` DROP PRIMARY KEY;

DROP TABLE `deposits`;

# ---------------------------------------------------------------------- #
# Drop table "departments"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `departments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `departments` DROP PRIMARY KEY;

DROP TABLE `departments`;

# ---------------------------------------------------------------------- #
# Drop table "deliveries"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `deliveries` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `deliveries` DROP PRIMARY KEY;

DROP TABLE `deliveries`;

# ---------------------------------------------------------------------- #
# Drop table "customers"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `customers` DROP PRIMARY KEY;

DROP TABLE `customers`;

# ---------------------------------------------------------------------- #
# Drop table "customer_groups"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_groups` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `customer_groups` DROP PRIMARY KEY;

DROP TABLE `customer_groups`;

# ---------------------------------------------------------------------- #
# Drop table "coupons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupons` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coupons` DROP PRIMARY KEY;

DROP TABLE `coupons`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "brands"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `brands` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `brands` DROP PRIMARY KEY;

DROP TABLE `brands`;

# ---------------------------------------------------------------------- #
# Drop table "billers"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `billers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `billers` DROP PRIMARY KEY;

DROP TABLE `billers`;

# ---------------------------------------------------------------------- #
# Drop table "attendances"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attendances` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `attendances` DROP PRIMARY KEY;

DROP TABLE `attendances`;

# ---------------------------------------------------------------------- #
# Drop table "adjustments"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `adjustments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `adjustments` DROP PRIMARY KEY;

DROP TABLE `adjustments`;

# ---------------------------------------------------------------------- #
# Drop table "accounts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `accounts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `accounts` DROP PRIMARY KEY;

DROP TABLE `accounts`;
