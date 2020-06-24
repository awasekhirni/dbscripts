# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          billingdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 18:44                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "sys_users"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sys_users` ALTER COLUMN `username` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `fullname` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `user_type` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `otp` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `pin_enabled` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `api` DROP DEFAULT;

ALTER TABLE `sys_users` ALTER COLUMN `roleid` DROP DEFAULT;

ALTER TABLE `sys_users` DROP PRIMARY KEY;

DROP TABLE `sys_users`;

# ---------------------------------------------------------------------- #
# Drop table "sys_units"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_units` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_units` ALTER COLUMN `conversion_factor` DROP DEFAULT;

ALTER TABLE `sys_units` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_units` DROP PRIMARY KEY;

DROP TABLE `sys_units`;

# ---------------------------------------------------------------------- #
# Drop table "sys_transactions"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_transactions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_transactions` ALTER COLUMN `payerid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `payeeid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `dr` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `cr` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `bal` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `currency_rate` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `base_amount` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `vid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `updated_by` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `pid` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_transactions` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `sys_transactions` DROP PRIMARY KEY;

DROP TABLE `sys_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "sys_tax"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_tax` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_tax` ALTER COLUMN `bal` DROP DEFAULT;

ALTER TABLE `sys_tax` DROP PRIMARY KEY;

DROP TABLE `sys_tax`;

# ---------------------------------------------------------------------- #
# Drop table "sys_tasks"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_tasks` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_tasks` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `tid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `eid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `pid` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `did` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `finished` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `parent` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `is_public` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `billable` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `billed` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `hourly_rate` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `visible_to_client` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `notification` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_tasks` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_tasks` DROP PRIMARY KEY;

DROP TABLE `sys_tasks`;

# ---------------------------------------------------------------------- #
# Drop table "sys_tags"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_tags` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_tags` DROP PRIMARY KEY;

DROP TABLE `sys_tags`;

# ---------------------------------------------------------------------- #
# Drop table "sys_staffpermissions"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_staffpermissions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_staffpermissions` ALTER COLUMN `can_view` DROP DEFAULT;

ALTER TABLE `sys_staffpermissions` ALTER COLUMN `can_edit` DROP DEFAULT;

ALTER TABLE `sys_staffpermissions` ALTER COLUMN `can_create` DROP DEFAULT;

ALTER TABLE `sys_staffpermissions` ALTER COLUMN `can_delete` DROP DEFAULT;

ALTER TABLE `sys_staffpermissions` ALTER COLUMN `all_data` DROP DEFAULT;

ALTER TABLE `sys_staffpermissions` DROP PRIMARY KEY;

DROP TABLE `sys_staffpermissions`;

# ---------------------------------------------------------------------- #
# Drop table "sys_schedulelogs"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_schedulelogs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_schedulelogs` DROP PRIMARY KEY;

DROP TABLE `sys_schedulelogs`;

# ---------------------------------------------------------------------- #
# Drop table "sys_schedule"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_schedule` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_schedule` DROP PRIMARY KEY;

DROP TABLE `sys_schedule`;

# ---------------------------------------------------------------------- #
# Drop table "sys_sales"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_sales` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_sales` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_sales` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `sys_sales` DROP PRIMARY KEY;

DROP TABLE `sys_sales`;

# ---------------------------------------------------------------------- #
# Drop table "sys_roles"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_roles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_roles` DROP PRIMARY KEY;

DROP TABLE `sys_roles`;

# ---------------------------------------------------------------------- #
# Drop table "sys_quotes"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_quotes` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_quotes` DROP PRIMARY KEY;

DROP TABLE `sys_quotes`;

# ---------------------------------------------------------------------- #
# Drop table "sys_quoteitems"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_quoteitems` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_quoteitems` DROP PRIMARY KEY;

DROP TABLE `sys_quoteitems`;

# ---------------------------------------------------------------------- #
# Drop table "sys_pmethods"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_pmethods` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_pmethods` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_pmethods` DROP PRIMARY KEY;

DROP TABLE `sys_pmethods`;

# ---------------------------------------------------------------------- #
# Drop table "sys_pl"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_pl` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_pl` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sys_pl` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_pl` ALTER COLUMN `build` DROP DEFAULT;

ALTER TABLE `sys_pl` DROP PRIMARY KEY;

DROP TABLE `sys_pl`;

# ---------------------------------------------------------------------- #
# Drop table "sys_pg"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_pg` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_pg` DROP PRIMARY KEY;

DROP TABLE `sys_pg`;

# ---------------------------------------------------------------------- #
# Drop table "sys_permissions"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_permissions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_permissions` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `sys_permissions` ALTER COLUMN `core` DROP DEFAULT;

ALTER TABLE `sys_permissions` DROP PRIMARY KEY;

DROP TABLE `sys_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "sys_orders"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_orders` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_orders` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `sys_orders` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `sys_orders` ALTER COLUMN `setup_fee` DROP DEFAULT;

ALTER TABLE `sys_orders` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_orders` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_orders` DROP PRIMARY KEY;

DROP TABLE `sys_orders`;

# ---------------------------------------------------------------------- #
# Drop table "sys_logs"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_logs` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_logs` ALTER COLUMN `date` DROP DEFAULT;

ALTER TABLE `sys_logs` DROP PRIMARY KEY;

DROP TABLE `sys_logs`;

# ---------------------------------------------------------------------- #
# Drop table "sys_leads"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_leads` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_leads` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `public` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `lost` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `junk` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_leads` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_leads` DROP PRIMARY KEY;

DROP TABLE `sys_leads`;

# ---------------------------------------------------------------------- #
# Drop table "sys_items"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_items` ALTER COLUMN `unit` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `sales_price` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `inventory` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `weight` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `width` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `length` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `height` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `sid` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `bid` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `sell_account` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `purchase_account` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `inventory_account` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `taxable` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `item_number` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `track_inventroy` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `negative_stock` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `available` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `gid` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `category_id` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `supplier_id` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `expire_days` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `is_service` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `commission_percent` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `commission_fixed` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `cost_price` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `unit_price` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `promo_price` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `setup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `onetime` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `monthly` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `monthlysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `quarterly` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `quarterlysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `halfyearly` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `halfyearlysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `annually` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `annuallysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `biennially` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `bienniallysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `triennially` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `trienniallysetup` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `email_rel` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `sold_count` DROP DEFAULT;

ALTER TABLE `sys_items` ALTER COLUMN `total_amount` DROP DEFAULT;

ALTER TABLE `sys_items` DROP PRIMARY KEY;

DROP TABLE `sys_items`;

# ---------------------------------------------------------------------- #
# Drop table "sys_item_cats"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_item_cats` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_item_cats` ALTER COLUMN `pid` DROP DEFAULT;

ALTER TABLE `sys_item_cats` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_item_cats` DROP PRIMARY KEY;

DROP TABLE `sys_item_cats`;

# ---------------------------------------------------------------------- #
# Drop table "sys_invoices"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_invoices` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_invoices` ALTER COLUMN `cn` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `discount_type` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `discount_value` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `discount` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `credit` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `total` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `r` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `eid` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `ename` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `vid` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `currency_rate` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `sale_agent` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `q_hide` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `pid` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `is_credit_invoice` DROP DEFAULT;

ALTER TABLE `sys_invoices` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_invoices` DROP PRIMARY KEY;

DROP TABLE `sys_invoices`;

# ---------------------------------------------------------------------- #
# Drop table "sys_invoiceitems"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_invoiceitems` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_invoiceitems` ALTER COLUMN `invoiceid` DROP DEFAULT;

ALTER TABLE `sys_invoiceitems` ALTER COLUMN `qty` DROP DEFAULT;

ALTER TABLE `sys_invoiceitems` ALTER COLUMN `amount` DROP DEFAULT;

ALTER TABLE `sys_invoiceitems` ALTER COLUMN `taxamount` DROP DEFAULT;

ALTER TABLE `sys_invoiceitems` ALTER COLUMN `total` DROP DEFAULT;

ALTER TABLE `sys_invoiceitems` DROP PRIMARY KEY;

DROP TABLE `sys_invoiceitems`;

# ---------------------------------------------------------------------- #
# Drop table "sys_events"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_events` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_events` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `allday` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `notification` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_events` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_events` DROP PRIMARY KEY;

DROP TABLE `sys_events`;

# ---------------------------------------------------------------------- #
# Drop table "sys_emailconfig"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_emailconfig` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_emailconfig` DROP PRIMARY KEY;

DROP TABLE `sys_emailconfig`;

# ---------------------------------------------------------------------- #
# Drop table "sys_email_templates"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_email_templates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_email_templates` ALTER COLUMN `language_id` DROP DEFAULT;

ALTER TABLE `sys_email_templates` ALTER COLUMN `send` DROP DEFAULT;

ALTER TABLE `sys_email_templates` ALTER COLUMN `core` DROP DEFAULT;

ALTER TABLE `sys_email_templates` ALTER COLUMN `hidden` DROP DEFAULT;

ALTER TABLE `sys_email_templates` DROP PRIMARY KEY;

DROP TABLE `sys_email_templates`;

# ---------------------------------------------------------------------- #
# Drop table "sys_email_logs"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_email_logs` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_email_logs` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `sys_email_logs` ALTER COLUMN `rel_id` DROP DEFAULT;

ALTER TABLE `sys_email_logs` DROP PRIMARY KEY;

DROP TABLE `sys_email_logs`;

# ---------------------------------------------------------------------- #
# Drop table "sys_documents"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_documents` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_documents` ALTER COLUMN `file_owner` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `gid` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `customer_can_download` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_documents` ALTER COLUMN `is_global` DROP DEFAULT;

ALTER TABLE `sys_documents` DROP PRIMARY KEY;

DROP TABLE `sys_documents`;

# ---------------------------------------------------------------------- #
# Drop table "sys_currencies"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_currencies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_currencies` ALTER COLUMN `rate` DROP DEFAULT;

ALTER TABLE `sys_currencies` ALTER COLUMN `isdefault` DROP DEFAULT;

ALTER TABLE `sys_currencies` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_currencies` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_currencies` DROP PRIMARY KEY;

DROP TABLE `sys_currencies`;

# ---------------------------------------------------------------------- #
# Drop table "sys_companies"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_companies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_companies` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `pid` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `sys_companies` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `sys_companies` DROP PRIMARY KEY;

DROP TABLE `sys_companies`;

# ---------------------------------------------------------------------- #
# Drop table "sys_cats"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_cats` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_cats` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `sys_cats` ALTER COLUMN `total_amount` DROP DEFAULT;

ALTER TABLE `sys_cats` ALTER COLUMN `budget` DROP DEFAULT;

ALTER TABLE `sys_cats` DROP PRIMARY KEY;

DROP TABLE `sys_cats`;

# ---------------------------------------------------------------------- #
# Drop table "sys_cart"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_cart` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_cart` ALTER COLUMN `total` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `discount` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `item_count` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `lid` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `currency_id` DROP DEFAULT;

ALTER TABLE `sys_cart` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `sys_cart` DROP PRIMARY KEY;

DROP TABLE `sys_cart`;

# ---------------------------------------------------------------------- #
# Drop table "sys_appconfig"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_appconfig` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_appconfig` DROP PRIMARY KEY;

DROP TABLE `sys_appconfig`;

# ---------------------------------------------------------------------- #
# Drop table "sys_api"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_api` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_api` DROP PRIMARY KEY;

DROP TABLE `sys_api`;

# ---------------------------------------------------------------------- #
# Drop table "sys_activity"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_activity` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_activity` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `sys_activity` ALTER COLUMN `icon` DROP DEFAULT;

ALTER TABLE `sys_activity` ALTER COLUMN `o` DROP DEFAULT;

ALTER TABLE `sys_activity` DROP PRIMARY KEY;

DROP TABLE `sys_activity`;

# ---------------------------------------------------------------------- #
# Drop table "sys_accounts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sys_accounts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sys_accounts` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `sys_accounts` DROP PRIMARY KEY;

DROP TABLE `sys_accounts`;

# ---------------------------------------------------------------------- #
# Drop table "ib_invoice_access_log"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ib_invoice_access_log` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ib_invoice_access_log` ALTER COLUMN `lid` DROP DEFAULT;

ALTER TABLE `ib_invoice_access_log` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `ib_invoice_access_log` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `ib_invoice_access_log` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `ib_invoice_access_log` DROP PRIMARY KEY;

DROP TABLE `ib_invoice_access_log`;

# ---------------------------------------------------------------------- #
# Drop table "ib_doc_rel"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ib_doc_rel` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ib_doc_rel` ALTER COLUMN `rtype` DROP DEFAULT;

ALTER TABLE `ib_doc_rel` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `ib_doc_rel` ALTER COLUMN `did` DROP DEFAULT;

ALTER TABLE `ib_doc_rel` ALTER COLUMN `can_download` DROP DEFAULT;

ALTER TABLE `ib_doc_rel` DROP PRIMARY KEY;

DROP TABLE `ib_doc_rel`;

# ---------------------------------------------------------------------- #
# Drop table "crm_salutations"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_salutations` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_salutations` ALTER COLUMN `is_active` DROP DEFAULT;

ALTER TABLE `crm_salutations` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `crm_salutations` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_salutations` DROP PRIMARY KEY;

DROP TABLE `crm_salutations`;

# ---------------------------------------------------------------------- #
# Drop table "crm_leads"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_leads` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_leads` ALTER COLUMN `oid` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `company_id` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `cid` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `aid` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `iid` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `rid` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `public` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `lost` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `junk` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `crm_leads` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `crm_leads` DROP PRIMARY KEY;

DROP TABLE `crm_leads`;

# ---------------------------------------------------------------------- #
# Drop table "crm_lead_status"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_lead_status` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_lead_status` ALTER COLUMN `is_active` DROP DEFAULT;

ALTER TABLE `crm_lead_status` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `crm_lead_status` ALTER COLUMN `is_converted` DROP DEFAULT;

ALTER TABLE `crm_lead_status` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_lead_status` DROP PRIMARY KEY;

DROP TABLE `crm_lead_status`;

# ---------------------------------------------------------------------- #
# Drop table "crm_lead_sources"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_lead_sources` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_lead_sources` ALTER COLUMN `is_active` DROP DEFAULT;

ALTER TABLE `crm_lead_sources` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `crm_lead_sources` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_lead_sources` DROP PRIMARY KEY;

DROP TABLE `crm_lead_sources`;

# ---------------------------------------------------------------------- #
# Drop table "crm_industries"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_industries` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_industries` ALTER COLUMN `is_active` DROP DEFAULT;

ALTER TABLE `crm_industries` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `crm_industries` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_industries` DROP PRIMARY KEY;

DROP TABLE `crm_industries`;

# ---------------------------------------------------------------------- #
# Drop table "crm_groups"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_groups` DROP PRIMARY KEY;

DROP TABLE `crm_groups`;

# ---------------------------------------------------------------------- #
# Drop table "crm_customfieldsvalues"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_customfieldsvalues` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_customfieldsvalues` DROP PRIMARY KEY;

DROP TABLE `crm_customfieldsvalues`;

# ---------------------------------------------------------------------- #
# Drop table "crm_customfields"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_customfields` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_customfields` ALTER COLUMN `relid` DROP DEFAULT;

ALTER TABLE `crm_customfields` ALTER COLUMN `sorder` DROP DEFAULT;

ALTER TABLE `crm_customfields` DROP PRIMARY KEY;

DROP TABLE `crm_customfields`;

# ---------------------------------------------------------------------- #
# Drop table "crm_accounts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `crm_accounts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `crm_accounts` ALTER COLUMN `o` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `gid` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `billingcid` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `securityqid` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `gatewayid` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `is_email_verified` DROP DEFAULT;

ALTER TABLE `crm_accounts` ALTER COLUMN `is_phone_veirifed` DROP DEFAULT;

ALTER TABLE `crm_accounts` DROP PRIMARY KEY;

DROP TABLE `crm_accounts`;

# ---------------------------------------------------------------------- #
# Drop table "account_balances"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `account_balances` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `account_balances` ALTER COLUMN `account_id` DROP DEFAULT;

ALTER TABLE `account_balances` ALTER COLUMN `currency_id` DROP DEFAULT;

ALTER TABLE `account_balances` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `account_balances` DROP PRIMARY KEY;

DROP TABLE `account_balances`;
