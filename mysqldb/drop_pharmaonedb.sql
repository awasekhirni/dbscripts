# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          pharmaonedb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:20                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `customer_ledger` DROP FOREIGN KEY `customer_information_customer_ledger`;

ALTER TABLE `invoice` DROP FOREIGN KEY `customer_information_invoice`;

ALTER TABLE `person_ledger` DROP FOREIGN KEY `person_information_person_ledger`;

ALTER TABLE `personal_loan` DROP FOREIGN KEY `person_information_personal_loan`;

ALTER TABLE `pesonal_loan_information` DROP FOREIGN KEY `person_information_pesonal_loan_information`;

ALTER TABLE `role_permission` DROP FOREIGN KEY `module_role_permission`;

ALTER TABLE `service_invoice_details` DROP FOREIGN KEY `product_service_service_invoice_details`;

ALTER TABLE `sms_settings` DROP FOREIGN KEY `invoice_sms_settings`;

# ---------------------------------------------------------------------- #
# Drop table "web_setting"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `web_setting` MODIFY `setting_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `web_setting` ALTER COLUMN `captcha` DROP DEFAULT;

ALTER TABLE `web_setting` ALTER COLUMN `discount_type` DROP DEFAULT;

ALTER TABLE `web_setting` DROP PRIMARY KEY;

DROP TABLE `web_setting`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `user_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "user_login"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user_login` MODIFY `user_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `user_login` DROP PRIMARY KEY;

DROP TABLE `user_login`;

# ---------------------------------------------------------------------- #
# Drop table "unit"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `unit` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `unit` DROP PRIMARY KEY;

DROP TABLE `unit`;

# ---------------------------------------------------------------------- #
# Drop table "tax_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tax_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tax_settings` ALTER COLUMN `is_show` DROP DEFAULT;

ALTER TABLE `tax_settings` DROP PRIMARY KEY;

DROP TABLE `tax_settings`;

# ---------------------------------------------------------------------- #
# Drop table "tax_information"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tax_information` DROP PRIMARY KEY;

DROP TABLE `tax_information`;

# ---------------------------------------------------------------------- #
# Drop table "tax_collection"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tax_collection` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tax_collection` DROP PRIMARY KEY;

DROP TABLE `tax_collection`;

# ---------------------------------------------------------------------- #
# Drop table "synchronizer_setting"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `synchronizer_setting` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `synchronizer_setting` DROP PRIMARY KEY;

DROP TABLE `synchronizer_setting`;

# ---------------------------------------------------------------------- #
# Drop table "supplier_ledger"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `supplier_ledger` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `supplier_ledger` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `supplier_ledger` DROP PRIMARY KEY;

DROP TABLE `supplier_ledger`;

# ---------------------------------------------------------------------- #
# Drop table "supplier_information"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `supplier_information` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `supplier_information` DROP PRIMARY KEY;

DROP TABLE `supplier_information`;

# ---------------------------------------------------------------------- #
# Drop table "sub_module"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sub_module` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sub_module` DROP PRIMARY KEY;

DROP TABLE `sub_module`;

# ---------------------------------------------------------------------- #
# Drop table "stock_fixed_asset"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stock_fixed_asset` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `stock_fixed_asset` DROP PRIMARY KEY;

DROP TABLE `stock_fixed_asset`;

# ---------------------------------------------------------------------- #
# Drop table "sms_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sms_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sms_settings` ALTER COLUMN `isinvoice` DROP DEFAULT;

ALTER TABLE `sms_settings` ALTER COLUMN `ispurchase` DROP DEFAULT;

ALTER TABLE `sms_settings` ALTER COLUMN `isservice` DROP DEFAULT;

ALTER TABLE `sms_settings` ALTER COLUMN `ispayment` DROP DEFAULT;

ALTER TABLE `sms_settings` ALTER COLUMN `isreceive` DROP DEFAULT;

ALTER TABLE `sms_settings` DROP PRIMARY KEY;

DROP TABLE `sms_settings`;

# ---------------------------------------------------------------------- #
# Drop table "service_invoice_details"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `service_invoice_details` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `service_invoice_details` ALTER COLUMN `qty` DROP DEFAULT;

ALTER TABLE `service_invoice_details` ALTER COLUMN `charge` DROP DEFAULT;

ALTER TABLE `service_invoice_details` ALTER COLUMN `discount` DROP DEFAULT;

ALTER TABLE `service_invoice_details` ALTER COLUMN `discount_amount` DROP DEFAULT;

ALTER TABLE `service_invoice_details` ALTER COLUMN `total` DROP DEFAULT;

ALTER TABLE `service_invoice_details` DROP PRIMARY KEY;

DROP TABLE `service_invoice_details`;

# ---------------------------------------------------------------------- #
# Drop table "service_invoice"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `service_invoice` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `service_invoice` ALTER COLUMN `total_amount` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `total_discount` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `invoice_discount` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `paid_amount` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `due_amount` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `shipping_cost` DROP DEFAULT;

ALTER TABLE `service_invoice` ALTER COLUMN `previous` DROP DEFAULT;

ALTER TABLE `service_invoice` DROP PRIMARY KEY;

DROP TABLE `service_invoice`;

# ---------------------------------------------------------------------- #
# Drop table "sec_userrole"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `sec_userrole`;

# ---------------------------------------------------------------------- #
# Drop table "sec_role"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sec_role` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sec_role` DROP PRIMARY KEY;

DROP TABLE `sec_role`;

# ---------------------------------------------------------------------- #
# Drop table "salary_type"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `salary_type` MODIFY `salary_type_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `salary_type` DROP PRIMARY KEY;

DROP TABLE `salary_type`;

# ---------------------------------------------------------------------- #
# Drop table "salary_sheet_generate"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `salary_sheet_generate` MODIFY `ssg_id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `salary_sheet_generate` DROP PRIMARY KEY;

DROP TABLE `salary_sheet_generate`;

# ---------------------------------------------------------------------- #
# Drop table "role_permission"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `role_permission` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `role_permission` DROP PRIMARY KEY;

DROP TABLE `role_permission`;

# ---------------------------------------------------------------------- #
# Drop table "product_type"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_type` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_type` DROP PRIMARY KEY;

DROP TABLE `product_type`;

# ---------------------------------------------------------------------- #
# Drop table "product_service"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_service` MODIFY `service_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_service` ALTER COLUMN `charge` DROP DEFAULT;

ALTER TABLE `product_service` DROP PRIMARY KEY;

DROP TABLE `product_service`;

# ---------------------------------------------------------------------- #
# Drop table "product_return"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_return` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_return` ALTER COLUMN `byy_qty` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `ret_qty` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `product_rate` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `deduction` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `total_deduct` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `total_ret_amount` DROP DEFAULT;

ALTER TABLE `product_return` ALTER COLUMN `net_total_amount` DROP DEFAULT;

ALTER TABLE `product_return` DROP PRIMARY KEY;

DROP TABLE `product_return`;

# ---------------------------------------------------------------------- #
# Drop table "product_purchase_details"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_purchase_details` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_purchase_details` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `product_purchase_details` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `product_purchase_details` ALTER COLUMN `total_amount` DROP DEFAULT;

ALTER TABLE `product_purchase_details` ALTER COLUMN `discount` DROP DEFAULT;

ALTER TABLE `product_purchase_details` DROP PRIMARY KEY;

DROP TABLE `product_purchase_details`;

# ---------------------------------------------------------------------- #
# Drop table "product_purchase"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_purchase` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_purchase` ALTER COLUMN `grand_total_amount` DROP DEFAULT;

ALTER TABLE `product_purchase` ALTER COLUMN `total_discount` DROP DEFAULT;

ALTER TABLE `product_purchase` DROP PRIMARY KEY;

DROP TABLE `product_purchase`;

# ---------------------------------------------------------------------- #
# Drop table "product_information"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_information` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_information` DROP PRIMARY KEY;

DROP TABLE `product_information`;

# ---------------------------------------------------------------------- #
# Drop table "product_category"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `product_category` MODIFY `category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `product_category` DROP PRIMARY KEY;

DROP TABLE `product_category`;

# ---------------------------------------------------------------------- #
# Drop table "pesonal_loan_information"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pesonal_loan_information` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `pesonal_loan_information` DROP PRIMARY KEY;

DROP TABLE `pesonal_loan_information`;

# ---------------------------------------------------------------------- #
# Drop table "personal_loan"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `personal_loan` MODIFY `per_loan_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `personal_loan` DROP PRIMARY KEY;

DROP TABLE `personal_loan`;

# ---------------------------------------------------------------------- #
# Drop table "person_ledger"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `person_ledger` ALTER COLUMN `debit` DROP DEFAULT;

ALTER TABLE `person_ledger` ALTER COLUMN `credit` DROP DEFAULT;

DROP TABLE `person_ledger`;

# ---------------------------------------------------------------------- #
# Drop table "person_information"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `person_information` DROP PRIMARY KEY;

DROP TABLE `person_information`;

# ---------------------------------------------------------------------- #
# Drop table "payroll_tax_setup"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payroll_tax_setup` MODIFY `tax_setup_id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `payroll_tax_setup` ALTER COLUMN `start_amount` DROP DEFAULT;

ALTER TABLE `payroll_tax_setup` ALTER COLUMN `end_amount` DROP DEFAULT;

ALTER TABLE `payroll_tax_setup` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `payroll_tax_setup` DROP PRIMARY KEY;

DROP TABLE `payroll_tax_setup`;

# ---------------------------------------------------------------------- #
# Drop table "module"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `module` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `module` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `module` DROP PRIMARY KEY;

DROP TABLE `module`;

# ---------------------------------------------------------------------- #
# Drop table "manufacturer_ledger"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `manufacturer_ledger` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `manufacturer_ledger` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `manufacturer_ledger` DROP PRIMARY KEY;

DROP TABLE `manufacturer_ledger`;

# ---------------------------------------------------------------------- #
# Drop table "manufacturer_information"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `manufacturer_information` MODIFY `manufacturer_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `manufacturer_information` DROP PRIMARY KEY;

DROP TABLE `manufacturer_information`;

# ---------------------------------------------------------------------- #
# Drop table "language"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `language` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `language` DROP PRIMARY KEY;

DROP TABLE `language`;

# ---------------------------------------------------------------------- #
# Drop table "invoice_details"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoice_details` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoice_details` DROP PRIMARY KEY;

DROP TABLE `invoice_details`;

# ---------------------------------------------------------------------- #
# Drop table "invoice"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoice` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoice` ALTER COLUMN `total_amount` DROP DEFAULT;

ALTER TABLE `invoice` ALTER COLUMN `total_discount` DROP DEFAULT;

ALTER TABLE `invoice` ALTER COLUMN `invoice_discount` DROP DEFAULT;

ALTER TABLE `invoice` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `invoice` ALTER COLUMN `prevous_due` DROP DEFAULT;

ALTER TABLE `invoice` ALTER COLUMN `payment_type` DROP DEFAULT;

ALTER TABLE `invoice` DROP PRIMARY KEY;

DROP TABLE `invoice`;

# ---------------------------------------------------------------------- #
# Drop table "fixed_assets"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fixed_assets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `fixed_assets` DROP PRIMARY KEY;

DROP TABLE `fixed_assets`;

# ---------------------------------------------------------------------- #
# Drop table "expense_item"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense_item` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expense_item` DROP PRIMARY KEY;

DROP TABLE `expense_item`;

# ---------------------------------------------------------------------- #
# Drop table "expense"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expense` DROP PRIMARY KEY;

DROP TABLE `expense`;

# ---------------------------------------------------------------------- #
# Drop table "employee_salary_setup"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee_salary_setup` MODIFY `e_s_s_id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `employee_salary_setup` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `employee_salary_setup` DROP PRIMARY KEY;

DROP TABLE `employee_salary_setup`;

# ---------------------------------------------------------------------- #
# Drop table "employee_salary_payment"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee_salary_payment` MODIFY `emp_sal_pay_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employee_salary_payment` ALTER COLUMN `total_salary` DROP DEFAULT;

ALTER TABLE `employee_salary_payment` DROP PRIMARY KEY;

DROP TABLE `employee_salary_payment`;

# ---------------------------------------------------------------------- #
# Drop table "employee_history"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee_history` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employee_history` DROP PRIMARY KEY;

DROP TABLE `employee_history`;

# ---------------------------------------------------------------------- #
# Drop table "designation"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `designation` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `designation` DROP PRIMARY KEY;

DROP TABLE `designation`;

# ---------------------------------------------------------------------- #
# Drop table "daily_closing"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `daily_closing` DROP PRIMARY KEY;

DROP TABLE `daily_closing`;

# ---------------------------------------------------------------------- #
# Drop table "customer_ledger"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_ledger` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `customer_ledger` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `customer_ledger` DROP PRIMARY KEY;

DROP TABLE `customer_ledger`;

# ---------------------------------------------------------------------- #
# Drop table "customer_information"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer_information` MODIFY `customer_id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `customer_information` DROP PRIMARY KEY;

DROP TABLE `customer_information`;

# ---------------------------------------------------------------------- #
# Drop table "currency_tbl"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `currency_tbl` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `currency_tbl` DROP PRIMARY KEY;

DROP TABLE `currency_tbl`;

# ---------------------------------------------------------------------- #
# Drop table "company_information"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `company_information` DROP PRIMARY KEY;

DROP TABLE `company_information`;

# ---------------------------------------------------------------------- #
# Drop table "ci_sessions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ci_sessions` ALTER COLUMN `timestamp` DROP DEFAULT;

DROP TABLE `ci_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "bank_summary"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_summary` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bank_summary` ALTER COLUMN `dr` DROP DEFAULT;

ALTER TABLE `bank_summary` ALTER COLUMN `cr` DROP DEFAULT;

ALTER TABLE `bank_summary` ALTER COLUMN `ammount` DROP DEFAULT;

ALTER TABLE `bank_summary` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `bank_summary` DROP PRIMARY KEY;

DROP TABLE `bank_summary`;

# ---------------------------------------------------------------------- #
# Drop table "bank_add"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_add` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bank_add` DROP PRIMARY KEY;

DROP TABLE `bank_add`;

# ---------------------------------------------------------------------- #
# Drop table "attendance"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attendance` MODIFY `att_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `attendance` DROP PRIMARY KEY;

DROP TABLE `attendance`;

# ---------------------------------------------------------------------- #
# Drop table "asset_purchase"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `asset_purchase` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `asset_purchase` DROP PRIMARY KEY;

DROP TABLE `asset_purchase`;

# ---------------------------------------------------------------------- #
# Drop table "accesslog"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `accesslog`;

# ---------------------------------------------------------------------- #
# Drop table "acc_transaction"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `acc_transaction`;

# ---------------------------------------------------------------------- #
# Drop table "acc_coa"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `acc_coa` DROP PRIMARY KEY;

DROP TABLE `acc_coa`;
