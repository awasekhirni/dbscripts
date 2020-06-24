# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          projectmgmtdb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:24                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `attendance` DROP FOREIGN KEY `users_attendance`;

ALTER TABLE `checklist_items` DROP FOREIGN KEY `tasks_checklist_items`;

ALTER TABLE `clients` DROP FOREIGN KEY `lead_source_clients`;

ALTER TABLE `clients` DROP FOREIGN KEY `lead_status_clients`;

ALTER TABLE `clients` DROP FOREIGN KEY `leads_clients`;

ALTER TABLE `custom_field_values` DROP FOREIGN KEY `custom_fields_custom_field_values`;

ALTER TABLE `custom_widgets` DROP FOREIGN KEY `users_custom_widgets`;

ALTER TABLE `dashboards` DROP FOREIGN KEY `users_dashboards`;

ALTER TABLE `estimate_items` DROP FOREIGN KEY `estimates_estimate_items`;

ALTER TABLE `estimate_requests` DROP FOREIGN KEY `clients_estimate_requests`;

ALTER TABLE `estimate_requests` DROP FOREIGN KEY `estimate_forms_estimate_requests`;

ALTER TABLE `estimate_requests` DROP FOREIGN KEY `estimates_estimate_requests`;

ALTER TABLE `estimate_requests` DROP FOREIGN KEY `leads_estimate_requests`;

ALTER TABLE `estimates` DROP FOREIGN KEY `clients_estimates`;

ALTER TABLE `estimates` DROP FOREIGN KEY `estimate_requests_estimates`;

ALTER TABLE `estimates` DROP FOREIGN KEY `projects_estimates`;

ALTER TABLE `events` DROP FOREIGN KEY `clients_events`;

ALTER TABLE `expenses` DROP FOREIGN KEY `projects_expenses`;

ALTER TABLE `expenses` DROP FOREIGN KEY `users_expenses`;

ALTER TABLE `general_files` DROP FOREIGN KEY `clients_general_files`;

ALTER TABLE `general_files` DROP FOREIGN KEY `users_general_files`;

ALTER TABLE `invoice_items` DROP FOREIGN KEY `invoices_invoice_items`;

ALTER TABLE `invoice_payments` DROP FOREIGN KEY `invoices_invoice_payments`;

ALTER TABLE `invoice_payments` DROP FOREIGN KEY `payment_methods_invoice_payments`;

ALTER TABLE `invoices` DROP FOREIGN KEY `clients_invoices`;

ALTER TABLE `invoices` DROP FOREIGN KEY `projects_invoices`;

ALTER TABLE `leave_applications` DROP FOREIGN KEY `leave_types_leave_applications`;

ALTER TABLE `milestones` DROP FOREIGN KEY `projects_milestones`;

ALTER TABLE `notes` DROP FOREIGN KEY `clients_notes`;

ALTER TABLE `notes` DROP FOREIGN KEY `projects_notes`;

ALTER TABLE `notes` DROP FOREIGN KEY `users_notes`;

ALTER TABLE `notifications` DROP FOREIGN KEY `activity_logs_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `announcements_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `clients_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `estimate_requests_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `estimates_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `events_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `invoice_payments_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `invoices_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `leads_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `posts_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `project_comments_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `project_files_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `projects_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `tasks_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `ticket_comments_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `tickets_notifications`;

ALTER TABLE `notifications` DROP FOREIGN KEY `users_notifications`;

ALTER TABLE `project_comments` DROP FOREIGN KEY `projects_project_comments`;

ALTER TABLE `project_comments` DROP FOREIGN KEY `tasks_project_comments`;

ALTER TABLE `project_files` DROP FOREIGN KEY `projects_project_files`;

ALTER TABLE `project_members` DROP FOREIGN KEY `projects_project_members`;

ALTER TABLE `project_members` DROP FOREIGN KEY `users_project_members`;

ALTER TABLE `project_settings` DROP FOREIGN KEY `projects_project_settings`;

ALTER TABLE `project_time` DROP FOREIGN KEY `projects_project_time`;

ALTER TABLE `project_time` DROP FOREIGN KEY `tasks_project_time`;

ALTER TABLE `project_time` DROP FOREIGN KEY `users_project_time`;

ALTER TABLE `projects` DROP FOREIGN KEY `clients_projects`;

ALTER TABLE `projects` DROP FOREIGN KEY `estimates_projects`;

ALTER TABLE `social_links` DROP FOREIGN KEY `users_social_links`;

ALTER TABLE `tasks` DROP FOREIGN KEY `milestones_tasks`;

ALTER TABLE `tasks` DROP FOREIGN KEY `projects_tasks`;

ALTER TABLE `tasks` DROP FOREIGN KEY `tickets_tasks`;

ALTER TABLE `team_member_job_info` DROP FOREIGN KEY `users_team_member_job_info`;

ALTER TABLE `ticket_comments` DROP FOREIGN KEY `tickets_ticket_comments`;

ALTER TABLE `tickets` DROP FOREIGN KEY `clients_tickets`;

ALTER TABLE `tickets` DROP FOREIGN KEY `projects_tickets`;

ALTER TABLE `tickets` DROP FOREIGN KEY `tasks_tickets`;

ALTER TABLE `tickets` DROP FOREIGN KEY `ticket_types_tickets`;

ALTER TABLE `users` DROP FOREIGN KEY `clients_users`;

ALTER TABLE `users` DROP FOREIGN KEY `roles_users`;

# ---------------------------------------------------------------------- #
# Drop table "tickets"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tickets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tickets` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tickets` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tickets` ALTER COLUMN `assigned_to` DROP DEFAULT;

ALTER TABLE `tickets` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tickets` DROP PRIMARY KEY;

DROP TABLE `tickets`;

# ---------------------------------------------------------------------- #
# Drop table "ticket_comments"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticket_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ticket_comments` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `ticket_comments` DROP PRIMARY KEY;

DROP TABLE `ticket_comments`;

# ---------------------------------------------------------------------- #
# Drop table "tasks"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tasks` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tasks` ALTER COLUMN `milestone_id` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `points` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `repeat_every` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `no_of_cycles` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `recurring_task_id` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `no_of_cycles_completed` DROP DEFAULT;

ALTER TABLE `tasks` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `tasks` DROP PRIMARY KEY;

DROP TABLE `tasks`;

# ---------------------------------------------------------------------- #
# Drop table "projects"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `projects` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `projects` ALTER COLUMN `created_by` DROP DEFAULT;

ALTER TABLE `projects` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `projects` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `projects` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `projects` DROP PRIMARY KEY;

DROP TABLE `projects`;

# ---------------------------------------------------------------------- #
# Drop table "project_time"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `project_time` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `project_time` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `project_time` ALTER COLUMN `task_id` DROP DEFAULT;

ALTER TABLE `project_time` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `project_time` DROP PRIMARY KEY;

DROP TABLE `project_time`;

# ---------------------------------------------------------------------- #
# Drop table "project_settings"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `project_settings` ALTER COLUMN `deleted` DROP DEFAULT;

DROP TABLE `project_settings`;

# ---------------------------------------------------------------------- #
# Drop table "project_members"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `project_members` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `project_members` ALTER COLUMN `is_leader` DROP DEFAULT;

ALTER TABLE `project_members` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `project_members` DROP PRIMARY KEY;

DROP TABLE `project_members`;

# ---------------------------------------------------------------------- #
# Drop table "project_files"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `project_files` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `project_files` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `project_files` DROP PRIMARY KEY;

DROP TABLE `project_files`;

# ---------------------------------------------------------------------- #
# Drop table "project_comments"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `project_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `project_comments` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `project_comments` ALTER COLUMN `comment_id` DROP DEFAULT;

ALTER TABLE `project_comments` ALTER COLUMN `task_id` DROP DEFAULT;

ALTER TABLE `project_comments` ALTER COLUMN `file_id` DROP DEFAULT;

ALTER TABLE `project_comments` ALTER COLUMN `customer_feedback_id` DROP DEFAULT;

ALTER TABLE `project_comments` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `project_comments` DROP PRIMARY KEY;

DROP TABLE `project_comments`;

# ---------------------------------------------------------------------- #
# Drop table "notifications"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notifications` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notifications` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `notifications` DROP PRIMARY KEY;

DROP TABLE `notifications`;

# ---------------------------------------------------------------------- #
# Drop table "notes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notes` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `notes` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `notes` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `notes` ALTER COLUMN `is_public` DROP DEFAULT;

ALTER TABLE `notes` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `notes` DROP PRIMARY KEY;

DROP TABLE `notes`;

# ---------------------------------------------------------------------- #
# Drop table "milestones"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `milestones` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `milestones` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `milestones` DROP PRIMARY KEY;

DROP TABLE `milestones`;

# ---------------------------------------------------------------------- #
# Drop table "invoices"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoices` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoices` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `tax_id` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `tax_id2` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `recurring_invoice_id` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `repeat_every` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `no_of_cycles` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `no_of_cycles_completed` DROP DEFAULT;

ALTER TABLE `invoices` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `invoices` DROP PRIMARY KEY;

DROP TABLE `invoices`;

# ---------------------------------------------------------------------- #
# Drop table "invoice_payments"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoice_payments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoice_payments` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `invoice_payments` ALTER COLUMN `created_by` DROP DEFAULT;

ALTER TABLE `invoice_payments` DROP PRIMARY KEY;

DROP TABLE `invoice_payments`;

# ---------------------------------------------------------------------- #
# Drop table "invoice_items"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoice_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `invoice_items` ALTER COLUMN `unit_type` DROP DEFAULT;

ALTER TABLE `invoice_items` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `invoice_items` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `invoice_items` DROP PRIMARY KEY;

DROP TABLE `invoice_items`;

# ---------------------------------------------------------------------- #
# Drop table "expenses"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expenses` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expenses` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `expenses` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `expenses` ALTER COLUMN `tax_id` DROP DEFAULT;

ALTER TABLE `expenses` ALTER COLUMN `tax_id2` DROP DEFAULT;

ALTER TABLE `expenses` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `expenses` DROP PRIMARY KEY;

DROP TABLE `expenses`;

# ---------------------------------------------------------------------- #
# Drop table "estimates"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `estimates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `estimates` ALTER COLUMN `estimate_request_id` DROP DEFAULT;

ALTER TABLE `estimates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `estimates` ALTER COLUMN `tax_id` DROP DEFAULT;

ALTER TABLE `estimates` ALTER COLUMN `tax_id2` DROP DEFAULT;

ALTER TABLE `estimates` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `estimates` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `estimates` DROP PRIMARY KEY;

DROP TABLE `estimates`;

# ---------------------------------------------------------------------- #
# Drop table "estimate_requests"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `estimate_requests` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `estimate_requests` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `estimate_requests` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `estimate_requests` DROP PRIMARY KEY;

DROP TABLE `estimate_requests`;

# ---------------------------------------------------------------------- #
# Drop table "estimate_items"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `estimate_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `estimate_items` ALTER COLUMN `unit_type` DROP DEFAULT;

ALTER TABLE `estimate_items` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `estimate_items` DROP PRIMARY KEY;

DROP TABLE `estimate_items`;

# ---------------------------------------------------------------------- #
# Drop table "checklist_items"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `checklist_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `checklist_items` ALTER COLUMN `is_checked` DROP DEFAULT;

ALTER TABLE `checklist_items` ALTER COLUMN `task_id` DROP DEFAULT;

ALTER TABLE `checklist_items` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `checklist_items` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `checklist_items` DROP PRIMARY KEY;

DROP TABLE `checklist_items`;

# ---------------------------------------------------------------------- #
# Drop table "team_member_job_info"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `team_member_job_info` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `team_member_job_info` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `team_member_job_info` ALTER COLUMN `salary` DROP DEFAULT;

ALTER TABLE `team_member_job_info` DROP PRIMARY KEY;

DROP TABLE `team_member_job_info`;

# ---------------------------------------------------------------------- #
# Drop table "social_links"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `social_links` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `social_links` DROP PRIMARY KEY;

DROP TABLE `social_links`;

# ---------------------------------------------------------------------- #
# Drop table "general_files"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `general_files` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `general_files` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `general_files` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `general_files` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `general_files` DROP PRIMARY KEY;

DROP TABLE `general_files`;

# ---------------------------------------------------------------------- #
# Drop table "dashboards"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `dashboards` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `dashboards` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `dashboards` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `dashboards` DROP PRIMARY KEY;

DROP TABLE `dashboards`;

# ---------------------------------------------------------------------- #
# Drop table "custom_widgets"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_widgets` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `custom_widgets` ALTER COLUMN `show_title` DROP DEFAULT;

ALTER TABLE `custom_widgets` ALTER COLUMN `show_border` DROP DEFAULT;

ALTER TABLE `custom_widgets` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `custom_widgets` DROP PRIMARY KEY;

DROP TABLE `custom_widgets`;

# ---------------------------------------------------------------------- #
# Drop table "attendance"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `attendance` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `attendance` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `attendance` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `attendance` DROP PRIMARY KEY;

DROP TABLE `attendance`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `user_type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_admin` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `role_id` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_primary_contact` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `job_title` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `disable_login` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `gender` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `enable_web_notification` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `enable_email_notification` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "leave_applications"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `leave_applications` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `leave_applications` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `leave_applications` ALTER COLUMN `checked_by` DROP DEFAULT;

ALTER TABLE `leave_applications` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `leave_applications` DROP PRIMARY KEY;

DROP TABLE `leave_applications`;

# ---------------------------------------------------------------------- #
# Drop table "events"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `events` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `events` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `editable_google_event` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `repeat_every` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `no_of_cycles` DROP DEFAULT;

ALTER TABLE `events` DROP PRIMARY KEY;

DROP TABLE `events`;

# ---------------------------------------------------------------------- #
# Drop table "custom_field_values"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_field_values` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `custom_field_values` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `custom_field_values` DROP PRIMARY KEY;

DROP TABLE `custom_field_values`;

# ---------------------------------------------------------------------- #
# Drop table "clients"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `clients` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `clients` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `clients` ALTER COLUMN `is_lead` DROP DEFAULT;

ALTER TABLE `clients` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `clients` ALTER COLUMN `disable_online_payment` DROP DEFAULT;

ALTER TABLE `clients` DROP PRIMARY KEY;

DROP TABLE `clients`;

# ---------------------------------------------------------------------- #
# Drop table "to_do"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `to_do` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `to_do` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `to_do` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `to_do` DROP PRIMARY KEY;

DROP TABLE `to_do`;

# ---------------------------------------------------------------------- #
# Drop table "ticket_types"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticket_types` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ticket_types` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `ticket_types` DROP PRIMARY KEY;

DROP TABLE `ticket_types`;

# ---------------------------------------------------------------------- #
# Drop table "team"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `team` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `team` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `team` DROP PRIMARY KEY;

DROP TABLE `team`;

# ---------------------------------------------------------------------- #
# Drop table "taxes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `taxes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `taxes` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `taxes` DROP PRIMARY KEY;

DROP TABLE `taxes`;

# ---------------------------------------------------------------------- #
# Drop table "task_status"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `task_status` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `task_status` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `task_status` DROP PRIMARY KEY;

DROP TABLE `task_status`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `deleted` DROP DEFAULT;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `roles` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `posts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `posts` DROP PRIMARY KEY;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "paypal_ipn"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `paypal_ipn` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `paypal_ipn` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `paypal_ipn` DROP PRIMARY KEY;

DROP TABLE `paypal_ipn`;

# ---------------------------------------------------------------------- #
# Drop table "payment_methods"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_methods` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payment_methods` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `online_payable` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `available_on_invoice` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `minimum_payment_amount` DROP DEFAULT;

ALTER TABLE `payment_methods` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `payment_methods` DROP PRIMARY KEY;

DROP TABLE `payment_methods`;

# ---------------------------------------------------------------------- #
# Drop table "notification_settings"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `notification_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `notification_settings` ALTER COLUMN `enable_email` DROP DEFAULT;

ALTER TABLE `notification_settings` ALTER COLUMN `enable_web` DROP DEFAULT;

ALTER TABLE `notification_settings` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `notification_settings` DROP PRIMARY KEY;

DROP TABLE `notification_settings`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `messages` ALTER COLUMN `subject` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `message_id` DROP DEFAULT;

ALTER TABLE `messages` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "leave_types"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `leave_types` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `leave_types` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `leave_types` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `leave_types` DROP PRIMARY KEY;

DROP TABLE `leave_types`;

# ---------------------------------------------------------------------- #
# Drop table "leads"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `leads` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `leads` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `leads` DROP PRIMARY KEY;

DROP TABLE `leads`;

# ---------------------------------------------------------------------- #
# Drop table "lead_status"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `lead_status` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `lead_status` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `lead_status` DROP PRIMARY KEY;

DROP TABLE `lead_status`;

# ---------------------------------------------------------------------- #
# Drop table "lead_source"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `lead_source` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `lead_source` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `lead_source` DROP PRIMARY KEY;

DROP TABLE `lead_source`;

# ---------------------------------------------------------------------- #
# Drop table "items"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `items` ALTER COLUMN `unit_type` DROP DEFAULT;

ALTER TABLE `items` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `items` DROP PRIMARY KEY;

DROP TABLE `items`;

# ---------------------------------------------------------------------- #
# Drop table "help_categories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `help_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `help_categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `help_categories` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `help_categories` DROP PRIMARY KEY;

DROP TABLE `help_categories`;

# ---------------------------------------------------------------------- #
# Drop table "help_articles"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `help_articles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `help_articles` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `help_articles` ALTER COLUMN `total_views` DROP DEFAULT;

ALTER TABLE `help_articles` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `help_articles` DROP PRIMARY KEY;

DROP TABLE `help_articles`;

# ---------------------------------------------------------------------- #
# Drop table "expense_categories"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expense_categories` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `expense_categories` DROP PRIMARY KEY;

DROP TABLE `expense_categories`;

# ---------------------------------------------------------------------- #
# Drop table "estimate_forms"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `estimate_forms` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `estimate_forms` ALTER COLUMN `public` DROP DEFAULT;

ALTER TABLE `estimate_forms` ALTER COLUMN `enable_attachment` DROP DEFAULT;

ALTER TABLE `estimate_forms` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `estimate_forms` DROP PRIMARY KEY;

DROP TABLE `estimate_forms`;

# ---------------------------------------------------------------------- #
# Drop table "email_templates"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_templates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_templates` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `email_templates` DROP PRIMARY KEY;

DROP TABLE `email_templates`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `custom_fields` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `custom_fields` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `show_in_table` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `show_in_invoice` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `show_in_estimate` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `visible_to_admins_only` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `hide_from_clients` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `custom_fields` DROP PRIMARY KEY;

DROP TABLE `custom_fields`;

# ---------------------------------------------------------------------- #
# Drop table "client_groups"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `client_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `client_groups` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `client_groups` DROP PRIMARY KEY;

DROP TABLE `client_groups`;

# ---------------------------------------------------------------------- #
# Drop table "ci_sessions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ci_sessions` ALTER COLUMN `timestamp` DROP DEFAULT;

DROP TABLE `ci_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "announcements"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `announcements` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `announcements` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `announcements` DROP PRIMARY KEY;

DROP TABLE `announcements`;

# ---------------------------------------------------------------------- #
# Drop table "activity_logs"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `activity_logs` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `activity_logs` ALTER COLUMN `log_type_id` DROP DEFAULT;

ALTER TABLE `activity_logs` ALTER COLUMN `log_for` DROP DEFAULT;

ALTER TABLE `activity_logs` ALTER COLUMN `log_for_id` DROP DEFAULT;

ALTER TABLE `activity_logs` ALTER COLUMN `deleted` DROP DEFAULT;

ALTER TABLE `activity_logs` DROP PRIMARY KEY;

DROP TABLE `activity_logs`;
