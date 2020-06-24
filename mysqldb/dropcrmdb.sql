# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crmdb.dez                                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_account_details` DROP FOREIGN KEY `tbl_designations_tbl_account_details`;

ALTER TABLE `tbl_account_details` DROP FOREIGN KEY `tbl_locales_tbl_account_details`;

ALTER TABLE `tbl_account_details` DROP FOREIGN KEY `tbl_users_tbl_account_details`;

ALTER TABLE `tbl_advance_salary` DROP FOREIGN KEY `tbl_users_tbl_advance_salary`;

ALTER TABLE `tbl_announcements` DROP FOREIGN KEY `tbl_users_tbl_announcements`;

ALTER TABLE `tbl_assign_item` DROP FOREIGN KEY `tbl_stock_tbl_assign_item`;

ALTER TABLE `tbl_assign_item` DROP FOREIGN KEY `tbl_users_tbl_assign_item`;

ALTER TABLE `tbl_attendance` DROP FOREIGN KEY `tbl_leave_application_tbl_attendance`;

ALTER TABLE `tbl_attendance` DROP FOREIGN KEY `tbl_users_tbl_attendance`;

ALTER TABLE `tbl_bug` DROP FOREIGN KEY `tbl_opportunities_tbl_bug`;

ALTER TABLE `tbl_bug` DROP FOREIGN KEY `tbl_project_tbl_bug`;

ALTER TABLE `tbl_bug` DROP FOREIGN KEY `tbl_task_tbl_bug`;

ALTER TABLE `tbl_calls` DROP FOREIGN KEY `tbl_client_tbl_calls`;

ALTER TABLE `tbl_calls` DROP FOREIGN KEY `tbl_leads_tbl_calls`;

ALTER TABLE `tbl_calls` DROP FOREIGN KEY `tbl_opportunities_tbl_calls`;

ALTER TABLE `tbl_calls` DROP FOREIGN KEY `tbl_users_tbl_calls`;

ALTER TABLE `tbl_client` DROP FOREIGN KEY `tbl_customer_group_tbl_client`;

ALTER TABLE `tbl_client` DROP FOREIGN KEY `tbl_leads_tbl_client`;

ALTER TABLE `tbl_client_role` DROP FOREIGN KEY `tbl_client_menu_tbl_client_role`;

ALTER TABLE `tbl_client_role` DROP FOREIGN KEY `tbl_menu_tbl_client_role`;

ALTER TABLE `tbl_client_role` DROP FOREIGN KEY `tbl_users_tbl_client_role`;

ALTER TABLE `tbl_clock` DROP FOREIGN KEY `tbl_attendance_tbl_clock`;

ALTER TABLE `tbl_clock_history` DROP FOREIGN KEY `tbl_clock_tbl_clock_history`;

ALTER TABLE `tbl_clock_history` DROP FOREIGN KEY `tbl_users_tbl_clock_history`;

ALTER TABLE `tbl_credit_note` DROP FOREIGN KEY `tbl_client_tbl_credit_note`;

ALTER TABLE `tbl_credit_note` DROP FOREIGN KEY `tbl_project_tbl_credit_note`;

ALTER TABLE `tbl_credit_note` DROP FOREIGN KEY `tbl_users_tbl_credit_note`;

ALTER TABLE `tbl_credit_note_items` DROP FOREIGN KEY `tbl_credit_note_tbl_credit_note_items`;

ALTER TABLE `tbl_credit_note_items` DROP FOREIGN KEY `tbl_items_tbl_credit_note_items`;

ALTER TABLE `tbl_credit_note_items` DROP FOREIGN KEY `tbl_purchase_items_tbl_credit_note_items`;

ALTER TABLE `tbl_credit_note_items` DROP FOREIGN KEY `tbl_return_stock_items_tbl_credit_note_items`;

ALTER TABLE `tbl_credit_note_items` DROP FOREIGN KEY `tbl_saved_items_tbl_credit_note_items`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_credit_note_tbl_credit_used`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_invoices_tbl_credit_used`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_payments_tbl_credit_used`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_purchase_payments_tbl_credit_used`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_return_stock_payments_tbl_credit_used`;

ALTER TABLE `tbl_credit_used` DROP FOREIGN KEY `tbl_users_tbl_credit_used`;

ALTER TABLE `tbl_custom_field` DROP FOREIGN KEY `tbl_form_tbl_custom_field`;

ALTER TABLE `tbl_designations` DROP FOREIGN KEY `tbl_departments_tbl_designations`;

ALTER TABLE `tbl_discipline` DROP FOREIGN KEY `tbl_offence_category_tbl_discipline`;

ALTER TABLE `tbl_discipline` DROP FOREIGN KEY `tbl_penalty_category_tbl_discipline`;

ALTER TABLE `tbl_discipline` DROP FOREIGN KEY `tbl_users_tbl_discipline`;

ALTER TABLE `tbl_draft` DROP FOREIGN KEY `tbl_users_tbl_draft`;

ALTER TABLE `tbl_email_templates` DROP FOREIGN KEY `tbl_currencies_tbl_email_templates`;

ALTER TABLE `tbl_email_templates` DROP FOREIGN KEY `tbl_languages_tbl_email_templates`;

ALTER TABLE `tbl_employee_award` DROP FOREIGN KEY `tbl_users_tbl_employee_award`;

ALTER TABLE `tbl_employee_bank` DROP FOREIGN KEY `tbl_users_tbl_employee_bank`;

ALTER TABLE `tbl_employee_document` DROP FOREIGN KEY `tbl_users_tbl_employee_document`;

ALTER TABLE `tbl_employee_payroll` DROP FOREIGN KEY `tbl_hourly_rate_tbl_employee_payroll`;

ALTER TABLE `tbl_employee_payroll` DROP FOREIGN KEY `tbl_salary_template_tbl_employee_payroll`;

ALTER TABLE `tbl_employee_payroll` DROP FOREIGN KEY `tbl_users_tbl_employee_payroll`;

ALTER TABLE `tbl_estimate_items` DROP FOREIGN KEY `tbl_estimates_tbl_estimate_items`;

ALTER TABLE `tbl_estimate_items` DROP FOREIGN KEY `tbl_items_tbl_estimate_items`;

ALTER TABLE `tbl_estimate_items` DROP FOREIGN KEY `tbl_purchase_items_tbl_estimate_items`;

ALTER TABLE `tbl_estimate_items` DROP FOREIGN KEY `tbl_return_stock_items_tbl_estimate_items`;

ALTER TABLE `tbl_estimate_items` DROP FOREIGN KEY `tbl_saved_items_tbl_estimate_items`;

ALTER TABLE `tbl_estimates` DROP FOREIGN KEY `tbl_client_tbl_estimates`;

ALTER TABLE `tbl_estimates` DROP FOREIGN KEY `tbl_invoices_tbl_estimates`;

ALTER TABLE `tbl_estimates` DROP FOREIGN KEY `tbl_project_tbl_estimates`;

ALTER TABLE `tbl_estimates` DROP FOREIGN KEY `tbl_users_tbl_estimates`;

ALTER TABLE `tbl_files` DROP FOREIGN KEY `tbl_project_tbl_files`;

ALTER TABLE `tbl_goal_tracking` DROP FOREIGN KEY `tbl_accounts_tbl_goal_tracking`;

ALTER TABLE `tbl_goal_tracking` DROP FOREIGN KEY `tbl_goal_type_tbl_goal_tracking`;

ALTER TABLE `tbl_inbox` DROP FOREIGN KEY `tbl_users_tbl_inbox`;

ALTER TABLE `tbl_invoices` DROP FOREIGN KEY `tbl_client_tbl_invoices`;

ALTER TABLE `tbl_invoices` DROP FOREIGN KEY `tbl_project_tbl_invoices`;

ALTER TABLE `tbl_invoices` DROP FOREIGN KEY `tbl_users_tbl_invoices`;

ALTER TABLE `tbl_item_history` DROP FOREIGN KEY `tbl_stock_tbl_item_history`;

ALTER TABLE `tbl_items` DROP FOREIGN KEY `tbl_invoices_tbl_items`;

ALTER TABLE `tbl_items` DROP FOREIGN KEY `tbl_purchase_items_tbl_items`;

ALTER TABLE `tbl_items` DROP FOREIGN KEY `tbl_return_stock_items_tbl_items`;

ALTER TABLE `tbl_items` DROP FOREIGN KEY `tbl_saved_items_tbl_items`;

ALTER TABLE `tbl_job_appliactions` DROP FOREIGN KEY `tbl_job_circular_tbl_job_appliactions`;

ALTER TABLE `tbl_job_circular` DROP FOREIGN KEY `tbl_designations_tbl_job_circular`;

ALTER TABLE `tbl_knowledgebase` DROP FOREIGN KEY `tbl_kb_category_tbl_knowledgebase`;

ALTER TABLE `tbl_leads` DROP FOREIGN KEY `tbl_client_tbl_leads`;

ALTER TABLE `tbl_leads` DROP FOREIGN KEY `tbl_lead_source_tbl_leads`;

ALTER TABLE `tbl_leads` DROP FOREIGN KEY `tbl_lead_status_tbl_leads`;

ALTER TABLE `tbl_leads` DROP FOREIGN KEY `tbl_status_tbl_leads`;

ALTER TABLE `tbl_leave_application` DROP FOREIGN KEY `tbl_leave_category_tbl_leave_application`;

ALTER TABLE `tbl_leave_application` DROP FOREIGN KEY `tbl_users_tbl_leave_application`;

ALTER TABLE `tbl_locales` DROP FOREIGN KEY `tbl_currencies_tbl_locales`;

ALTER TABLE `tbl_locales` DROP FOREIGN KEY `tbl_languages_tbl_locales`;

ALTER TABLE `tbl_mettings` DROP FOREIGN KEY `tbl_leads_tbl_mettings`;

ALTER TABLE `tbl_mettings` DROP FOREIGN KEY `tbl_opportunities_tbl_mettings`;

ALTER TABLE `tbl_mettings` DROP FOREIGN KEY `tbl_users_tbl_mettings`;

ALTER TABLE `tbl_milestones` DROP FOREIGN KEY `tbl_project_tbl_milestones`;

ALTER TABLE `tbl_milestones` DROP FOREIGN KEY `tbl_users_tbl_milestones`;

ALTER TABLE `tbl_notes` DROP FOREIGN KEY `tbl_users_tbl_notes`;

ALTER TABLE `tbl_notifications` DROP FOREIGN KEY `tbl_users_tbl_notifications`;

ALTER TABLE `tbl_overtime` DROP FOREIGN KEY `tbl_users_tbl_overtime`;

ALTER TABLE `tbl_payments` DROP FOREIGN KEY `tbl_accounts_tbl_payments`;

ALTER TABLE `tbl_payments` DROP FOREIGN KEY `tbl_invoices_tbl_payments`;

ALTER TABLE `tbl_performance_apprisal` DROP FOREIGN KEY `tbl_users_tbl_performance_apprisal`;

ALTER TABLE `tbl_performance_indicator` DROP FOREIGN KEY `tbl_designations_tbl_performance_indicator`;

ALTER TABLE `tbl_pinaction` DROP FOREIGN KEY `tbl_users_tbl_pinaction`;

ALTER TABLE `tbl_private_chat` DROP FOREIGN KEY `tbl_users_tbl_private_chat`;

ALTER TABLE `tbl_private_chat_messages` DROP FOREIGN KEY `tbl_private_chat_tbl_private_chat_messages`;

ALTER TABLE `tbl_private_chat_messages` DROP FOREIGN KEY `tbl_users_tbl_private_chat_messages`;

ALTER TABLE `tbl_private_chat_users` DROP FOREIGN KEY `tbl_private_chat_tbl_private_chat_users`;

ALTER TABLE `tbl_private_chat_users` DROP FOREIGN KEY `tbl_users_tbl_private_chat_users`;

ALTER TABLE `tbl_proposals` DROP FOREIGN KEY `tbl_users_tbl_proposals`;

ALTER TABLE `tbl_proposals_items` DROP FOREIGN KEY `tbl_items_tbl_proposals_items`;

ALTER TABLE `tbl_proposals_items` DROP FOREIGN KEY `tbl_proposals_tbl_proposals_items`;

ALTER TABLE `tbl_proposals_items` DROP FOREIGN KEY `tbl_purchase_items_tbl_proposals_items`;

ALTER TABLE `tbl_proposals_items` DROP FOREIGN KEY `tbl_return_stock_items_tbl_proposals_items`;

ALTER TABLE `tbl_proposals_items` DROP FOREIGN KEY `tbl_saved_items_tbl_proposals_items`;

ALTER TABLE `tbl_purchase_items` DROP FOREIGN KEY `tbl_items_tbl_purchase_items`;

ALTER TABLE `tbl_purchase_items` DROP FOREIGN KEY `tbl_purchases_tbl_purchase_items`;

ALTER TABLE `tbl_purchase_items` DROP FOREIGN KEY `tbl_return_stock_items_tbl_purchase_items`;

ALTER TABLE `tbl_purchase_items` DROP FOREIGN KEY `tbl_saved_items_tbl_purchase_items`;

ALTER TABLE `tbl_purchase_payments` DROP FOREIGN KEY `tbl_accounts_tbl_purchase_payments`;

ALTER TABLE `tbl_purchase_payments` DROP FOREIGN KEY `tbl_purchases_tbl_purchase_payments`;

ALTER TABLE `tbl_purchases` DROP FOREIGN KEY `tbl_suppliers_tbl_purchases`;

ALTER TABLE `tbl_purchases` DROP FOREIGN KEY `tbl_users_tbl_purchases`;

ALTER TABLE `tbl_quotation_details` DROP FOREIGN KEY `tbl_quotations_tbl_quotation_details`;

ALTER TABLE `tbl_quotations` DROP FOREIGN KEY `tbl_client_tbl_quotations`;

ALTER TABLE `tbl_quotations` DROP FOREIGN KEY `tbl_users_tbl_quotations`;

ALTER TABLE `tbl_return_stock` DROP FOREIGN KEY `tbl_invoices_tbl_return_stock`;

ALTER TABLE `tbl_return_stock` DROP FOREIGN KEY `tbl_users_tbl_return_stock`;

ALTER TABLE `tbl_return_stock_items` DROP FOREIGN KEY `tbl_items_tbl_return_stock_items`;

ALTER TABLE `tbl_return_stock_items` DROP FOREIGN KEY `tbl_purchase_items_tbl_return_stock_items`;

ALTER TABLE `tbl_return_stock_items` DROP FOREIGN KEY `tbl_return_stock_tbl_return_stock_items`;

ALTER TABLE `tbl_return_stock_items` DROP FOREIGN KEY `tbl_saved_items_tbl_return_stock_items`;

ALTER TABLE `tbl_return_stock_items` DROP FOREIGN KEY `tbl_stock_tbl_return_stock_items`;

ALTER TABLE `tbl_return_stock_payments` DROP FOREIGN KEY `tbl_accounts_tbl_return_stock_payments`;

ALTER TABLE `tbl_return_stock_payments` DROP FOREIGN KEY `tbl_return_stock_tbl_return_stock_payments`;

ALTER TABLE `tbl_return_stock_payments` DROP FOREIGN KEY `tbl_stock_tbl_return_stock_payments`;

ALTER TABLE `tbl_salary_allowance` DROP FOREIGN KEY `tbl_salary_template_tbl_salary_allowance`;

ALTER TABLE `tbl_salary_deduction` DROP FOREIGN KEY `tbl_salary_template_tbl_salary_deduction`;

ALTER TABLE `tbl_salary_payment` DROP FOREIGN KEY `tbl_users_tbl_salary_payment`;

ALTER TABLE `tbl_salary_payment_allowance` DROP FOREIGN KEY `tbl_salary_payment_tbl_salary_payment_allowance`;

ALTER TABLE `tbl_salary_payment_deduction` DROP FOREIGN KEY `tbl_salary_payment_tbl_salary_payment_deduction`;

ALTER TABLE `tbl_salary_payment_details` DROP FOREIGN KEY `tbl_salary_payment_tbl_salary_payment_details`;

ALTER TABLE `tbl_salary_payslip` DROP FOREIGN KEY `tbl_salary_payment_tbl_salary_payslip`;

ALTER TABLE `tbl_saved_items` DROP FOREIGN KEY `tbl_customer_group_tbl_saved_items`;

ALTER TABLE `tbl_sent` DROP FOREIGN KEY `tbl_users_tbl_sent`;

ALTER TABLE `tbl_stock` DROP FOREIGN KEY `tbl_stock_category_tbl_stock`;

ALTER TABLE `tbl_stock` DROP FOREIGN KEY `tbl_stock_sub_category_tbl_stock`;

ALTER TABLE `tbl_stock_sub_category` DROP FOREIGN KEY `tbl_stock_category_tbl_stock_sub_category`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_bug_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_goal_tracking_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_leads_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_milestones_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_opportunities_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_project_tbl_task`;

ALTER TABLE `tbl_task` DROP FOREIGN KEY `tbl_transactions_tbl_task`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_bug_tbl_task_attachment`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_leads_tbl_task_attachment`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_opportunities_tbl_task_attachment`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_project_tbl_task_attachment`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_task_tbl_task_attachment`;

ALTER TABLE `tbl_task_attachment` DROP FOREIGN KEY `tbl_users_tbl_task_attachment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_bug_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_files_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_goal_tracking_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_leads_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_opportunities_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_project_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_task_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_task_attachment_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_task_uploaded_files_tbl_task_comment`;

ALTER TABLE `tbl_task_comment` DROP FOREIGN KEY `tbl_users_tbl_task_comment`;

ALTER TABLE `tbl_task_uploaded_files` DROP FOREIGN KEY `tbl_task_attachment_tbl_task_uploaded_files`;

ALTER TABLE `tbl_tasks_timer` DROP FOREIGN KEY `tbl_project_tbl_tasks_timer`;

ALTER TABLE `tbl_tasks_timer` DROP FOREIGN KEY `tbl_task_tbl_tasks_timer`;

ALTER TABLE `tbl_tasks_timer` DROP FOREIGN KEY `tbl_users_tbl_tasks_timer`;

ALTER TABLE `tbl_tickets` DROP FOREIGN KEY `tbl_departments_tbl_tickets`;

ALTER TABLE `tbl_tickets` DROP FOREIGN KEY `tbl_project_tbl_tickets`;

ALTER TABLE `tbl_training` DROP FOREIGN KEY `tbl_users_tbl_training`;

ALTER TABLE `tbl_transactions` DROP FOREIGN KEY `tbl_accounts_tbl_transactions`;

ALTER TABLE `tbl_transactions` DROP FOREIGN KEY `tbl_invoices_tbl_transactions`;

ALTER TABLE `tbl_transactions` DROP FOREIGN KEY `tbl_payment_methods_tbl_transactions`;

ALTER TABLE `tbl_transactions` DROP FOREIGN KEY `tbl_project_tbl_transactions`;

ALTER TABLE `tbl_transactions` DROP FOREIGN KEY `tbl_transfer_tbl_transactions`;

ALTER TABLE `tbl_transfer` DROP FOREIGN KEY `tbl_accounts_tbl_transfer`;

ALTER TABLE `tbl_transfer` DROP FOREIGN KEY `tbl_payment_methods_tbl_transfer`;

ALTER TABLE `tbl_uploaded_files` DROP FOREIGN KEY `tbl_files_tbl_uploaded_files`;

ALTER TABLE `tbl_uploaded_files` DROP FOREIGN KEY `tbl_task_uploaded_files_tbl_uploaded_files`;

ALTER TABLE `tbl_user_role` DROP FOREIGN KEY `tbl_client_menu_tbl_user_role`;

ALTER TABLE `tbl_user_role` DROP FOREIGN KEY `tbl_designations_tbl_user_role`;

ALTER TABLE `tbl_user_role` DROP FOREIGN KEY `tbl_menu_tbl_user_role`;

ALTER TABLE `tbl_working_days` DROP FOREIGN KEY `tbl_days_tbl_working_days`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_uploaded_files"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tbl_uploaded_files`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_transactions"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_transactions` MODIFY `transactions_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_transactions` ALTER COLUMN `invoices_id` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `custom_recurring` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `paid_by` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `debit` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `credit` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `total_balance` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `transfer_id` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `client_visible` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `added_by` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `paid` DROP DEFAULT;

ALTER TABLE `tbl_transactions` ALTER COLUMN `billable` DROP DEFAULT;

ALTER TABLE `tbl_transactions` DROP PRIMARY KEY;

DROP TABLE `tbl_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_tasks_timer"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_tasks_timer` MODIFY `tasks_timer_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_tasks_timer` ALTER COLUMN `timer_status` DROP DEFAULT;

ALTER TABLE `tbl_tasks_timer` ALTER COLUMN `date_timed` DROP DEFAULT;

ALTER TABLE `tbl_tasks_timer` DROP PRIMARY KEY;

DROP TABLE `tbl_tasks_timer`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_task_uploaded_files"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_task_uploaded_files` MODIFY `uploaded_files_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_task_uploaded_files` DROP PRIMARY KEY;

DROP TABLE `tbl_task_uploaded_files`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_task_comment"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_task_comment` MODIFY `task_comment_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_task_comment` ALTER COLUMN `comment_datetime` DROP DEFAULT;

ALTER TABLE `tbl_task_comment` ALTER COLUMN `task_attachment_id` DROP DEFAULT;

ALTER TABLE `tbl_task_comment` ALTER COLUMN `uploaded_files_id` DROP DEFAULT;

ALTER TABLE `tbl_task_comment` ALTER COLUMN `comments_reply_id` DROP DEFAULT;

ALTER TABLE `tbl_task_comment` DROP PRIMARY KEY;

DROP TABLE `tbl_task_comment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_task_attachment"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_task_attachment` MODIFY `task_attachment_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_task_attachment` ALTER COLUMN `upload_time` DROP DEFAULT;

ALTER TABLE `tbl_task_attachment` DROP PRIMARY KEY;

DROP TABLE `tbl_task_attachment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_task"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_task` MODIFY `task_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_task` ALTER COLUMN `task_created_date` DROP DEFAULT;

ALTER TABLE `tbl_task` ALTER COLUMN `timer_status` DROP DEFAULT;

ALTER TABLE `tbl_task` ALTER COLUMN `logged_time` DROP DEFAULT;

ALTER TABLE `tbl_task` ALTER COLUMN `hourly_rate` DROP DEFAULT;

ALTER TABLE `tbl_task` ALTER COLUMN `billable` DROP DEFAULT;

ALTER TABLE `tbl_task` DROP PRIMARY KEY;

DROP TABLE `tbl_task`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_return_stock_payments"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_return_stock_payments` MODIFY `payments_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_return_stock_payments` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_payments` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_payments` ALTER COLUMN `account_id` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_payments` DROP PRIMARY KEY;

DROP TABLE `tbl_return_stock_payments`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_return_stock_items"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_return_stock_items` MODIFY `items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_return_stock_items` DROP PRIMARY KEY;

DROP TABLE `tbl_return_stock_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_return_stock"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_return_stock` MODIFY `return_stock_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_return_stock` ALTER COLUMN `update_stock` DROP DEFAULT;

ALTER TABLE `tbl_return_stock` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `tbl_return_stock` DROP PRIMARY KEY;

DROP TABLE `tbl_return_stock`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_quotations"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_quotations` MODIFY `quotations_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_quotations` ALTER COLUMN `quotations_date` DROP DEFAULT;

ALTER TABLE `tbl_quotations` ALTER COLUMN `quotations_status` DROP DEFAULT;

ALTER TABLE `tbl_quotations` DROP PRIMARY KEY;

DROP TABLE `tbl_quotations`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_quotation_details"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_quotation_details` MODIFY `quotation_details_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_quotation_details` DROP PRIMARY KEY;

DROP TABLE `tbl_quotation_details`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_purchase_items"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_purchase_items` MODIFY `items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_purchase_items` DROP PRIMARY KEY;

DROP TABLE `tbl_purchase_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_proposals_items"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_proposals_items` MODIFY `proposals_items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_proposals_items` DROP PRIMARY KEY;

DROP TABLE `tbl_proposals_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_payments"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_payments` MODIFY `payments_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_payments` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_payments` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_payments` ALTER COLUMN `account_id` DROP DEFAULT;

ALTER TABLE `tbl_payments` DROP PRIMARY KEY;

DROP TABLE `tbl_payments`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_mettings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_mettings` MODIFY `mettings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_mettings` DROP PRIMARY KEY;

DROP TABLE `tbl_mettings`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_leads"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_leads` MODIFY `leads_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_leads` ALTER COLUMN `imported_from_email` DROP DEFAULT;

ALTER TABLE `tbl_leads` ALTER COLUMN `created_time` DROP DEFAULT;

ALTER TABLE `tbl_leads` ALTER COLUMN `converted_client_id` DROP DEFAULT;

ALTER TABLE `tbl_leads` ALTER COLUMN `index_no` DROP DEFAULT;

ALTER TABLE `tbl_leads` DROP PRIMARY KEY;

DROP TABLE `tbl_leads`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_items"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_items` MODIFY `items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_items` DROP PRIMARY KEY;

DROP TABLE `tbl_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_invoices"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_invoices` MODIFY `invoices_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_invoices` ALTER COLUMN `alert_overdue` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `recuring_frequency` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `archived` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `inv_deleted` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `emailed` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `show_client` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `viewed` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_paypal` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_stripe` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_2checkout` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_authorize` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_ccavenue` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_braintree` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_mollie` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_payumoney` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_tapPayment` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `allow_razorpay` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `client_visible` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `adjustment` DROP DEFAULT;

ALTER TABLE `tbl_invoices` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tbl_invoices` DROP PRIMARY KEY;

DROP TABLE `tbl_invoices`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_estimates"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_estimates` MODIFY `estimates_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_estimates` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `alert_overdue` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `est_deleted` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `emailed` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `show_client` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `invoiced` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `invoices_id` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `client_visible` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `adjustment` DROP DEFAULT;

ALTER TABLE `tbl_estimates` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tbl_estimates` DROP PRIMARY KEY;

DROP TABLE `tbl_estimates`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_estimate_items"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_estimate_items` MODIFY `estimate_items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_estimate_items` DROP PRIMARY KEY;

DROP TABLE `tbl_estimate_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_credit_used"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_credit_used` MODIFY `credit_used_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_credit_used` DROP PRIMARY KEY;

DROP TABLE `tbl_credit_used`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_credit_note_items"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_credit_note_items` MODIFY `credit_note_items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `saved_items_id` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `tbl_credit_note_items` DROP PRIMARY KEY;

DROP TABLE `tbl_credit_note_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_credit_note"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_credit_note` MODIFY `credit_note_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_credit_note` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `date_saved` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `client_visible` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `adjustment` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tbl_credit_note` DROP PRIMARY KEY;

DROP TABLE `tbl_credit_note`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_client"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_client` MODIFY `client_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_client` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_client` ALTER COLUMN `date_added` DROP DEFAULT;

ALTER TABLE `tbl_client` DROP PRIMARY KEY;

DROP TABLE `tbl_client`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_calls"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_calls` MODIFY `calls_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_calls` DROP PRIMARY KEY;

DROP TABLE `tbl_calls`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_bug"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_bug` MODIFY `bug_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_bug` ALTER COLUMN `task_id` DROP DEFAULT;

ALTER TABLE `tbl_bug` ALTER COLUMN `update_time` DROP DEFAULT;

ALTER TABLE `tbl_bug` DROP PRIMARY KEY;

DROP TABLE `tbl_bug`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_purchase_payments"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_purchase_payments` MODIFY `payments_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_purchase_payments` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_purchase_payments` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_purchase_payments` ALTER COLUMN `account_id` DROP DEFAULT;

ALTER TABLE `tbl_purchase_payments` DROP PRIMARY KEY;

DROP TABLE `tbl_purchase_payments`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_item_history"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_item_history` MODIFY `item_history_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_item_history` DROP PRIMARY KEY;

DROP TABLE `tbl_item_history`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_clock_history"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_clock_history` MODIFY `clock_history_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_clock_history` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_clock_history` ALTER COLUMN `notify_me` DROP DEFAULT;

ALTER TABLE `tbl_clock_history` ALTER COLUMN `view_status` DROP DEFAULT;

ALTER TABLE `tbl_clock_history` ALTER COLUMN `request_date` DROP DEFAULT;

ALTER TABLE `tbl_clock_history` DROP PRIMARY KEY;

DROP TABLE `tbl_clock_history`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_clock"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_clock` MODIFY `clock_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_clock` ALTER COLUMN `clocking_status` DROP DEFAULT;

ALTER TABLE `tbl_clock` DROP PRIMARY KEY;

DROP TABLE `tbl_clock`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_attendance"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_attendance` MODIFY `attendance_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_attendance` ALTER COLUMN `leave_application_id` DROP DEFAULT;

ALTER TABLE `tbl_attendance` ALTER COLUMN `attendance_status` DROP DEFAULT;

ALTER TABLE `tbl_attendance` DROP PRIMARY KEY;

DROP TABLE `tbl_attendance`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_assign_item"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_assign_item` MODIFY `assign_item_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_assign_item` DROP PRIMARY KEY;

DROP TABLE `tbl_assign_item`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_training"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_training` MODIFY `training_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_training` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_training` ALTER COLUMN `performance` DROP DEFAULT;

ALTER TABLE `tbl_training` DROP PRIMARY KEY;

DROP TABLE `tbl_training`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_stock"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_stock` MODIFY `stock_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_stock` DROP PRIMARY KEY;

DROP TABLE `tbl_stock`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_sent"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_sent` MODIFY `sent_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_sent` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_sent` DROP PRIMARY KEY;

DROP TABLE `tbl_sent`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_payslip"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_payslip` MODIFY `payslip_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_payslip` ALTER COLUMN `payslip_generate_date` DROP DEFAULT;

ALTER TABLE `tbl_salary_payslip` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_payslip`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_payment_details"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_payment_details` MODIFY `salary_payment_details_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_payment_details` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_payment_details`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_payment_deduction"                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_payment_deduction` MODIFY `salary_payment_deduction` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_payment_deduction` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_payment_deduction`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_payment_allowance"                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_payment_allowance` MODIFY `salary_payment_allowance_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_payment_allowance` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_payment_allowance`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_payment"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_payment` MODIFY `salary_payment_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_payment` ALTER COLUMN `paid_date` DROP DEFAULT;

ALTER TABLE `tbl_salary_payment` ALTER COLUMN `deduct_from` DROP DEFAULT;

ALTER TABLE `tbl_salary_payment` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_payment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_deduction"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_deduction` MODIFY `salary_deduction_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_deduction` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_deduction`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_allowance"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_allowance` MODIFY `salary_allowance_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_allowance` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_allowance`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_purchases"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_purchases` MODIFY `purchase_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_purchases` ALTER COLUMN `update_stock` DROP DEFAULT;

ALTER TABLE `tbl_purchases` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `tbl_purchases` DROP PRIMARY KEY;

DROP TABLE `tbl_purchases`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_proposals"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_proposals` MODIFY `proposals_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_proposals` ALTER COLUMN `module_id` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `alert_overdue` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `tax` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `proposal_deleted` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `emailed` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `show_client` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `convert` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `convert_module_id` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `converted_date` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `adjustment` DROP DEFAULT;

ALTER TABLE `tbl_proposals` ALTER COLUMN `allowed_cmments` DROP DEFAULT;

ALTER TABLE `tbl_proposals` DROP PRIMARY KEY;

DROP TABLE `tbl_proposals`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_private_chat_users"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_private_chat_users` MODIFY `private_chat_users_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_private_chat_users` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_private_chat_users` DROP PRIMARY KEY;

DROP TABLE `tbl_private_chat_users`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_private_chat_messages"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_private_chat_messages` MODIFY `private_chat_messages_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_private_chat_messages` ALTER COLUMN `message_time` DROP DEFAULT;

ALTER TABLE `tbl_private_chat_messages` DROP PRIMARY KEY;

DROP TABLE `tbl_private_chat_messages`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_private_chat"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_private_chat` MODIFY `private_chat_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_private_chat` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `tbl_private_chat` DROP PRIMARY KEY;

DROP TABLE `tbl_private_chat`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_pinaction"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_pinaction` MODIFY `pinaction_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_pinaction` DROP PRIMARY KEY;

DROP TABLE `tbl_pinaction`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_performance_apprisal"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_performance_apprisal` MODIFY `performance_appraisal_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_performance_apprisal` DROP PRIMARY KEY;

DROP TABLE `tbl_performance_apprisal`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_overtime"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_overtime` MODIFY `overtime_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_overtime` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_overtime` DROP PRIMARY KEY;

DROP TABLE `tbl_overtime`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_notifications"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_notifications` MODIFY `notifications_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_notifications` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `tbl_notifications` ALTER COLUMN `read_inline` DROP DEFAULT;

ALTER TABLE `tbl_notifications` ALTER COLUMN `from_user_id` DROP DEFAULT;

ALTER TABLE `tbl_notifications` ALTER COLUMN `to_user_id` DROP DEFAULT;

ALTER TABLE `tbl_notifications` DROP PRIMARY KEY;

DROP TABLE `tbl_notifications`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_notes"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_notes` MODIFY `notes_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_notes` ALTER COLUMN `is_client` DROP DEFAULT;

ALTER TABLE `tbl_notes` ALTER COLUMN `added_date` DROP DEFAULT;

ALTER TABLE `tbl_notes` DROP PRIMARY KEY;

DROP TABLE `tbl_notes`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_milestones"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_milestones` MODIFY `milestones_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_milestones` DROP PRIMARY KEY;

DROP TABLE `tbl_milestones`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_leave_application"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_leave_application` MODIFY `leave_application_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_leave_application` ALTER COLUMN `leave_type` DROP DEFAULT;

ALTER TABLE `tbl_leave_application` ALTER COLUMN `application_status` DROP DEFAULT;

ALTER TABLE `tbl_leave_application` ALTER COLUMN `view_status` DROP DEFAULT;

ALTER TABLE `tbl_leave_application` ALTER COLUMN `application_date` DROP DEFAULT;

ALTER TABLE `tbl_leave_application` DROP PRIMARY KEY;

DROP TABLE `tbl_leave_application`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_job_appliactions"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_job_appliactions` MODIFY `job_appliactions_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_job_appliactions` ALTER COLUMN `application_status` DROP DEFAULT;

ALTER TABLE `tbl_job_appliactions` ALTER COLUMN `apply_date` DROP DEFAULT;

ALTER TABLE `tbl_job_appliactions` DROP PRIMARY KEY;

DROP TABLE `tbl_job_appliactions`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_inbox"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_inbox` MODIFY `inbox_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_inbox` ALTER COLUMN `view_status` DROP DEFAULT;

ALTER TABLE `tbl_inbox` ALTER COLUMN `favourites` DROP DEFAULT;

ALTER TABLE `tbl_inbox` ALTER COLUMN `notify_me` DROP DEFAULT;

ALTER TABLE `tbl_inbox` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_inbox` DROP PRIMARY KEY;

DROP TABLE `tbl_inbox`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_goal_tracking"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_goal_tracking` MODIFY `goal_tracking_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_goal_tracking` ALTER COLUMN `account_id` DROP DEFAULT;

ALTER TABLE `tbl_goal_tracking` ALTER COLUMN `email_send` DROP DEFAULT;

ALTER TABLE `tbl_goal_tracking` DROP PRIMARY KEY;

DROP TABLE `tbl_goal_tracking`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_files"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_files` MODIFY `files_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_files` ALTER COLUMN `date_posted` DROP DEFAULT;

ALTER TABLE `tbl_files` DROP PRIMARY KEY;

DROP TABLE `tbl_files`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_employee_payroll"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_employee_payroll` MODIFY `payroll_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_employee_payroll` DROP PRIMARY KEY;

DROP TABLE `tbl_employee_payroll`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_employee_document"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_employee_document` MODIFY `document_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_employee_document` DROP PRIMARY KEY;

DROP TABLE `tbl_employee_document`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_employee_bank"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_employee_bank` MODIFY `employee_bank_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_employee_bank` DROP PRIMARY KEY;

DROP TABLE `tbl_employee_bank`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_employee_award"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_employee_award` MODIFY `employee_award_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_employee_award` ALTER COLUMN `view_status` DROP DEFAULT;

ALTER TABLE `tbl_employee_award` DROP PRIMARY KEY;

DROP TABLE `tbl_employee_award`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_email_templates"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_email_templates` MODIFY `email_templates_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_email_templates` DROP PRIMARY KEY;

DROP TABLE `tbl_email_templates`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_draft"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_draft` MODIFY `draft_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_draft` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_draft` DROP PRIMARY KEY;

DROP TABLE `tbl_draft`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_discipline"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_discipline` MODIFY `discipline_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_discipline` DROP PRIMARY KEY;

DROP TABLE `tbl_discipline`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_custom_field"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_custom_field` MODIFY `custom_field_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_custom_field` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `tbl_custom_field` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_custom_field` ALTER COLUMN `show_on_details` DROP DEFAULT;

ALTER TABLE `tbl_custom_field` DROP PRIMARY KEY;

DROP TABLE `tbl_custom_field`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_client_role"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_client_role` MODIFY `client_role_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_client_role` DROP PRIMARY KEY;

DROP TABLE `tbl_client_role`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_announcements"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_announcements` MODIFY `announcements_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_announcements` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_announcements` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_announcements` ALTER COLUMN `view_status` DROP DEFAULT;

ALTER TABLE `tbl_announcements` DROP PRIMARY KEY;

DROP TABLE `tbl_announcements`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_advance_salary"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_advance_salary` MODIFY `advance_salary_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_advance_salary` ALTER COLUMN `request_date` DROP DEFAULT;

ALTER TABLE `tbl_advance_salary` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_advance_salary` DROP PRIMARY KEY;

DROP TABLE `tbl_advance_salary`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_account_details"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_account_details` MODIFY `account_details_id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_account_details` ALTER COLUMN `locale` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `address` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `phone` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `mobile` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `skype` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `language` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `designations_id` DROP DEFAULT;

ALTER TABLE `tbl_account_details` ALTER COLUMN `avatar` DROP DEFAULT;

ALTER TABLE `tbl_account_details` DROP PRIMARY KEY;

DROP TABLE `tbl_account_details`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_working_days"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_working_days` MODIFY `working_days_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_working_days` DROP PRIMARY KEY;

DROP TABLE `tbl_working_days`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_users"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_users` MODIFY `user_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_users` ALTER COLUMN `role_id` DROP DEFAULT;

ALTER TABLE `tbl_users` ALTER COLUMN `activated` DROP DEFAULT;

ALTER TABLE `tbl_users` ALTER COLUMN `banned` DROP DEFAULT;

ALTER TABLE `tbl_users` ALTER COLUMN `modified` DROP DEFAULT;

ALTER TABLE `tbl_users` ALTER COLUMN `online_time` DROP DEFAULT;

ALTER TABLE `tbl_users` DROP PRIMARY KEY;

DROP TABLE `tbl_users`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_user_role"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_user_role` MODIFY `user_role_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_user_role` ALTER COLUMN `view` DROP DEFAULT;

ALTER TABLE `tbl_user_role` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `tbl_user_role` ALTER COLUMN `edited` DROP DEFAULT;

ALTER TABLE `tbl_user_role` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_user_role` DROP PRIMARY KEY;

DROP TABLE `tbl_user_role`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_transfer"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_transfer` MODIFY `transfer_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_transfer` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_transfer` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `tbl_transfer` DROP PRIMARY KEY;

DROP TABLE `tbl_transfer`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_todo"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_todo` MODIFY `todo_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_todo` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_todo` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_todo` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `tbl_todo` DROP PRIMARY KEY;

DROP TABLE `tbl_todo`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_tickets_replies"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_tickets_replies` MODIFY `tickets_replies_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_tickets_replies` ALTER COLUMN `ticket_reply_id` DROP DEFAULT;

ALTER TABLE `tbl_tickets_replies` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `tbl_tickets_replies` DROP PRIMARY KEY;

DROP TABLE `tbl_tickets_replies`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_tickets"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_tickets` MODIFY `tickets_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_tickets` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tbl_tickets` ALTER COLUMN `reporter` DROP DEFAULT;

ALTER TABLE `tbl_tickets` ALTER COLUMN `created` DROP DEFAULT;

ALTER TABLE `tbl_tickets` DROP PRIMARY KEY;

DROP TABLE `tbl_tickets`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_tax_rates"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_tax_rates` ALTER COLUMN `tax_rate_name` DROP DEFAULT;

ALTER TABLE `tbl_tax_rates` ALTER COLUMN `tax_rate_percent` DROP DEFAULT;

DROP TABLE `tbl_tax_rates`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_suppliers"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_suppliers` MODIFY `supplier_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_suppliers` DROP PRIMARY KEY;

DROP TABLE `tbl_suppliers`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_stock_sub_category"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_stock_sub_category` MODIFY `stock_sub_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_stock_sub_category` DROP PRIMARY KEY;

DROP TABLE `tbl_stock_sub_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_stock_category"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_stock_category` MODIFY `stock_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_stock_category` DROP PRIMARY KEY;

DROP TABLE `tbl_stock_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_status"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_status` MODIFY `status_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_status` DROP PRIMARY KEY;

DROP TABLE `tbl_status`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_sessions"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_sessions` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `tbl_sessions` DROP PRIMARY KEY;

DROP TABLE `tbl_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_saved_items"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_saved_items` MODIFY `saved_items_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_saved_items` ALTER COLUMN `item_name` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `unit_cost` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `customer_group_id` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `item_tax_rate` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `item_tax_total` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` ALTER COLUMN `total_cost` DROP DEFAULT;

ALTER TABLE `tbl_saved_items` DROP PRIMARY KEY;

DROP TABLE `tbl_saved_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_salary_template"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_salary_template` MODIFY `salary_template_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_salary_template` DROP PRIMARY KEY;

DROP TABLE `tbl_salary_template`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_reminders"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_reminders` MODIFY `reminder_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_reminders` ALTER COLUMN `notified` DROP DEFAULT;

ALTER TABLE `tbl_reminders` ALTER COLUMN `notify_by_email` DROP DEFAULT;

ALTER TABLE `tbl_reminders` DROP PRIMARY KEY;

DROP TABLE `tbl_reminders`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_quotationforms"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_quotationforms` MODIFY `quotationforms_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_quotationforms` ALTER COLUMN `quotationforms_status` DROP DEFAULT;

ALTER TABLE `tbl_quotationforms` ALTER COLUMN `quotationforms_date_created` DROP DEFAULT;

ALTER TABLE `tbl_quotationforms` DROP PRIMARY KEY;

DROP TABLE `tbl_quotationforms`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_project_settings"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_project_settings` MODIFY `settings_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_project_settings` DROP PRIMARY KEY;

DROP TABLE `tbl_project_settings`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_project"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_project` MODIFY `project_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_project` ALTER COLUMN `alert_overdue` DROP DEFAULT;

ALTER TABLE `tbl_project` ALTER COLUMN `project_cost` DROP DEFAULT;

ALTER TABLE `tbl_project` ALTER COLUMN `created_time` DROP DEFAULT;

ALTER TABLE `tbl_project` ALTER COLUMN `with_tasks` DROP DEFAULT;

ALTER TABLE `tbl_project` DROP PRIMARY KEY;

DROP TABLE `tbl_project`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_priority"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_priority` MODIFY `priority_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_priority` DROP PRIMARY KEY;

DROP TABLE `tbl_priority`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_priorities"                                            #
# ---------------------------------------------------------------------- #

DROP TABLE `tbl_priorities`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_performance_indicator"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_performance_indicator` MODIFY `performance_indicator_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_performance_indicator` DROP PRIMARY KEY;

DROP TABLE `tbl_performance_indicator`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_penalty_category"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_penalty_category` MODIFY `penalty_id` INTEGER(2) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_penalty_category` DROP PRIMARY KEY;

DROP TABLE `tbl_penalty_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_payment_methods"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_payment_methods` MODIFY `payment_methods_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_payment_methods` ALTER COLUMN `method_name` DROP DEFAULT;

ALTER TABLE `tbl_payment_methods` DROP PRIMARY KEY;

DROP TABLE `tbl_payment_methods`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_outgoing_emails"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_outgoing_emails` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_outgoing_emails` ALTER COLUMN `date_sent` DROP DEFAULT;

ALTER TABLE `tbl_outgoing_emails` ALTER COLUMN `delivered` DROP DEFAULT;

ALTER TABLE `tbl_outgoing_emails` DROP PRIMARY KEY;

DROP TABLE `tbl_outgoing_emails`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_opportunities_state_reason"                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_opportunities_state_reason` MODIFY `opportunities_state_reason_id` INTEGER(2) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_opportunities_state_reason` DROP PRIMARY KEY;

DROP TABLE `tbl_opportunities_state_reason`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_opportunities"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_opportunities` MODIFY `opportunities_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_opportunities` DROP PRIMARY KEY;

DROP TABLE `tbl_opportunities`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_online_payment"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_online_payment` MODIFY `online_payment_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_online_payment` DROP PRIMARY KEY;

DROP TABLE `tbl_online_payment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_offence_category"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_offence_category` MODIFY `offence_id` INTEGER(2) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_offence_category` DROP PRIMARY KEY;

DROP TABLE `tbl_offence_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_migrations"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tbl_migrations`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_menu"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_menu` MODIFY `menu_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_menu` ALTER COLUMN `parent` DROP DEFAULT;

ALTER TABLE `tbl_menu` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `tbl_menu` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `tbl_menu` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_menu` DROP PRIMARY KEY;

DROP TABLE `tbl_menu`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_locales"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_locales` ALTER COLUMN `name` DROP DEFAULT;

ALTER TABLE `tbl_locales` DROP PRIMARY KEY;

DROP TABLE `tbl_locales`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_leave_category"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_leave_category` MODIFY `leave_category_id` INTEGER(2) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_leave_category` DROP PRIMARY KEY;

DROP TABLE `tbl_leave_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_lead_status"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_lead_status` MODIFY `lead_status_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_lead_status` DROP PRIMARY KEY;

DROP TABLE `tbl_lead_status`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_lead_source"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_lead_source` MODIFY `lead_source_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_lead_source` DROP PRIMARY KEY;

DROP TABLE `tbl_lead_source`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_languages"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_languages` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tbl_languages` DROP PRIMARY KEY;

DROP TABLE `tbl_languages`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_knowledgebase"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_knowledgebase` MODIFY `kb_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_knowledgebase` ALTER COLUMN `for_all` DROP DEFAULT;

ALTER TABLE `tbl_knowledgebase` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_knowledgebase` ALTER COLUMN `total_view` DROP DEFAULT;

ALTER TABLE `tbl_knowledgebase` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `tbl_knowledgebase` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `tbl_knowledgebase` DROP PRIMARY KEY;

DROP TABLE `tbl_knowledgebase`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_kb_category"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_kb_category` MODIFY `kb_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_kb_category` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_kb_category` DROP PRIMARY KEY;

DROP TABLE `tbl_kb_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_job_circular"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_job_circular` MODIFY `job_circular_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_job_circular` ALTER COLUMN `employment_type` DROP DEFAULT;

ALTER TABLE `tbl_job_circular` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_job_circular` ALTER COLUMN `created_date` DROP DEFAULT;

ALTER TABLE `tbl_job_circular` DROP PRIMARY KEY;

DROP TABLE `tbl_job_circular`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_income_category"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_income_category` MODIFY `income_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_income_category` DROP PRIMARY KEY;

DROP TABLE `tbl_income_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_hourly_rate"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_hourly_rate` MODIFY `hourly_rate_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_hourly_rate` DROP PRIMARY KEY;

DROP TABLE `tbl_hourly_rate`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_holiday"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_holiday` MODIFY `holiday_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_holiday` DROP PRIMARY KEY;

DROP TABLE `tbl_holiday`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_goal_type"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_goal_type` MODIFY `goal_type_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_goal_type` DROP PRIMARY KEY;

DROP TABLE `tbl_goal_type`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_form"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_form` MODIFY `form_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_form` DROP PRIMARY KEY;

DROP TABLE `tbl_form`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_expense_category"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_expense_category` MODIFY `expense_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_expense_category` DROP PRIMARY KEY;

DROP TABLE `tbl_expense_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_designations"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_designations` MODIFY `designations_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_designations` DROP PRIMARY KEY;

DROP TABLE `tbl_designations`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_departments"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_departments` MODIFY `departments_id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_departments` ALTER COLUMN `unread_email` DROP DEFAULT;

ALTER TABLE `tbl_departments` ALTER COLUMN `delete_mail_after_import` DROP DEFAULT;

ALTER TABLE `tbl_departments` DROP PRIMARY KEY;

DROP TABLE `tbl_departments`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_days"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_days` MODIFY `day_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_days` DROP PRIMARY KEY;

DROP TABLE `tbl_days`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_dashboard"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_dashboard` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_dashboard` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_dashboard` ALTER COLUMN `report` DROP DEFAULT;

ALTER TABLE `tbl_dashboard` ALTER COLUMN `for_staff` DROP DEFAULT;

ALTER TABLE `tbl_dashboard` DROP PRIMARY KEY;

DROP TABLE `tbl_dashboard`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_customer_group"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_customer_group` MODIFY `customer_group_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_customer_group` DROP PRIMARY KEY;

DROP TABLE `tbl_customer_group`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_currencies"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_currencies` DROP PRIMARY KEY;

DROP TABLE `tbl_currencies`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_countries"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_countries` MODIFY `id` INTEGER(6) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_countries` ALTER COLUMN `value` DROP DEFAULT;

ALTER TABLE `tbl_countries` DROP PRIMARY KEY;

DROP TABLE `tbl_countries`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_contract_type"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_contract_type` MODIFY `contract_type_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_contract_type` DROP PRIMARY KEY;

DROP TABLE `tbl_contract_type`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_config"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_config` DROP PRIMARY KEY;

DROP TABLE `tbl_config`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_client_menu"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_client_menu` MODIFY `menu_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_client_menu` ALTER COLUMN `time` DROP DEFAULT;

ALTER TABLE `tbl_client_menu` DROP PRIMARY KEY;

DROP TABLE `tbl_client_menu`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_checklists"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_checklists` MODIFY `checklist_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_checklists` ALTER COLUMN `finished` DROP DEFAULT;

ALTER TABLE `tbl_checklists` DROP PRIMARY KEY;

DROP TABLE `tbl_checklists`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_allowed_ip"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_allowed_ip` MODIFY `allowed_ip_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_allowed_ip` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbl_allowed_ip` DROP PRIMARY KEY;

DROP TABLE `tbl_allowed_ip`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_activities"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_activities` MODIFY `activities_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_activities` ALTER COLUMN `activity_date` DROP DEFAULT;

ALTER TABLE `tbl_activities` ALTER COLUMN `icon` DROP DEFAULT;

ALTER TABLE `tbl_activities` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tbl_activities` DROP PRIMARY KEY;

DROP TABLE `tbl_activities`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_accounts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_accounts` MODIFY `account_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_accounts` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `tbl_accounts` DROP PRIMARY KEY;

DROP TABLE `tbl_accounts`;

# ---------------------------------------------------------------------- #
# Drop table "installer"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `installer` DROP PRIMARY KEY;

DROP TABLE `installer`;
