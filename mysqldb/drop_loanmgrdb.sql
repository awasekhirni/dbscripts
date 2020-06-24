# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          loanmgrdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `kpos_customers` DROP FOREIGN KEY `kpos_customers_ibfk_1`;

ALTER TABLE `kpos_employees` DROP FOREIGN KEY `kpos_employees_ibfk_1`;

ALTER TABLE `kpos_giftcards` DROP FOREIGN KEY `kpos_giftcards_ibfk_1`;

ALTER TABLE `kpos_grants` DROP FOREIGN KEY `kpos_grants_ibfk_1`;

ALTER TABLE `kpos_grants` DROP FOREIGN KEY `kpos_grants_ibfk_2`;

ALTER TABLE `kpos_inventory` DROP FOREIGN KEY `kpos_inventory_ibfk_1`;

ALTER TABLE `kpos_inventory` DROP FOREIGN KEY `kpos_inventory_ibfk_2`;

ALTER TABLE `kpos_item_kit_items` DROP FOREIGN KEY `kpos_item_kit_items_ibfk_1`;

ALTER TABLE `kpos_item_kit_items` DROP FOREIGN KEY `kpos_item_kit_items_ibfk_2`;

ALTER TABLE `kpos_item_quantities` DROP FOREIGN KEY `kpos_item_quantities_ibfk_1`;

ALTER TABLE `kpos_item_quantities` DROP FOREIGN KEY `kpos_item_quantities_ibfk_2`;

ALTER TABLE `kpos_items` DROP FOREIGN KEY `kpos_items_ibfk_1`;

ALTER TABLE `kpos_items_taxes` DROP FOREIGN KEY `kpos_items_taxes_ibfk_1`;

ALTER TABLE `kpos_permissions` DROP FOREIGN KEY `kpos_permissions_ibfk_1`;

ALTER TABLE `kpos_permissions` DROP FOREIGN KEY `kpos_permissions_ibfk_2`;

ALTER TABLE `kpos_receivings` DROP FOREIGN KEY `kpos_receivings_ibfk_1`;

ALTER TABLE `kpos_receivings` DROP FOREIGN KEY `kpos_receivings_ibfk_2`;

ALTER TABLE `kpos_receivings_items` DROP FOREIGN KEY `kpos_receivings_items_ibfk_1`;

ALTER TABLE `kpos_receivings_items` DROP FOREIGN KEY `kpos_receivings_items_ibfk_2`;

ALTER TABLE `kpos_sales` DROP FOREIGN KEY `kpos_sales_ibfk_1`;

ALTER TABLE `kpos_sales` DROP FOREIGN KEY `kpos_sales_ibfk_2`;

ALTER TABLE `kpos_sales_items` DROP FOREIGN KEY `kpos_sales_items_ibfk_1`;

ALTER TABLE `kpos_sales_items` DROP FOREIGN KEY `kpos_sales_items_ibfk_2`;

ALTER TABLE `kpos_sales_items` DROP FOREIGN KEY `kpos_sales_items_ibfk_3`;

ALTER TABLE `kpos_sales_items_taxes` DROP FOREIGN KEY `kpos_sales_items_taxes_ibfk_1`;

ALTER TABLE `kpos_sales_items_taxes` DROP FOREIGN KEY `kpos_sales_items_taxes_ibfk_2`;

ALTER TABLE `kpos_sales_payments` DROP FOREIGN KEY `kpos_sales_payments_ibfk_1`;

ALTER TABLE `kpos_sales_suspended` DROP FOREIGN KEY `kpos_sales_suspended_ibfk_1`;

ALTER TABLE `kpos_sales_suspended` DROP FOREIGN KEY `kpos_sales_suspended_ibfk_2`;

ALTER TABLE `kpos_sales_suspended_items` DROP FOREIGN KEY `kpos_sales_suspended_items_ibfk_1`;

ALTER TABLE `kpos_sales_suspended_items` DROP FOREIGN KEY `kpos_sales_suspended_items_ibfk_2`;

ALTER TABLE `kpos_sales_suspended_items` DROP FOREIGN KEY `kpos_sales_suspended_items_ibfk_3`;

ALTER TABLE `kpos_sales_suspended_items_taxes` DROP FOREIGN KEY `kpos_sales_suspended_items_taxes_ibfk_1`;

ALTER TABLE `kpos_sales_suspended_items_taxes` DROP FOREIGN KEY `kpos_sales_suspended_items_taxes_ibfk_2`;

ALTER TABLE `kpos_sales_suspended_payments` DROP FOREIGN KEY `kpos_sales_suspended_payments_ibfk_1`;

ALTER TABLE `kpos_suppliers` DROP FOREIGN KEY `kpos_suppliers_ibfk_1`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_item_quantities"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_item_quantities` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `kpos_item_quantities` DROP PRIMARY KEY;

DROP TABLE `kpos_item_quantities`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_item_kit_items"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_item_kit_items` DROP PRIMARY KEY;

DROP TABLE `kpos_item_kit_items`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_inventory"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_inventory` MODIFY `trans_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_inventory` ALTER COLUMN `trans_items` DROP DEFAULT;

ALTER TABLE `kpos_inventory` ALTER COLUMN `trans_user` DROP DEFAULT;

ALTER TABLE `kpos_inventory` ALTER COLUMN `trans_date` DROP DEFAULT;

ALTER TABLE `kpos_inventory` ALTER COLUMN `trans_inventory` DROP DEFAULT;

ALTER TABLE `kpos_inventory` DROP PRIMARY KEY;

DROP TABLE `kpos_inventory`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_grants"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_grants` DROP PRIMARY KEY;

DROP TABLE `kpos_grants`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_suspended_payments"                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_suspended_payments` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_suspended_payments`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_suspended_items_taxes"                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_suspended_items_taxes` ALTER COLUMN `line` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items_taxes` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_suspended_items_taxes`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_suspended_items"                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_suspended_items` ALTER COLUMN `sale_id` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items` ALTER COLUMN `item_id` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items` ALTER COLUMN `line` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items` ALTER COLUMN `quantity_purchased` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended_items` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_suspended_items`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_suspended"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_sales_suspended` MODIFY `sale_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_sales_suspended` ALTER COLUMN `sale_time` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended` ALTER COLUMN `employee_id` DROP DEFAULT;

ALTER TABLE `kpos_sales_suspended` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_suspended`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_payments"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_payments` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_payments`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_items_taxes"                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_items_taxes` ALTER COLUMN `line` DROP DEFAULT;

ALTER TABLE `kpos_sales_items_taxes` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_items_taxes`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales_items"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sales_items` ALTER COLUMN `sale_id` DROP DEFAULT;

ALTER TABLE `kpos_sales_items` ALTER COLUMN `item_id` DROP DEFAULT;

ALTER TABLE `kpos_sales_items` ALTER COLUMN `line` DROP DEFAULT;

ALTER TABLE `kpos_sales_items` ALTER COLUMN `quantity_purchased` DROP DEFAULT;

ALTER TABLE `kpos_sales_items` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `kpos_sales_items` DROP PRIMARY KEY;

DROP TABLE `kpos_sales_items`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sales"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_sales` MODIFY `sale_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_sales` ALTER COLUMN `sale_time` DROP DEFAULT;

ALTER TABLE `kpos_sales` ALTER COLUMN `employee_id` DROP DEFAULT;

ALTER TABLE `kpos_sales` DROP PRIMARY KEY;

DROP TABLE `kpos_sales`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_receivings_items"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_receivings_items` ALTER COLUMN `receiving_id` DROP DEFAULT;

ALTER TABLE `kpos_receivings_items` ALTER COLUMN `item_id` DROP DEFAULT;

ALTER TABLE `kpos_receivings_items` ALTER COLUMN `quantity_purchased` DROP DEFAULT;

ALTER TABLE `kpos_receivings_items` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `kpos_receivings_items` DROP PRIMARY KEY;

DROP TABLE `kpos_receivings_items`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_receivings"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_receivings` MODIFY `receiving_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_receivings` ALTER COLUMN `receiving_time` DROP DEFAULT;

ALTER TABLE `kpos_receivings` ALTER COLUMN `employee_id` DROP DEFAULT;

ALTER TABLE `kpos_receivings` DROP PRIMARY KEY;

DROP TABLE `kpos_receivings`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_permissions"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_permissions` DROP PRIMARY KEY;

DROP TABLE `kpos_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_items_taxes"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_items_taxes` DROP PRIMARY KEY;

DROP TABLE `kpos_items_taxes`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_items"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_items` MODIFY `item_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_items` ALTER COLUMN `reorder_level` DROP DEFAULT;

ALTER TABLE `kpos_items` ALTER COLUMN `receiving_quantity` DROP DEFAULT;

ALTER TABLE `kpos_items` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `kpos_items` DROP PRIMARY KEY;

DROP TABLE `kpos_items`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_giftcards"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_giftcards` MODIFY `giftcard_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_giftcards` ALTER COLUMN `record_time` DROP DEFAULT;

ALTER TABLE `kpos_giftcards` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `kpos_giftcards` DROP PRIMARY KEY;

DROP TABLE `kpos_giftcards`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_employees"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_employees` ALTER COLUMN `deleted` DROP DEFAULT;

DROP TABLE `kpos_employees`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_customers"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_customers` ALTER COLUMN `taxable` DROP DEFAULT;

ALTER TABLE `kpos_customers` ALTER COLUMN `deleted` DROP DEFAULT;

DROP TABLE `kpos_customers`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_suppliers"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_suppliers` ALTER COLUMN `deleted` DROP DEFAULT;

DROP TABLE `kpos_suppliers`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_stock_locations"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_stock_locations` MODIFY `location_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_stock_locations` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `kpos_stock_locations` DROP PRIMARY KEY;

DROP TABLE `kpos_stock_locations`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_sessions"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_sessions` ALTER COLUMN `session_id` DROP DEFAULT;

ALTER TABLE `kpos_sessions` ALTER COLUMN `ip_address` DROP DEFAULT;

ALTER TABLE `kpos_sessions` ALTER COLUMN `last_activity` DROP DEFAULT;

ALTER TABLE `kpos_sessions` DROP PRIMARY KEY;

DROP TABLE `kpos_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_people"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_people` MODIFY `person_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_people` DROP PRIMARY KEY;

DROP TABLE `kpos_people`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_payment_schedules"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_payment_schedules` MODIFY `payment_schedule_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_payment_schedules` ALTER COLUMN `recurrence` DROP DEFAULT;

ALTER TABLE `kpos_payment_schedules` ALTER COLUMN `delete_flag` DROP DEFAULT;

ALTER TABLE `kpos_payment_schedules` DROP PRIMARY KEY;

DROP TABLE `kpos_payment_schedules`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_modules"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_modules` ALTER COLUMN `is_active` DROP DEFAULT;

ALTER TABLE `kpos_modules` DROP PRIMARY KEY;

DROP TABLE `kpos_modules`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_loans"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_loans` MODIFY `loan_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_loans` DROP PRIMARY KEY;

DROP TABLE `kpos_loans`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_loan_types"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_loan_types` MODIFY `loan_type_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_loan_types` DROP PRIMARY KEY;

DROP TABLE `kpos_loan_types`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_loan_payments"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_loan_payments` MODIFY `loan_payment_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_loan_payments` ALTER COLUMN `account` DROP DEFAULT;

ALTER TABLE `kpos_loan_payments` ALTER COLUMN `delete_flag` DROP DEFAULT;

ALTER TABLE `kpos_loan_payments` DROP PRIMARY KEY;

DROP TABLE `kpos_loan_payments`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_item_kits"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_item_kits` MODIFY `item_kit_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_item_kits` DROP PRIMARY KEY;

DROP TABLE `kpos_item_kits`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_guarantee"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_guarantee` MODIFY `guarantee_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_guarantee` ALTER COLUMN `loan_id` DROP DEFAULT;

ALTER TABLE `kpos_guarantee` DROP PRIMARY KEY;

DROP TABLE `kpos_guarantee`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_financial_status"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `kpos_financial_status` MODIFY `financial_status_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `kpos_financial_status` DROP PRIMARY KEY;

DROP TABLE `kpos_financial_status`;

# ---------------------------------------------------------------------- #
# Drop table "kpos_app_config"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `kpos_app_config` DROP PRIMARY KEY;

DROP TABLE `kpos_app_config`;
