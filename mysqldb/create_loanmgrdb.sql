# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          loanmgrdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "kpos_app_config"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_app_config` (
    `key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`key`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_financial_status"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_financial_status` (
    `financial_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `person_id` INTEGER(11) NOT NULL,
    `income_sources` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`financial_status_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_guarantee"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_guarantee` (
    `guarantee_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `loan_id` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type` VARCHAR(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `brand` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `images` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `observations` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`guarantee_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_item_kits"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_item_kits` (
    `item_kit_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`item_kit_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_loan_payments"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_loan_payments` (
    `loan_payment_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
    `loan_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `balance_amount` DECIMAL(10,2) NOT NULL,
    `paid_amount` DECIMAL(10,2) NOT NULL,
    `teller_id` INTEGER(11) NOT NULL,
    `date_paid` INTEGER(11) NOT NULL,
    `date_modified` INTEGER(11) NOT NULL,
    `modified_by` INTEGER(11) NOT NULL,
    `remarks` VARCHAR(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `delete_flag` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`loan_payment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_loan_types"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_loan_types` (
    `loan_type_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `description` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `term` INTEGER(11) NOT NULL,
    `term_period_type` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_schedule` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge1` DECIMAL(10,2) NOT NULL,
    `period_charge1` INTEGER(11) NOT NULL,
    `period_type1` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge2` DECIMAL(10,2) NOT NULL,
    `period_charge2` INTEGER(11) NOT NULL,
    `period_type2` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge3` DECIMAL(10,2) NOT NULL,
    `period_charge3` INTEGER(11) NOT NULL,
    `period_type3` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge4` DECIMAL(10,2) NOT NULL,
    `period_charge4` INTEGER(11) NOT NULL,
    `period_type4` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge5` DECIMAL(10,2) NOT NULL,
    `period_charge5` INTEGER(11) NOT NULL,
    `period_type5` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge6` DECIMAL(10,2) NOT NULL,
    `period_charge6` INTEGER(11) NOT NULL,
    `period_type6` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge7` DECIMAL(10,2) NOT NULL,
    `period_charge7` INTEGER(11) NOT NULL,
    `period_type7` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge8` DECIMAL(10,2) NOT NULL,
    `period_charge8` INTEGER(11) NOT NULL,
    `period_type8` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge9` DECIMAL(10,2) NOT NULL,
    `period_charge9` INTEGER(11) NOT NULL,
    `period_type9` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `percent_charge10` DECIMAL(10,2) NOT NULL,
    `period_charge10` INTEGER(11) NOT NULL,
    `period_type10` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `added_by` INTEGER(11) NOT NULL,
    `date_added` INTEGER(11) NOT NULL,
    `modified_by` INTEGER(11) NOT NULL,
    `date_modified` INTEGER(11) NOT NULL,
    PRIMARY KEY (`loan_type_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_loans"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_loans` (
    `loan_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `description` VARCHAR(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `remarks` VARCHAR(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `loan_type_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `loan_amount` DECIMAL(10,2) NOT NULL,
    `loan_balance` DECIMAL(10,2) NOT NULL,
    `loan_status` ENUM('pending','approved','on going','paid') COLLATE latin1_swedish_ci NOT NULL,
    `loan_agent_id` INTEGER(11) NOT NULL,
    `loan_approved_by_id` INTEGER(11) NOT NULL,
    `loan_reviewed_by_id` INTEGER(11) NOT NULL,
    `loan_applied_date` INTEGER(11) NOT NULL,
    `loan_payment_date` INTEGER(11) NOT NULL,
    `misc_fees` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `delete_flag` INTEGER(11) NOT NULL,
    PRIMARY KEY (`loan_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_modules"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_modules` (
    `module_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name_lang_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `desc_lang_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sort` INTEGER(10) NOT NULL,
    `icons` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `is_active` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`module_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `desc_lang_key` ON `kpos_modules` (`desc_lang_key`);

CREATE UNIQUE INDEX `name_lang_key` ON `kpos_modules` (`name_lang_key`);

# ---------------------------------------------------------------------- #
# Add table "kpos_payment_schedules"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_payment_schedules` (
    `payment_schedule_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `recurrence` INTEGER(11) NOT NULL DEFAULT 0,
    `delete_flag` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`payment_schedule_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_people"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_people` (
    `person_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_url` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address_1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address_2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `zip` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `comments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`person_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_sessions"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sessions` (
    `session_id` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `user_agent` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_activity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `user_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`session_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_stock_locations"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_stock_locations` (
    `location_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `location_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`location_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_suppliers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_suppliers` (
    `person_id` INTEGER(10) NOT NULL,
    `company_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `account_number` ON `kpos_suppliers` (`account_number`);

CREATE INDEX `person_id` ON `kpos_suppliers` (`person_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_customers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_customers` (
    `person_id` INTEGER(10) NOT NULL,
    `account_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `taxable` INTEGER(1) NOT NULL DEFAULT 1,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `account_number` ON `kpos_customers` (`account_number`);

CREATE INDEX `person_id` ON `kpos_customers` (`person_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_employees"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_employees` (
    `username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_id` INTEGER(10) NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `username` ON `kpos_employees` (`username`);

CREATE INDEX `person_id` ON `kpos_employees` (`person_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_giftcards"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_giftcards` (
    `record_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `giftcard_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `giftcard_number` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `value` DECIMAL(15,2) NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    `person_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`giftcard_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `giftcard_number` ON `kpos_giftcards` (`giftcard_number`);

CREATE INDEX `ospos_giftcards_ibfk_1` ON `kpos_giftcards` (`person_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_items"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_items` (
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `category` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `supplier_id` INTEGER(11),
    `item_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cost_price` DECIMAL(15,2) NOT NULL,
    `unit_price` DECIMAL(15,2) NOT NULL,
    `reorder_level` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `receiving_quantity` INTEGER(11) NOT NULL DEFAULT 1,
    `item_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `allow_alt_description` TINYINT(1) NOT NULL,
    `is_serialized` TINYINT(1) NOT NULL,
    `deleted` INTEGER(1) NOT NULL DEFAULT 0,
    `custom1` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom2` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom3` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom4` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom5` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom6` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom7` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom8` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom9` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `custom10` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`item_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `item_number` ON `kpos_items` (`item_number`);

CREATE INDEX `ospos_items_ibfk_1` ON `kpos_items` (`supplier_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_items_taxes"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_items_taxes` (
    `item_id` INTEGER(10) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `percent` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`item_id`, `name`, `percent`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_permissions"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_permissions` (
    `permission_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `module_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `location_id` INTEGER(10),
    PRIMARY KEY (`permission_id`)
)
ENGINE = INNODB;

CREATE INDEX `module_id` ON `kpos_permissions` (`module_id`);

CREATE INDEX `ospos_permissions_ibfk_2` ON `kpos_permissions` (`location_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_receivings"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_receivings` (
    `receiving_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `supplier_id` INTEGER(10),
    `employee_id` INTEGER(10) NOT NULL DEFAULT 0,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `receiving_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `payment_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoice_number` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`receiving_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `invoice_number` ON `kpos_receivings` (`invoice_number`);

CREATE INDEX `supplier_id` ON `kpos_receivings` (`supplier_id`);

CREATE INDEX `employee_id` ON `kpos_receivings` (`employee_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_receivings_items"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_receivings_items` (
    `receiving_id` INTEGER(10) NOT NULL DEFAULT 0,
    `item_id` INTEGER(10) NOT NULL DEFAULT 0,
    `description` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `serialnumber` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `line` INTEGER(3) NOT NULL,
    `quantity_purchased` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_cost_price` DECIMAL(15,2) NOT NULL,
    `item_unit_price` DECIMAL(15,2) NOT NULL,
    `discount_percent` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_location` INTEGER(11) NOT NULL,
    PRIMARY KEY (`receiving_id`, `item_id`, `line`)
)
ENGINE = INNODB;

CREATE INDEX `item_id` ON `kpos_receivings_items` (`item_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales` (
    `sale_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `customer_id` INTEGER(10),
    `employee_id` INTEGER(10) NOT NULL DEFAULT 0,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `invoice_number` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sale_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `payment_type` VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`sale_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `invoice_number` ON `kpos_sales` (`invoice_number`);

CREATE INDEX `customer_id` ON `kpos_sales` (`customer_id`);

CREATE INDEX `employee_id` ON `kpos_sales` (`employee_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_items"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_items` (
    `sale_id` INTEGER(10) NOT NULL DEFAULT 0,
    `item_id` INTEGER(10) NOT NULL DEFAULT 0,
    `description` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `serialnumber` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `line` INTEGER(3) NOT NULL DEFAULT 0,
    `quantity_purchased` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_cost_price` DECIMAL(15,2) NOT NULL,
    `item_unit_price` DECIMAL(15,2) NOT NULL,
    `discount_percent` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_location` INTEGER(11) NOT NULL,
    PRIMARY KEY (`sale_id`, `item_id`, `line`)
)
ENGINE = INNODB;

CREATE INDEX `sale_id` ON `kpos_sales_items` (`sale_id`);

CREATE INDEX `item_id` ON `kpos_sales_items` (`item_id`);

CREATE INDEX `item_location` ON `kpos_sales_items` (`item_location`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_items_taxes"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_items_taxes` (
    `sale_id` INTEGER(10) NOT NULL,
    `item_id` INTEGER(10) NOT NULL,
    `line` INTEGER(3) NOT NULL DEFAULT 0,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `percent` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`sale_id`, `item_id`, `line`, `name`, `percent`)
)
ENGINE = INNODB;

CREATE INDEX `sale_id` ON `kpos_sales_items_taxes` (`sale_id`);

CREATE INDEX `item_id` ON `kpos_sales_items_taxes` (`item_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_payments"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_payments` (
    `sale_id` INTEGER(10) NOT NULL,
    `payment_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_amount` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`sale_id`, `payment_type`)
)
ENGINE = INNODB;

CREATE INDEX `sale_id` ON `kpos_sales_payments` (`sale_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_suspended"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_suspended` (
    `sale_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `customer_id` INTEGER(10),
    `employee_id` INTEGER(10) NOT NULL DEFAULT 0,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `invoice_number` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sale_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `payment_type` VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`sale_id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `invoice_number` ON `kpos_sales_suspended` (`invoice_number`);

CREATE INDEX `customer_id` ON `kpos_sales_suspended` (`customer_id`);

CREATE INDEX `employee_id` ON `kpos_sales_suspended` (`employee_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_suspended_items"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_suspended_items` (
    `sale_id` INTEGER(10) NOT NULL DEFAULT 0,
    `item_id` INTEGER(10) NOT NULL DEFAULT 0,
    `description` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `serialnumber` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `line` INTEGER(3) NOT NULL DEFAULT 0,
    `quantity_purchased` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_cost_price` DECIMAL(15,2) NOT NULL,
    `item_unit_price` DECIMAL(15,2) NOT NULL,
    `discount_percent` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `item_location` INTEGER(11) NOT NULL,
    PRIMARY KEY (`sale_id`, `item_id`, `line`)
)
ENGINE = INNODB;

CREATE INDEX `sale_id` ON `kpos_sales_suspended_items` (`sale_id`);

CREATE INDEX `item_id` ON `kpos_sales_suspended_items` (`item_id`);

CREATE INDEX `ospos_sales_suspended_items_ibfk_3` ON `kpos_sales_suspended_items` (`item_location`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_suspended_items_taxes"                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_suspended_items_taxes` (
    `sale_id` INTEGER(10) NOT NULL,
    `item_id` INTEGER(10) NOT NULL,
    `line` INTEGER(3) NOT NULL DEFAULT 0,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `percent` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`sale_id`, `item_id`, `line`, `name`, `percent`)
)
ENGINE = INNODB;

CREATE INDEX `item_id` ON `kpos_sales_suspended_items_taxes` (`item_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_sales_suspended_payments"                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_sales_suspended_payments` (
    `sale_id` INTEGER(10) NOT NULL,
    `payment_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_amount` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`sale_id`, `payment_type`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "kpos_grants"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_grants` (
    `permission_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_id` INTEGER(10) NOT NULL,
    PRIMARY KEY (`permission_id`, `person_id`)
)
ENGINE = INNODB;

CREATE INDEX `ospos_grants_ibfk_2` ON `kpos_grants` (`person_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_inventory"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_inventory` (
    `trans_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `trans_items` INTEGER(11) NOT NULL DEFAULT 0,
    `trans_user` INTEGER(11) NOT NULL DEFAULT 0,
    `trans_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `trans_comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `trans_location` INTEGER(11) NOT NULL,
    `trans_inventory` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`trans_id`)
)
ENGINE = INNODB;

CREATE INDEX `trans_items` ON `kpos_inventory` (`trans_items`);

CREATE INDEX `trans_user` ON `kpos_inventory` (`trans_user`);

CREATE INDEX `trans_location` ON `kpos_inventory` (`trans_location`);

# ---------------------------------------------------------------------- #
# Add table "kpos_item_kit_items"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_item_kit_items` (
    `item_kit_id` INTEGER(11) NOT NULL,
    `item_id` INTEGER(11) NOT NULL,
    `quantity` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`item_kit_id`, `item_id`, `quantity`)
)
ENGINE = INNODB;

CREATE INDEX `ospos_item_kit_items_ibfk_2` ON `kpos_item_kit_items` (`item_id`);

# ---------------------------------------------------------------------- #
# Add table "kpos_item_quantities"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `kpos_item_quantities` (
    `item_id` INTEGER(11) NOT NULL,
    `location_id` INTEGER(11) NOT NULL,
    `quantity` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`item_id`, `location_id`)
)
ENGINE = INNODB;

CREATE INDEX `item_id` ON `kpos_item_quantities` (`item_id`);

CREATE INDEX `location_id` ON `kpos_item_quantities` (`location_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `kpos_customers` ADD CONSTRAINT `kpos_customers_ibfk_1` 
    FOREIGN KEY (`person_id`) REFERENCES `kpos_people` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_employees` ADD CONSTRAINT `kpos_employees_ibfk_1` 
    FOREIGN KEY (`person_id`) REFERENCES `kpos_people` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_giftcards` ADD CONSTRAINT `kpos_giftcards_ibfk_1` 
    FOREIGN KEY (`person_id`) REFERENCES `kpos_people` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_grants` ADD CONSTRAINT `kpos_grants_ibfk_1` 
    FOREIGN KEY (`permission_id`) REFERENCES `kpos_permissions` (`permission_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_grants` ADD CONSTRAINT `kpos_grants_ibfk_2` 
    FOREIGN KEY (`person_id`) REFERENCES `kpos_employees` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_inventory` ADD CONSTRAINT `kpos_inventory_ibfk_1` 
    FOREIGN KEY (`trans_items`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_inventory` ADD CONSTRAINT `kpos_inventory_ibfk_2` 
    FOREIGN KEY (`trans_user`) REFERENCES `kpos_employees` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_item_kit_items` ADD CONSTRAINT `kpos_item_kit_items_ibfk_1` 
    FOREIGN KEY (`item_kit_id`) REFERENCES `kpos_item_kits` (`item_kit_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `kpos_item_kit_items` ADD CONSTRAINT `kpos_item_kit_items_ibfk_2` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `kpos_item_quantities` ADD CONSTRAINT `kpos_item_quantities_ibfk_1` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_item_quantities` ADD CONSTRAINT `kpos_item_quantities_ibfk_2` 
    FOREIGN KEY (`location_id`) REFERENCES `kpos_stock_locations` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_items` ADD CONSTRAINT `kpos_items_ibfk_1` 
    FOREIGN KEY (`supplier_id`) REFERENCES `kpos_suppliers` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_items_taxes` ADD CONSTRAINT `kpos_items_taxes_ibfk_1` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `kpos_permissions` ADD CONSTRAINT `kpos_permissions_ibfk_1` 
    FOREIGN KEY (`module_id`) REFERENCES `kpos_modules` (`module_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `kpos_permissions` ADD CONSTRAINT `kpos_permissions_ibfk_2` 
    FOREIGN KEY (`location_id`) REFERENCES `kpos_stock_locations` (`location_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `kpos_receivings` ADD CONSTRAINT `kpos_receivings_ibfk_1` 
    FOREIGN KEY (`employee_id`) REFERENCES `kpos_employees` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_receivings` ADD CONSTRAINT `kpos_receivings_ibfk_2` 
    FOREIGN KEY (`supplier_id`) REFERENCES `kpos_suppliers` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_receivings_items` ADD CONSTRAINT `kpos_receivings_items_ibfk_1` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_receivings_items` ADD CONSTRAINT `kpos_receivings_items_ibfk_2` 
    FOREIGN KEY (`receiving_id`) REFERENCES `kpos_receivings` (`receiving_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales` ADD CONSTRAINT `kpos_sales_ibfk_1` 
    FOREIGN KEY (`employee_id`) REFERENCES `kpos_employees` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales` ADD CONSTRAINT `kpos_sales_ibfk_2` 
    FOREIGN KEY (`customer_id`) REFERENCES `kpos_customers` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_items` ADD CONSTRAINT `kpos_sales_items_ibfk_1` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_items` ADD CONSTRAINT `kpos_sales_items_ibfk_2` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_items` ADD CONSTRAINT `kpos_sales_items_ibfk_3` 
    FOREIGN KEY (`item_location`) REFERENCES `kpos_stock_locations` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_items_taxes` ADD CONSTRAINT `kpos_sales_items_taxes_ibfk_1` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales_items` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_items_taxes` ADD CONSTRAINT `kpos_sales_items_taxes_ibfk_2` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_payments` ADD CONSTRAINT `kpos_sales_payments_ibfk_1` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended` ADD CONSTRAINT `kpos_sales_suspended_ibfk_1` 
    FOREIGN KEY (`employee_id`) REFERENCES `kpos_employees` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended` ADD CONSTRAINT `kpos_sales_suspended_ibfk_2` 
    FOREIGN KEY (`customer_id`) REFERENCES `kpos_customers` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_items` ADD CONSTRAINT `kpos_sales_suspended_items_ibfk_1` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_items` ADD CONSTRAINT `kpos_sales_suspended_items_ibfk_2` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales_suspended` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_items` ADD CONSTRAINT `kpos_sales_suspended_items_ibfk_3` 
    FOREIGN KEY (`item_location`) REFERENCES `kpos_stock_locations` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_items_taxes` ADD CONSTRAINT `kpos_sales_suspended_items_taxes_ibfk_1` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales_suspended_items` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_items_taxes` ADD CONSTRAINT `kpos_sales_suspended_items_taxes_ibfk_2` 
    FOREIGN KEY (`item_id`) REFERENCES `kpos_items` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_sales_suspended_payments` ADD CONSTRAINT `kpos_sales_suspended_payments_ibfk_1` 
    FOREIGN KEY (`sale_id`) REFERENCES `kpos_sales_suspended` (`sale_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `kpos_suppliers` ADD CONSTRAINT `kpos_suppliers_ibfk_1` 
    FOREIGN KEY (`person_id`) REFERENCES `kpos_people` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
