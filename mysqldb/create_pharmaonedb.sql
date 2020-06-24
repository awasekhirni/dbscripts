# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          pharmaonedb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:20                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "acc_coa"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `acc_coa` (
    `HeadCode` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `HeadName` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `PHeadName` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `HeadLevel` INTEGER(11) NOT NULL,
    `IsActive` TINYINT(1) NOT NULL,
    `IsTransaction` TINYINT(1) NOT NULL,
    `IsGL` TINYINT(1) NOT NULL,
    `HeadType` CHAR(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `IsBudget` TINYINT(1) NOT NULL,
    `IsDepreciation` TINYINT(1) NOT NULL,
    `DepreciationRate` DECIMAL(18,2) NOT NULL,
    `CreateBy` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `CreateDate` DATETIME NOT NULL,
    `UpdateBy` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `UpdateDate` DATETIME NOT NULL,
    PRIMARY KEY (`HeadName`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "acc_transaction"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `acc_transaction` (
    `ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `VNo` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Vtype` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `VDate` DATE,
    `COAID` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `Narration` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `Debit` DECIMAL(18,2),
    `Credit` DECIMAL(18,2),
    `IsPosted` CHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `CreateBy` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `CreateDate` DATETIME,
    `UpdateBy` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `UpdateDate` DATETIME,
    `IsAppove` CHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `ID` ON `acc_transaction` (`ID`);

# ---------------------------------------------------------------------- #
# Add table "accesslog"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `accesslog` (
    `sl_no` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `action_page` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `action_done` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `remarks` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `user_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `entry_date` DATETIME
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `SerialNo` ON `accesslog` (`sl_no`);

# ---------------------------------------------------------------------- #
# Add table "asset_purchase"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `asset_purchase` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `p_date` DATE NOT NULL,
    `supplier_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `grand_total` FLOAT NOT NULL,
    `payment_type` TINYINT(4),
    `bank_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "attendance"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `attendance` (
    `att_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `employee_id` INTEGER(11) NOT NULL,
    `date` DATE NOT NULL,
    `sign_in` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sign_out` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `staytime` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`att_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "bank_add"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `bank_add` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `bank_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bank_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ac_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ac_number` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `branch` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signature_pic` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "bank_summary"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `bank_summary` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `bank_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deposite_id` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ac_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dr` DECIMAL(12,2) DEFAULT 0.00,
    `cr` DECIMAL(10,2) DEFAULT 0.00,
    `ammount` DECIMAL(12,2) DEFAULT 0.00,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ci_sessions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ci_sessions` (
    `id` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `ci_sessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "company_information"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `company_information` (
    `company_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `company_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mobile` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `website` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`company_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currency_tbl"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `currency_tbl` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `currency_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `icon` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customer_information"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_information` (
    `customer_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `customer_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `customer_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customer_mobile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customer_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`customer_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "customer_ledger"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer_ledger` (
    `transaction_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customer_id` BIGINT(20) NOT NULL,
    `invoice_no` BIGINT(20),
    `receipt_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(12,2) DEFAULT 0.00,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cheque_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `d_c` VARCHAR(1) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `receipt_no` ON `customer_ledger` (`receipt_no`);

CREATE INDEX `receipt_no_2` ON `customer_ledger` (`receipt_no`);

CREATE INDEX `receipt_no_3` ON `customer_ledger` (`receipt_no`);

CREATE INDEX `receipt_no_4` ON `customer_ledger` (`receipt_no`);

# ---------------------------------------------------------------------- #
# Add table "daily_closing"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `daily_closing` (
    `closing_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_day_closing` FLOAT NOT NULL,
    `cash_in` FLOAT NOT NULL,
    `cash_out` FLOAT NOT NULL,
    `date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` FLOAT NOT NULL,
    `adjustment` FLOAT NOT NULL,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`closing_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "designation"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `designation` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `designation` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee_history"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee_history` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `designation` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `rate_type` INTEGER(11) NOT NULL,
    `hrate` FLOAT NOT NULL,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `blood_group` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address_line_1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address_line_2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee_salary_payment"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee_salary_payment` (
    `emp_sal_pay_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `generate_id` INTEGER(11) NOT NULL,
    `employee_id` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `total_salary` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `total_working_minutes` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `working_period` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_due` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_date` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `paid_by` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `salary_month` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`emp_sal_pay_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee_salary_setup"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee_salary_setup` (
    `e_s_s_id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `employee_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `sal_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `salary_type_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `create_date` DATE,
    `update_date` DATETIME,
    `update_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `gross_salary` FLOAT NOT NULL,
    PRIMARY KEY (`e_s_s_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `voucher_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` FLOAT NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense_item"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense_item` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `expense_item_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fixed_assets"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `fixed_assets` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `item_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `item_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `price` FLOAT NOT NULL,
    `insert_date` DATE NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoice_id` BIGINT(20),
    `customer_id` BIGINT(20),
    `date` DATE,
    `total_amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `invoice` BIGINT(20),
    `total_discount` DECIMAL(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
    `invoice_discount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `total_tax` DECIMAL(10,2) DEFAULT 0.00,
    `prevous_due` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `sales_by` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoice_details` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(2) NOT NULL,
    `payment_type` INTEGER(11) NOT NULL DEFAULT 1,
    `bank_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "invoice_details"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice_details` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoice_details_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `invoice_id` BIGINT(20) NOT NULL,
    `product_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `batch_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cartoon` FLOAT,
    `quantity` FLOAT NOT NULL,
    `rate` DECIMAL(12,2),
    `manufacturer_rate` DECIMAL(10,2),
    `total_price` DECIMAL(12,2),
    `discount` DECIMAL(12),
    `tax` DECIMAL(10,2),
    `paid_amount` DECIMAL(12),
    `due_amount` DECIMAL(10,2),
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "language"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `language` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `phrase` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `english` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bangla` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "manufacturer_information"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `manufacturer_information` (
    `manufacturer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `manufacturer_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mobile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `details` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`manufacturer_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "manufacturer_ledger"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `manufacturer_ledger` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `transaction_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `manufacturer_id` BIGINT(20) NOT NULL,
    `chalan_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deposit_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cheque_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    `d_c` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `receipt_no` ON `manufacturer_ledger` (`deposit_no`);

CREATE INDEX `receipt_no_2` ON `manufacturer_ledger` (`deposit_no`);

CREATE INDEX `receipt_no_3` ON `manufacturer_ledger` (`deposit_no`);

CREATE INDEX `receipt_no_4` ON `manufacturer_ledger` (`deposit_no`);

# ---------------------------------------------------------------------- #
# Add table "module"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `module` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `directory` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payroll_tax_setup"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `payroll_tax_setup` (
    `tax_setup_id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `start_amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `end_amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `rate` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`tax_setup_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "person_information"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `person_information` (
    `person_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_address` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`person_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "person_ledger"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `person_ledger` (
    `transaction_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `debit` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `credit` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `details` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL COMMENT '1=no paid,2=paid',
    `id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "personal_loan"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `personal_loan` (
    `per_loan_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `transaction_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `debit` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `credit` FLOAT NOT NULL,
    `date` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `details` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL COMMENT '1=no paid,2=paid',
    PRIMARY KEY (`per_loan_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pesonal_loan_information"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `pesonal_loan_information` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `person_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_phone` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `person_address` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_category"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_category` (
    `category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_information"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_information` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `product_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category_id` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `product_name` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `generic_name` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `strength` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `box_size` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `product_location` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `price` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `tax` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_model` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `manufacturer_id` BIGINT(20) NOT NULL,
    `manufacturer_price` DECIMAL(10,2),
    `unit` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_details` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `image` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `tax0` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `tax1` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `tax2` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_purchase"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_purchase` (
    `chalan_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `manufacturer_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `grand_total_amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `total_discount` DECIMAL(10,2) DEFAULT 0.00,
    `purchase_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `purchase_details` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `purchase_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `bank_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_type` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "product_purchase_details"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_purchase_details` (
    `purchase_detail_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `purchase_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `product_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `quantity` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `rate` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total_amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `discount` DECIMAL(10,2) DEFAULT 0.00,
    `batch_id` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `expeire_date` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "product_return"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_return` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `return_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `product_id` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `invoice_id` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `purchase_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `date_purchase` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_return` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `byy_qty` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `ret_qty` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `customer_id` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `manufacturer_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `product_rate` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `deduction` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total_deduct` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `total_tax` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `total_ret_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `net_total_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `reason` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `usablity` INTEGER(5) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_service"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_service` (
    `service_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `service_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `charge` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `tax0` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`service_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_type"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_type` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `type_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "role_permission"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `role_permission` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fk_module_id` INTEGER(11) NOT NULL,
    `role_id` INTEGER(11) NOT NULL,
    `create` TINYINT(1),
    `read` TINYINT(1),
    `update` TINYINT(1),
    `delete` TINYINT(1),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `fk_module_id` ON `role_permission` (`fk_module_id`);

CREATE INDEX `fk_user_id` ON `role_permission` (`role_id`);

# ---------------------------------------------------------------------- #
# Add table "salary_sheet_generate"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `salary_sheet_generate` (
    `ssg_id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `gdate` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `start_date` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `end_date` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `generate_by` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`ssg_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "salary_type"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `salary_type` (
    `salary_type_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sal_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `salary_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`salary_type_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sec_role"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_role` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sec_userrole"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_userrole` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `roleid` INTEGER(11) NOT NULL,
    `createby` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `createdate` DATETIME
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `ID` ON `sec_userrole` (`id`);

# ---------------------------------------------------------------------- #
# Add table "service_invoice"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `service_invoice` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `voucher_no` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATE NOT NULL,
    `employee_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customer_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `total_amount` DECIMAL(20,2) NOT NULL DEFAULT 0.00,
    `total_discount` DECIMAL(20,2) NOT NULL DEFAULT 0.00,
    `invoice_discount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total_tax` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `paid_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `due_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `shipping_cost` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `previous` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `details` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "service_invoice_details"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `service_invoice_details` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER(11) NOT NULL,
    `service_inv_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `qty` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `charge` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `discount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `discount_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sms_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sms_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `url` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sender_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `api_key` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `isinvoice` INTEGER(11) NOT NULL DEFAULT 0,
    `ispurchase` INTEGER(11) NOT NULL DEFAULT 0,
    `isservice` INTEGER(11) NOT NULL DEFAULT 0,
    `ispayment` INTEGER(11) NOT NULL DEFAULT 0,
    `isreceive` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "stock_fixed_asset"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `stock_fixed_asset` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `purchase_id` INTEGER(11) NOT NULL,
    `item_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `qty` FLOAT NOT NULL,
    `price` FLOAT NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sub_module"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `sub_module` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `mid` INTEGER(11) NOT NULL,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `image` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `directory` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "supplier_information"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `supplier_information` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `supplier_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `supplier_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mobile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `details` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "supplier_ledger"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `supplier_ledger` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `transaction_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `supplier_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `chalan_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deposit_no` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    `description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cheque_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(2) NOT NULL,
    `d_c` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "synchronizer_setting"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `synchronizer_setting` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `hostname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `port` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `debug` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `project_root` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tax_collection"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tax_collection` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `customer_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `relation_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tax0` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tax_information"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tax_information` (
    `tax_id` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tax` FLOAT,
    `status` INTEGER(11),
    PRIMARY KEY (`tax_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tax_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tax_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `default_value` FLOAT NOT NULL,
    `tax_name` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `nt` INTEGER(11) NOT NULL,
    `reg_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_show` TINYINT(4) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "unit"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `unit` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `unit_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(4) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_login"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_login` (
    `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_type` INTEGER(2),
    `security_code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`user_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `gender` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_of_birth` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(2) NOT NULL,
    PRIMARY KEY (`user_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "web_setting"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `web_setting` (
    `setting_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoice_logo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `favicon` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `timezone` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_position` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `footer_text` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rtr` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `captcha` INTEGER(11) DEFAULT 1 COMMENT '0=active,1=inactive',
    `site_key` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `secret_key` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `discount_type` INTEGER(11) DEFAULT 1,
    PRIMARY KEY (`setting_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `customer_ledger` ADD CONSTRAINT `customer_information_customer_ledger` 
    FOREIGN KEY (`customer_id`) REFERENCES `customer_information` (`customer_id`);

ALTER TABLE `invoice` ADD CONSTRAINT `customer_information_invoice` 
    FOREIGN KEY (`customer_id`) REFERENCES `customer_information` (`customer_id`);

ALTER TABLE `person_ledger` ADD CONSTRAINT `person_information_person_ledger` 
    FOREIGN KEY (`person_id`) REFERENCES `person_information` (`person_id`);

ALTER TABLE `personal_loan` ADD CONSTRAINT `person_information_personal_loan` 
    FOREIGN KEY (`person_id`) REFERENCES `person_information` (`person_id`);

ALTER TABLE `pesonal_loan_information` ADD CONSTRAINT `person_information_pesonal_loan_information` 
    FOREIGN KEY (`person_id`) REFERENCES `person_information` (`person_id`);

ALTER TABLE `role_permission` ADD CONSTRAINT `module_role_permission` 
    FOREIGN KEY (`fk_module_id`) REFERENCES `module` (`id`);

ALTER TABLE `service_invoice_details` ADD CONSTRAINT `product_service_service_invoice_details` 
    FOREIGN KEY (`service_id`) REFERENCES `product_service` (`service_id`);

ALTER TABLE `sms_settings` ADD CONSTRAINT `invoice_sms_settings` 
    FOREIGN KEY (`isinvoice`) REFERENCES `invoice` (`id`);
