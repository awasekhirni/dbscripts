# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          billingprojectdb.dez                            #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 18:47                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "account_users"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `account_users` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `account_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "accounts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `accounts` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `org_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `country` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `street_address_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `street_address_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `province_or_state` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `postal_or_zip_code` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `profession` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone_business` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone_mobile` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `fax` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `time_zone` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `auto_dst_adjustment` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_code` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_symbol` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_first_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_last_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_billing_rate_per_hour` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_user_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `admin_password` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "activities"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `activities` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `trackable_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `trackable_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `owner_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `owner_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `key` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parameters` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `recipient_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `recipient_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `is_read` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "api_keys"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `api_keys` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `access_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `expires_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `active` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ar_internal_metadata"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `ar_internal_metadata` (
    `key` VARCHAR(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `value` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `category` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "client_contacts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `client_contacts` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `first_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `home_phone` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `mobile_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "clients"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `clients` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `organization_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `first_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `home_phone` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `mobile_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `send_invoice_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `country` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address_street1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address_street2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `province_state` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `postal_zip_code` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `industry` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_size` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `business_phone` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `fax` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `internal_notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `available_credit` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `billing_email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `vat_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `encrypted_password` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reset_password_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reset_password_sent_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `remember_created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sign_in_count` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `current_sign_in_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `current_sign_in_ip` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "companies"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `companies` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `account_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `contact_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `contact_title` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `country` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `city` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `street_address_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `street_address_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `province_or_state` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `postal_or_zipcode` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `phone_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `fax_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `logo` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_tag_line` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `memo` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `base_currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `color_code` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `abbreviation` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "companies_users"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `companies_users` (
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "company_email_templates"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `company_email_templates` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `template_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parent_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parent_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "company_entities"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `company_entities` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `entity_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `entity_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parent_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parent_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "credit_payments"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `credit_payments` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `credit_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `title` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `code` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `unit` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "delayed_jobs"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `delayed_jobs` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `priority` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `attempts` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `handler` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_error` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `run_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `locked_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `failed_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `locked_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `queue` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `recurring_profile_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_templates"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_templates` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `template_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email_from` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `subject` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `body` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `torder` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `send_email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `no_of_days` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `is_late_payment_reminder` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `cc` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `bcc` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "estimates"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `estimates` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `po_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_percentage` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `terms` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sub_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_tax_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense_categories"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense_categories` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expenses"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `expenses` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `expense_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `category_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `note` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "introductions"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `introductions` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `dashboard` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_invoice` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_estimate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_payment` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_client` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_item` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `new_tax` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `report` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `setting` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_table` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice_line_items"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice_line_items` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_unit_cost` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_quantity` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `actual_price` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `estimate_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoice_tasks"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoice_tasks` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `hours` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "invoices"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoices` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `po_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_percentage` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `terms` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sub_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_terms_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `due_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_invoice_status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_tax_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `parent_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `base_currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `conversion_rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `base_currency_equivalent_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `is_compact` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `batch_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `batch_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `is_batched` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "items"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `items` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `unit_cost` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `quantity` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `track_inventory` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `inventory` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `actual_price` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "line_item_taxes"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `line_item_taxes` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_line_item_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `percentage` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "logs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `logs` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `task_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `hours` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "mail_configs"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `mail_configs` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `address` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `port` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `authentication` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `enable_starttls_auto` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `from` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `openssl_verify_mode` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tls` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "oauth_access_grants"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_access_grants` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `resource_owner_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `application_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `expires_in` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `redirect_uri` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `revoked_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `scopes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "oauth_access_tokens"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_access_tokens` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `resource_owner_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `application_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `refresh_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `expires_in` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `revoked_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `scopes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "oauth_applications"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `oauth_applications` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `uid` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `secret` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `redirect_uri` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `scopes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_terms"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_terms` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `number_of_days` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_method` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `send_payment_notification` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `paid_full` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `credit_applied` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `can_create` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `can_update` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `can_delete` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `can_read` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `entity_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `role_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "project_tasks"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `project_tasks` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `task_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `start_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `due_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `hours` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `spent_time` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "projects"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `projects` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `manager_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `billing_method` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `total_hours` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "recurring_profile_line_items"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `recurring_profile_line_items` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `recurring_profile_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_unit_cost` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_quantity` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_1` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_2` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "recurring_profiles"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `recurring_profiles` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `first_invoice_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `po_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_percentage` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `frequency` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `occurrences` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `prorate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `prorate_for` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `gateway_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `client_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notes` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sub_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `tax_amount` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `discount_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_total` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `payment_terms_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_invoice_status` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sent_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sent_invoices` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `currency_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "recurring_schedules"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `recurring_schedules` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `next_invoice_date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `frequency` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `occurrences` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `delivery_option` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `invoice_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `generated_count` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `enable_recurring` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `resource_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `resource_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "schema_migrations"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `schema_migrations` (
    `version` BIGINT(20)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sent_emails"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `sent_emails` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `date` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sender` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `recipient` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `subject` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `content` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notification_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `notification_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sessions"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sessions` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `session_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `data` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `var` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `value` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `thing_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `thing_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sqlite_sequence"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `sqlite_sequence` (
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `seq` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "staffs"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `staffs` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `company_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tasks"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tasks` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `description` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `billable` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_by` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "taxes"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `taxes` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `percentage` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `deleted_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `provider_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "team_members"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `team_members` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `rate` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archive_number` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `archived_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `project_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `staff_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `encrypted_password` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reset_password_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `reset_password_sent_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `remember_created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `sign_in_count` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `current_sign_in_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `current_sign_in_ip` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `last_sign_in_ip` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `confirmation_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `confirmed_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `confirmation_sent_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `unconfirmed_email` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `updated_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `password_salt` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `user_name` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `current_company` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `authentication_token` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `avatar` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `role_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `have_all_companies_access` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "versions"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `versions` (
    `id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_type` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `item_id` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `event` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `whodunnit` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `object` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `created_at` VARCHAR(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
)
ENGINE = INNODB;
