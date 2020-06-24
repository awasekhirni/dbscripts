# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crmeins.dez                                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:50                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "tblactivity_log"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblactivity_log` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME NOT NULL,
    `staffid` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `staffid` ON `tblactivity_log` (`staffid`);

# ---------------------------------------------------------------------- #
# Add table "tblannouncements"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblannouncements` (
    `announcementid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `showtousers` INTEGER(11) NOT NULL,
    `showtostaff` INTEGER(11) NOT NULL,
    `showname` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    `userid` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`announcementid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblclients"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblclients` (
    `userid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `company` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vat` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phonenumber` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` INTEGER(11) NOT NULL DEFAULT 0,
    `city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `website` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `datecreated` DATETIME NOT NULL,
    `active` INTEGER(11) NOT NULL DEFAULT 1,
    `leadid` INTEGER(11),
    `billing_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` INTEGER(11) DEFAULT 0,
    `shipping_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` INTEGER(11) DEFAULT 0,
    `longitude` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `latitude` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `default_language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `default_currency` INTEGER(11) NOT NULL DEFAULT 0,
    `show_primary_contact` INTEGER(11) NOT NULL DEFAULT 0,
    `stripe_id` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `registration_confirmed` INTEGER(11) NOT NULL DEFAULT 1,
    `addedfrom` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`userid`)
)
ENGINE = INNODB;

CREATE INDEX `country` ON `tblclients` (`country`);

CREATE INDEX `leadid` ON `tblclients` (`leadid`);

CREATE INDEX `company` ON `tblclients` (`company`);

# ---------------------------------------------------------------------- #
# Add table "tblconsent_purposes"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblconsent_purposes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_created` DATETIME NOT NULL,
    `last_updated` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblconsents"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblconsents` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `action` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME NOT NULL,
    `ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    `lead_id` INTEGER(11) NOT NULL DEFAULT 0,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `opt_in_purpose_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `purpose_id` INTEGER(11) NOT NULL,
    `staff_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `purpose_id` ON `tblconsents` (`purpose_id`);

CREATE INDEX `contact_id` ON `tblconsents` (`contact_id`);

CREATE INDEX `lead_id` ON `tblconsents` (`lead_id`);

# ---------------------------------------------------------------------- #
# Add table "tblcontact_permissions"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontact_permissions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `permission_id` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcontacts"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontacts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(11) NOT NULL,
    `is_primary` INTEGER(11) NOT NULL DEFAULT 1,
    `firstname` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lastname` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phonenumber` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `datecreated` DATETIME NOT NULL,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `new_pass_key` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `new_pass_key_requested` DATETIME,
    `email_verified_at` DATETIME,
    `email_verification_key` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_verification_sent_at` DATETIME,
    `last_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_login` DATETIME,
    `last_password_change` DATETIME,
    `active` TINYINT(1) NOT NULL DEFAULT 1,
    `profile_image` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `direction` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoice_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `estimate_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `credit_note_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `contract_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `task_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `project_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `ticket_emails` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `userid` ON `tblcontacts` (`userid`);

CREATE INDEX `firstname` ON `tblcontacts` (`firstname`);

CREATE INDEX `lastname` ON `tblcontacts` (`lastname`);

CREATE INDEX `email` ON `tblcontacts` (`email`);

CREATE INDEX `is_primary` ON `tblcontacts` (`is_primary`);

# ---------------------------------------------------------------------- #
# Add table "tblcontract_renewals"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontract_renewals` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `contractid` INTEGER(11) NOT NULL,
    `old_start_date` DATE NOT NULL,
    `new_start_date` DATE NOT NULL,
    `old_end_date` DATE,
    `new_end_date` DATE,
    `old_value` DECIMAL(15,2),
    `new_value` DECIMAL(15,2),
    `date_renewed` DATETIME NOT NULL,
    `renewed_by` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `renewed_by_staff_id` INTEGER(11) NOT NULL DEFAULT 0,
    `is_on_old_expiry_notified` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcontracts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontracts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client` INTEGER(11) NOT NULL,
    `datestart` DATE,
    `dateend` DATE,
    `contract_type` INTEGER(11),
    `addedfrom` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    `isexpirynotified` INTEGER(11) NOT NULL DEFAULT 0,
    `contract_value` DECIMAL(15,2),
    `trash` TINYINT(1) DEFAULT 0,
    `not_visible_to_client` TINYINT(1) NOT NULL DEFAULT 0,
    `hash` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signed` TINYINT(1) NOT NULL DEFAULT 0,
    `signature` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `marked_as_signed` TINYINT(1) NOT NULL DEFAULT 0,
    `acceptance_firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_date` DATETIME,
    `acceptance_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `client` ON `tblcontracts` (`client`);

CREATE INDEX `contract_type` ON `tblcontracts` (`contract_type`);

# ---------------------------------------------------------------------- #
# Add table "tblcontracts_types"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontracts_types` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcountries"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcountries` (
    `country_id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `iso2` CHAR(2) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `short_name` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `long_name` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `iso3` CHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `numcode` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `un_member` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `calling_code` VARCHAR(8) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cctld` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`country_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcreditnotes"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcreditnotes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `clientid` INTEGER(11) NOT NULL,
    `deleted_customer_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `number` INTEGER(11) NOT NULL,
    `prefix` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `number_format` INTEGER(11) NOT NULL DEFAULT 1,
    `datecreated` DATETIME NOT NULL,
    `date` DATE NOT NULL,
    `adminnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `terms` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `clientnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` INTEGER(11) NOT NULL,
    `subtotal` DECIMAL(15,2) NOT NULL,
    `total_tax` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `total` DECIMAL(15,2) NOT NULL,
    `adjustment` DECIMAL(15,2),
    `addedfrom` INTEGER(11),
    `status` INTEGER(11) DEFAULT 1,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `discount_percent` DECIMAL(15,2) DEFAULT 0.00,
    `discount_total` DECIMAL(15,2) DEFAULT 0.00,
    `discount_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `billing_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` INTEGER(11),
    `shipping_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` INTEGER(11),
    `include_shipping` TINYINT(1) NOT NULL,
    `show_shipping_on_credit_note` TINYINT(1) NOT NULL DEFAULT 1,
    `show_quantity_as` INTEGER(11) NOT NULL DEFAULT 1,
    `reference_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `currency` ON `tblcreditnotes` (`currency`);

CREATE INDEX `clientid` ON `tblcreditnotes` (`clientid`);

CREATE INDEX `project_id` ON `tblcreditnotes` (`project_id`);

# ---------------------------------------------------------------------- #
# Add table "tblcurrencies"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcurrencies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `symbol` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `decimal_separator` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `thousand_separator` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `placement` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `isdefault` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcustomers_groups"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcustomers_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tblcustomers_groups` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tblcustomfields"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcustomfields` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fieldto` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `options` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `display_inline` TINYINT(1) NOT NULL DEFAULT 0,
    `field_order` INTEGER(11) DEFAULT 0,
    `active` INTEGER(11) NOT NULL DEFAULT 1,
    `show_on_pdf` INTEGER(11) NOT NULL DEFAULT 0,
    `show_on_ticket_form` TINYINT(1) NOT NULL DEFAULT 0,
    `only_admin` TINYINT(1) NOT NULL DEFAULT 0,
    `show_on_table` TINYINT(1) NOT NULL DEFAULT 0,
    `show_on_client_portal` INTEGER(11) NOT NULL DEFAULT 0,
    `disalow_client_to_edit` INTEGER(11) NOT NULL DEFAULT 0,
    `bs_column` INTEGER(11) NOT NULL DEFAULT 12,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcustomfieldsvalues"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcustomfieldsvalues` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `relid` INTEGER(11) NOT NULL,
    `fieldid` INTEGER(11) NOT NULL,
    `fieldto` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `relid` ON `tblcustomfieldsvalues` (`relid`);

CREATE INDEX `fieldto` ON `tblcustomfieldsvalues` (`fieldto`);

CREATE INDEX `fieldid` ON `tblcustomfieldsvalues` (`fieldid`);

# ---------------------------------------------------------------------- #
# Add table "tbldepartments"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbldepartments` (
    `departmentid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `imap_username` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_from_header` TINYINT(1) NOT NULL DEFAULT 0,
    `host` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `encryption` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `delete_after_import` INTEGER(11) NOT NULL DEFAULT 0,
    `calendar_id` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `hidefromclient` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`departmentid`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tbldepartments` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tbldismissed_announcements"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbldismissed_announcements` (
    `dismissedannouncementid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `announcementid` INTEGER(11) NOT NULL,
    `staff` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`dismissedannouncementid`)
)
ENGINE = INNODB;

CREATE INDEX `announcementid` ON `tbldismissed_announcements` (`announcementid`);

CREATE INDEX `staff` ON `tbldismissed_announcements` (`staff`);

CREATE INDEX `userid` ON `tbldismissed_announcements` (`userid`);

# ---------------------------------------------------------------------- #
# Add table "tblemailtemplates"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblemailtemplates` (
    `emailtemplateid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fromname` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fromemail` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `plaintext` INTEGER(11) NOT NULL DEFAULT 0,
    `active` TINYINT(4) NOT NULL DEFAULT 0,
    `order` INTEGER(11) NOT NULL,
    PRIMARY KEY (`emailtemplateid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblestimates"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblestimates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sent` TINYINT(1) NOT NULL DEFAULT 0,
    `datesend` DATETIME,
    `clientid` INTEGER(11) NOT NULL,
    `deleted_customer_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `number` INTEGER(11) NOT NULL,
    `prefix` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `number_format` INTEGER(11) NOT NULL DEFAULT 0,
    `hash` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `datecreated` DATETIME NOT NULL,
    `date` DATE NOT NULL,
    `expirydate` DATE,
    `currency` INTEGER(11) NOT NULL,
    `subtotal` DECIMAL(15,2) NOT NULL,
    `total_tax` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `total` DECIMAL(15,2) NOT NULL,
    `adjustment` DECIMAL(15,2),
    `addedfrom` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `clientnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `adminnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `discount_percent` DECIMAL(15,2) DEFAULT 0.00,
    `discount_total` DECIMAL(15,2) DEFAULT 0.00,
    `discount_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoiceid` INTEGER(11),
    `invoiced_date` DATETIME,
    `terms` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reference_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sale_agent` INTEGER(11) NOT NULL DEFAULT 0,
    `billing_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` INTEGER(11),
    `shipping_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` INTEGER(11),
    `include_shipping` TINYINT(1) NOT NULL,
    `show_shipping_on_estimate` TINYINT(1) NOT NULL DEFAULT 1,
    `show_quantity_as` INTEGER(11) NOT NULL DEFAULT 1,
    `pipeline_order` INTEGER(11) NOT NULL DEFAULT 0,
    `is_expiry_notified` INTEGER(11) NOT NULL DEFAULT 0,
    `acceptance_firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_date` DATETIME,
    `acceptance_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signature` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `clientid` ON `tblestimates` (`clientid`);

CREATE INDEX `currency` ON `tblestimates` (`currency`);

CREATE INDEX `project_id` ON `tblestimates` (`project_id`);

CREATE INDEX `sale_agent` ON `tblestimates` (`sale_agent`);

# ---------------------------------------------------------------------- #
# Add table "tblevents"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblevents` (
    `eventid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `userid` INTEGER(11) NOT NULL,
    `start` DATETIME NOT NULL,
    `end` DATETIME,
    `public` INTEGER(11) NOT NULL DEFAULT 0,
    `color` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `isstartnotified` TINYINT(1) NOT NULL DEFAULT 0,
    `reminder_before` INTEGER(11) NOT NULL DEFAULT 0,
    `reminder_before_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`eventid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblexpenses"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblexpenses` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category` INTEGER(11) NOT NULL,
    `currency` INTEGER(11) NOT NULL,
    `amount` DECIMAL(15,2) NOT NULL,
    `tax` INTEGER(11),
    `tax2` INTEGER(11) NOT NULL DEFAULT 0,
    `reference_no` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `expense_name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `clientid` INTEGER(11) NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `billable` INTEGER(11) DEFAULT 0,
    `invoiceid` INTEGER(11),
    `paymentmode` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATE NOT NULL,
    `recurring_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `repeat_every` INTEGER(11),
    `recurring` INTEGER(11) NOT NULL DEFAULT 0,
    `cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `total_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `custom_recurring` INTEGER(11) NOT NULL DEFAULT 0,
    `last_recurring_date` DATE,
    `create_invoice_billable` TINYINT(1),
    `send_invoice_to_customer` TINYINT(1) NOT NULL,
    `recurring_from` INTEGER(11),
    `dateadded` DATETIME NOT NULL,
    `addedfrom` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `clientid` ON `tblexpenses` (`clientid`);

CREATE INDEX `project_id` ON `tblexpenses` (`project_id`);

CREATE INDEX `category` ON `tblexpenses` (`category`);

CREATE INDEX `currency` ON `tblexpenses` (`currency`);

# ---------------------------------------------------------------------- #
# Add table "tblexpenses_categories"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblexpenses_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblform_questions"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblform_questions` (
    `questionid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `question` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `question_order` INTEGER(11) NOT NULL,
    PRIMARY KEY (`questionid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblgdpr_requests"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblgdpr_requests` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `clientid` INTEGER(11) NOT NULL DEFAULT 0,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    `lead_id` INTEGER(11) NOT NULL DEFAULT 0,
    `request_type` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `request_date` DATETIME NOT NULL,
    `request_from` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblinvoicepaymentrecords"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblinvoicepaymentrecords` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoiceid` INTEGER(11) NOT NULL,
    `amount` DECIMAL(15,2) NOT NULL,
    `paymentmode` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paymentmethod` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATE NOT NULL,
    `daterecorded` DATETIME NOT NULL,
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `transactionid` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `invoiceid` ON `tblinvoicepaymentrecords` (`invoiceid`);

CREATE INDEX `paymentmethod` ON `tblinvoicepaymentrecords` (`paymentmethod`);

# ---------------------------------------------------------------------- #
# Add table "tblinvoices"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblinvoices` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sent` TINYINT(1) NOT NULL DEFAULT 0,
    `datesend` DATETIME,
    `clientid` INTEGER(11) NOT NULL,
    `deleted_customer_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `number` INTEGER(11) NOT NULL,
    `prefix` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `number_format` INTEGER(11) NOT NULL DEFAULT 0,
    `datecreated` DATETIME NOT NULL,
    `date` DATE NOT NULL,
    `duedate` DATE,
    `currency` INTEGER(11) NOT NULL,
    `subtotal` DECIMAL(15,2) NOT NULL,
    `total_tax` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `total` DECIMAL(15,2) NOT NULL,
    `adjustment` DECIMAL(15,2),
    `addedfrom` INTEGER(11),
    `hash` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) DEFAULT 1,
    `clientnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `adminnote` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_overdue_reminder` DATE,
    `cancel_overdue_reminders` INTEGER(11) NOT NULL DEFAULT 0,
    `allowed_payment_modes` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `token` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `discount_percent` DECIMAL(15,2) DEFAULT 0.00,
    `discount_total` DECIMAL(15,2) DEFAULT 0.00,
    `discount_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `recurring` INTEGER(11) NOT NULL DEFAULT 0,
    `recurring_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `custom_recurring` TINYINT(1) NOT NULL DEFAULT 0,
    `cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `total_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `is_recurring_from` INTEGER(11),
    `last_recurring_date` DATE,
    `terms` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sale_agent` INTEGER(11) NOT NULL DEFAULT 0,
    `billing_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` INTEGER(11),
    `shipping_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` INTEGER(11),
    `include_shipping` TINYINT(1) NOT NULL,
    `show_shipping_on_invoice` TINYINT(1) NOT NULL DEFAULT 1,
    `show_quantity_as` INTEGER(11) NOT NULL DEFAULT 1,
    `project_id` INTEGER(11) DEFAULT 0,
    `subscription_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `currency` ON `tblinvoices` (`currency`);

CREATE INDEX `clientid` ON `tblinvoices` (`clientid`);

CREATE INDEX `project_id` ON `tblinvoices` (`project_id`);

CREATE INDEX `sale_agent` ON `tblinvoices` (`sale_agent`);

CREATE INDEX `total` ON `tblinvoices` (`total`);

# ---------------------------------------------------------------------- #
# Add table "tblitem_tax"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblitem_tax` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `itemid` INTEGER(11) NOT NULL,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `taxrate` DECIMAL(15,2) NOT NULL,
    `taxname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `itemid` ON `tblitem_tax` (`itemid`);

# ---------------------------------------------------------------------- #
# Add table "tblitemable"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblitemable` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `long_description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `qty` DECIMAL(15,2) NOT NULL,
    `rate` DECIMAL(15,2) NOT NULL,
    `unit` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `item_order` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tblitemable` (`rel_id`);

CREATE INDEX `rel_type` ON `tblitemable` (`rel_type`);

CREATE INDEX `qty` ON `tblitemable` (`qty`);

CREATE INDEX `rate` ON `tblitemable` (`rate`);

# ---------------------------------------------------------------------- #
# Add table "tblitems_groups"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblitems_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblknowledge_base"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblknowledge_base` (
    `articleid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `articlegroup` INTEGER(11) NOT NULL,
    `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `slug` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `active` TINYINT(4) NOT NULL,
    `datecreated` DATETIME NOT NULL,
    `article_order` INTEGER(11) NOT NULL DEFAULT 0,
    `staff_article` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`articleid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblknowledge_base_groups"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblknowledge_base_groups` (
    `groupid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `group_slug` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `active` TINYINT(4) NOT NULL,
    `color` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#28B8DA',
    `group_order` INTEGER(11) DEFAULT 0,
    PRIMARY KEY (`groupid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbllead_integration_emails"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbllead_integration_emails` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dateadded` DATETIME NOT NULL,
    `leadid` INTEGER(11) NOT NULL,
    `emailid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblleads"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblleads` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `hash` VARCHAR(65) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `title` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` INTEGER(11) NOT NULL DEFAULT 0,
    `zip` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    `dateadded` DATETIME NOT NULL,
    `from_form_id` INTEGER(11) NOT NULL DEFAULT 0,
    `status` INTEGER(11) NOT NULL,
    `source` INTEGER(11) NOT NULL,
    `lastcontact` DATETIME,
    `dateassigned` DATE,
    `last_status_change` DATETIME,
    `addedfrom` INTEGER(11) NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `website` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `leadorder` INTEGER(11) DEFAULT 1,
    `phonenumber` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_converted` DATETIME,
    `lost` TINYINT(1) NOT NULL DEFAULT 0,
    `junk` INTEGER(11) NOT NULL DEFAULT 0,
    `last_lead_status` INTEGER(11) NOT NULL DEFAULT 0,
    `is_imported_from_email_integration` TINYINT(1) NOT NULL DEFAULT 0,
    `email_integration_uid` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_public` TINYINT(1) NOT NULL DEFAULT 0,
    `default_language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tblleads` (`name`);

CREATE INDEX `company` ON `tblleads` (`company`);

CREATE INDEX `email` ON `tblleads` (`email`);

CREATE INDEX `assigned` ON `tblleads` (`assigned`);

CREATE INDEX `status` ON `tblleads` (`status`);

CREATE INDEX `source` ON `tblleads` (`source`);

CREATE INDEX `lastcontact` ON `tblleads` (`lastcontact`);

CREATE INDEX `dateadded` ON `tblleads` (`dateadded`);

CREATE INDEX `leadorder` ON `tblleads` (`leadorder`);

CREATE INDEX `from_form_id` ON `tblleads` (`from_form_id`);

# ---------------------------------------------------------------------- #
# Add table "tblleads_email_integration"                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblleads_email_integration` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
    `active` INTEGER(11) NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `imap_server` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `check_every` INTEGER(11) NOT NULL DEFAULT 5,
    `responsible` INTEGER(11) NOT NULL,
    `lead_source` INTEGER(11) NOT NULL,
    `lead_status` INTEGER(11) NOT NULL,
    `encryption` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `folder` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_run` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notify_lead_imported` TINYINT(1) NOT NULL DEFAULT 1,
    `notify_lead_contact_more_times` TINYINT(1) NOT NULL DEFAULT 1,
    `notify_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notify_ids` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mark_public` INTEGER(11) NOT NULL DEFAULT 0,
    `only_loop_on_unseen_emails` TINYINT(1) NOT NULL DEFAULT 1,
    `delete_after_import` INTEGER(11) NOT NULL DEFAULT 0,
    `create_task_if_customer` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblleads_sources"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblleads_sources` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tblleads_sources` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tblleads_status"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblleads_status` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statusorder` INTEGER(11),
    `color` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#28B8DA',
    `isdefault` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tblleads_status` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tblmail_queue"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblmail_queue` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `engine` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cc` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bcc` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `alt_message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` ENUM('pending','sending','sent','failed') COLLATE utf8_general_ci,
    `date` DATETIME,
    `headers` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachments` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblmigrations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblmigrations` (
    `version` BIGINT(20) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblmilestones"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblmilestones` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description_visible_to_customer` TINYINT(1) DEFAULT 0,
    `due_date` DATE NOT NULL,
    `project_id` INTEGER(11) NOT NULL,
    `color` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `milestone_order` INTEGER(11) NOT NULL DEFAULT 0,
    `datecreated` DATE NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblmodules"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblmodules` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `module_name` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `installed_version` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `active` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblnewsfeed_posts"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnewsfeed_posts` (
    `postid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `creator` INTEGER(11) NOT NULL,
    `datecreated` DATETIME NOT NULL,
    `visibility` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pinned` INTEGER(11) NOT NULL,
    `datepinned` DATETIME,
    PRIMARY KEY (`postid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblnotes"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnotes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_contacted` DATETIME,
    `addedfrom` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tblnotes` (`rel_id`);

CREATE INDEX `rel_type` ON `tblnotes` (`rel_type`);

# ---------------------------------------------------------------------- #
# Add table "tblnotifications"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnotifications` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `isread` INTEGER(11) NOT NULL DEFAULT 0,
    `isread_inline` TINYINT(1) NOT NULL DEFAULT 0,
    `date` DATETIME NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fromuserid` INTEGER(11) NOT NULL,
    `fromclientid` INTEGER(11) NOT NULL DEFAULT 0,
    `from_fullname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `touserid` INTEGER(11) NOT NULL,
    `fromcompany` INTEGER(11),
    `link` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `additional_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbloptions"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbloptions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `autoload` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tbloptions` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tblpayment_modes"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblpayment_modes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `show_on_pdf` INTEGER(11) NOT NULL DEFAULT 0,
    `invoices_only` INTEGER(11) NOT NULL DEFAULT 0,
    `expenses_only` INTEGER(11) NOT NULL DEFAULT 0,
    `selected_by_default` INTEGER(11) NOT NULL DEFAULT 1,
    `active` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblproject_settings"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproject_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `project_id` ON `tblproject_settings` (`project_id`);

# ---------------------------------------------------------------------- #
# Add table "tblprojects"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblprojects` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `clientid` INTEGER(11) NOT NULL,
    `billing_type` INTEGER(11) NOT NULL,
    `start_date` DATE NOT NULL,
    `deadline` DATE,
    `project_created` DATE NOT NULL,
    `date_finished` DATETIME,
    `progress` INTEGER(11) DEFAULT 0,
    `progress_from_tasks` INTEGER(11) NOT NULL DEFAULT 1,
    `project_cost` DECIMAL(15,2),
    `project_rate_per_hour` DECIMAL(15,2),
    `estimated_hours` DECIMAL(15,2),
    `addedfrom` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `clientid` ON `tblprojects` (`clientid`);

CREATE INDEX `name` ON `tblprojects` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tblproposals"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproposals` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `addedfrom` INTEGER(11) NOT NULL,
    `datecreated` DATETIME NOT NULL,
    `total` DECIMAL(15,2),
    `subtotal` DECIMAL(15,2) NOT NULL,
    `total_tax` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `adjustment` DECIMAL(15,2),
    `discount_percent` DECIMAL(15,2) NOT NULL,
    `discount_total` DECIMAL(15,2) NOT NULL,
    `discount_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `show_quantity_as` INTEGER(11) NOT NULL DEFAULT 1,
    `currency` INTEGER(11) NOT NULL,
    `open_till` DATE,
    `date` DATE NOT NULL,
    `rel_id` INTEGER(11),
    `rel_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assigned` INTEGER(11),
    `hash` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `proposal_to` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` INTEGER(11) NOT NULL DEFAULT 0,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `allow_comments` TINYINT(1) NOT NULL DEFAULT 1,
    `status` INTEGER(11) NOT NULL,
    `estimate_id` INTEGER(11),
    `invoice_id` INTEGER(11),
    `date_converted` DATETIME,
    `pipeline_order` INTEGER(11) NOT NULL DEFAULT 0,
    `is_expiry_notified` INTEGER(11) NOT NULL DEFAULT 0,
    `acceptance_firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `acceptance_date` DATETIME,
    `acceptance_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signature` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblrelated_items"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblrelated_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `item_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblreminders"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblreminders` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATETIME NOT NULL,
    `isnotified` INTEGER(11) NOT NULL DEFAULT 0,
    `rel_id` INTEGER(11) NOT NULL,
    `staff` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notify_by_email` INTEGER(11) NOT NULL DEFAULT 1,
    `creator` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tblreminders` (`rel_id`);

CREATE INDEX `rel_type` ON `tblreminders` (`rel_type`);

CREATE INDEX `staff` ON `tblreminders` (`staff`);

# ---------------------------------------------------------------------- #
# Add table "tblroles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblroles` (
    `roleid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `permissions` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`roleid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblsales_activity"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblsales_activity` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rel_id` INTEGER(11) NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `additional_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `staffid` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `full_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblscheduled_emails"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblscheduled_emails` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `scheduled_at` DATETIME NOT NULL,
    `contacts` VARCHAR(197) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cc` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attach_pdf` TINYINT(1) NOT NULL DEFAULT 1,
    `template` VARCHAR(197) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblservices"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblservices` (
    `serviceid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`serviceid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblsessions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblsessions` (
    `id` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `tblsessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "tblshared_customer_files"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblshared_customer_files` (
    `file_id` INTEGER(11) NOT NULL,
    `contact_id` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblspam_filters"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblspam_filters` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `rel_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblstaff"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblstaff` (
    `staffid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `facebook` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `linkedin` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phonenumber` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `skype` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `datecreated` DATETIME NOT NULL,
    `profile_image` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_login` DATETIME,
    `last_activity` DATETIME,
    `last_password_change` DATETIME,
    `new_pass_key` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `new_pass_key_requested` DATETIME,
    `admin` INTEGER(11) NOT NULL DEFAULT 0,
    `role` INTEGER(11),
    `active` INTEGER(11) NOT NULL DEFAULT 1,
    `default_language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `direction` VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `media_path_slug` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_not_staff` INTEGER(11) NOT NULL DEFAULT 0,
    `hourly_rate` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `two_factor_auth_enabled` TINYINT(1) DEFAULT 0,
    `two_factor_auth_code` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `two_factor_auth_code_requested` DATETIME,
    `email_signature` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`staffid`)
)
ENGINE = INNODB;

CREATE INDEX `firstname` ON `tblstaff` (`firstname`);

CREATE INDEX `lastname` ON `tblstaff` (`lastname`);

# ---------------------------------------------------------------------- #
# Add table "tblstaff_departments"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblstaff_departments` (
    `staffdepartmentid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `staffid` INTEGER(11) NOT NULL,
    `departmentid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`staffdepartmentid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblstaff_permissions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblstaff_permissions` (
    `staff_id` INTEGER(11) NOT NULL,
    `feature` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `capability` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblsubscriptions"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblsubscriptions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description_in_item` TINYINT(1) NOT NULL DEFAULT 0,
    `clientid` INTEGER(11) NOT NULL,
    `date` DATE,
    `terms` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` INTEGER(11) NOT NULL,
    `tax_id` INTEGER(11) NOT NULL DEFAULT 0,
    `stripe_tax_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stripe_plan_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stripe_subscription_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `next_billing_cycle` BIGINT(20),
    `ends_at` BIGINT(20),
    `status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `quantity` INTEGER(11) NOT NULL DEFAULT 1,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `hash` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATETIME NOT NULL,
    `created_from` INTEGER(11) NOT NULL,
    `date_subscribed` DATETIME,
    `in_test_environment` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `clientid` ON `tblsubscriptions` (`clientid`);

CREATE INDEX `currency` ON `tblsubscriptions` (`currency`);

CREATE INDEX `tax_id` ON `tblsubscriptions` (`tax_id`);

# ---------------------------------------------------------------------- #
# Add table "tbltaggables"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltaggables` (
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tag_id` INTEGER(11) NOT NULL,
    `tag_order` INTEGER(11) NOT NULL DEFAULT 0
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tbltaggables` (`rel_id`);

CREATE INDEX `rel_type` ON `tbltaggables` (`rel_type`);

CREATE INDEX `tag_id` ON `tbltaggables` (`tag_id`);

# ---------------------------------------------------------------------- #
# Add table "tbltags"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltags` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `name` ON `tbltags` (`name`);

# ---------------------------------------------------------------------- #
# Add table "tbltask_assigned"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltask_assigned` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `staffid` INTEGER(11) NOT NULL,
    `taskid` INTEGER(11) NOT NULL,
    `assigned_from` INTEGER(11) NOT NULL DEFAULT 0,
    `is_assigned_from_contact` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `taskid` ON `tbltask_assigned` (`taskid`);

CREATE INDEX `staffid` ON `tbltask_assigned` (`staffid`);

# ---------------------------------------------------------------------- #
# Add table "tbltask_checklist_items"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltask_checklist_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `taskid` INTEGER(11) NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `finished` INTEGER(11) NOT NULL DEFAULT 0,
    `dateadded` DATETIME NOT NULL,
    `addedfrom` INTEGER(11) NOT NULL,
    `finished_from` INTEGER(11) DEFAULT 0,
    `list_order` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `taskid` ON `tbltask_checklist_items` (`taskid`);

# ---------------------------------------------------------------------- #
# Add table "tbltask_comments"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltask_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `taskid` INTEGER(11) NOT NULL,
    `staffid` INTEGER(11) NOT NULL,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    `file_id` INTEGER(11) NOT NULL DEFAULT 0,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `file_id` ON `tbltask_comments` (`file_id`);

CREATE INDEX `taskid` ON `tbltask_comments` (`taskid`);

# ---------------------------------------------------------------------- #
# Add table "tbltask_followers"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltask_followers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `staffid` INTEGER(11) NOT NULL,
    `taskid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltasks_checklist_templates"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltasks_checklist_templates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltaskstimers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltaskstimers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `task_id` INTEGER(11) NOT NULL,
    `start_time` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `end_time` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `staff_id` INTEGER(11) NOT NULL,
    `hourly_rate` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `task_id` ON `tbltaskstimers` (`task_id`);

CREATE INDEX `staff_id` ON `tbltaskstimers` (`staff_id`);

# ---------------------------------------------------------------------- #
# Add table "tbltaxes"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltaxes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `taxrate` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltickets_pipe_log"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltickets_pipe_log` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `date` DATETIME NOT NULL,
    `email_to` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltickets_predefined_replies"                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltickets_predefined_replies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltickets_priorities"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltickets_priorities` (
    `priorityid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`priorityid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltickets_status"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltickets_status` (
    `ticketstatusid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `isdefault` INTEGER(11) NOT NULL DEFAULT 0,
    `statuscolor` VARCHAR(7) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `statusorder` INTEGER(11),
    PRIMARY KEY (`ticketstatusid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltodos"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltodos` (
    `todoid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `staffid` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    `finished` TINYINT(1) NOT NULL,
    `datefinished` DATETIME,
    `item_order` INTEGER(11),
    PRIMARY KEY (`todoid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltracked_mails"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltracked_mails` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `uid` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `opened` TINYINT(1) NOT NULL DEFAULT 0,
    `date_opened` DATETIME,
    `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbluser_auto_login"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbluser_auto_login` (
    `key_id` CHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `user_agent` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `last_login` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `staff` INTEGER(11) NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbluser_meta"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbluser_meta` (
    `umeta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `staff_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
    `client_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
    `contact_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
    `meta_key` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `meta_value` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`umeta_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblvault"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblvault` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER(11) NOT NULL,
    `server_address` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `port` INTEGER(11),
    `username` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creator` INTEGER(11) NOT NULL,
    `creator_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `visibility` TINYINT(1) NOT NULL DEFAULT 1,
    `share_in_projects` TINYINT(1) NOT NULL DEFAULT 0,
    `last_updated` DATETIME,
    `last_updated_from` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_created` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblviews_tracking"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblviews_tracking` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME NOT NULL,
    `view_ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblweb_to_lead"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblweb_to_lead` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `form_key` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lead_source` INTEGER(11) NOT NULL,
    `lead_status` INTEGER(11) NOT NULL,
    `notify_lead_imported` INTEGER(11) NOT NULL DEFAULT 1,
    `notify_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notify_ids` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `responsible` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `form_data` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `recaptcha` INTEGER(11) NOT NULL DEFAULT 0,
    `submit_btn_name` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `success_submit_msg` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `allow_duplicate` INTEGER(11) NOT NULL DEFAULT 1,
    `mark_public` INTEGER(11) NOT NULL DEFAULT 0,
    `track_duplicate_field` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `track_duplicate_field_and` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `create_task_on_duplicate` INTEGER(11) NOT NULL DEFAULT 0,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcontract_comments"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcontract_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `content` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contract_id` INTEGER(11) NOT NULL,
    `staffid` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcreditnote_refunds"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcreditnote_refunds` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `credit_note_id` INTEGER(11) NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    `refunded_on` DATE NOT NULL,
    `payment_mode` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `note` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(15,2) NOT NULL,
    `created_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcredits"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcredits` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `invoice_id` INTEGER(11) NOT NULL,
    `credit_id` INTEGER(11) NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    `date` DATE NOT NULL,
    `date_applied` DATETIME NOT NULL,
    `amount` DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblcustomer_admins"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcustomer_admins` (
    `staff_id` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    `date_assigned` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `customer_id` ON `tblcustomer_admins` (`customer_id`);

CREATE INDEX `staff_id` ON `tblcustomer_admins` (`staff_id`);

# ---------------------------------------------------------------------- #
# Add table "tblcustomer_groups"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblcustomer_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `groupid` INTEGER(11) NOT NULL,
    `customer_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `groupid` ON `tblcustomer_groups` (`groupid`);

CREATE INDEX `customer_id` ON `tblcustomer_groups` (`customer_id`);

# ---------------------------------------------------------------------- #
# Add table "tblfiles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblfiles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `file_name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `filetype` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `visible_to_customer` INTEGER(11) NOT NULL DEFAULT 0,
    `attachment_key` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `external` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `external_link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `thumbnail_link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'For external usage',
    `staffid` INTEGER(11) NOT NULL,
    `contact_id` INTEGER(11) DEFAULT 0,
    `task_comment_id` INTEGER(11) NOT NULL DEFAULT 0,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tblfiles` (`rel_id`);

CREATE INDEX `rel_type` ON `tblfiles` (`rel_type`);

# ---------------------------------------------------------------------- #
# Add table "tblform_question_box"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblform_question_box` (
    `boxid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `boxtype` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `questionid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`boxid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblform_question_box_description"                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblform_question_box_description` (
    `questionboxdescriptionid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `boxid` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `questionid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`questionboxdescriptionid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblform_results"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblform_results` (
    `resultid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `boxid` INTEGER(11) NOT NULL,
    `boxdescriptionid` INTEGER(11),
    `rel_id` INTEGER(11) NOT NULL,
    `rel_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `questionid` INTEGER(11) NOT NULL,
    `answer` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `resultsetid` INTEGER(11) NOT NULL,
    PRIMARY KEY (`resultid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblitems"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblitems` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `long_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rate` DECIMAL(15,2) NOT NULL,
    `tax` INTEGER(11),
    `tax2` INTEGER(11),
    `unit` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `group_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `tax` ON `tblitems` (`tax`);

CREATE INDEX `tax2` ON `tblitems` (`tax2`);

CREATE INDEX `group_id` ON `tblitems` (`group_id`);

# ---------------------------------------------------------------------- #
# Add table "tblknowedge_base_article_feedback"                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblknowedge_base_article_feedback` (
    `articleanswerid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `articleid` INTEGER(11) NOT NULL,
    `answer` INTEGER(11) NOT NULL,
    `ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`articleanswerid`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbllead_activity_log"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbllead_activity_log` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `leadid` INTEGER(11) NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `additional_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATETIME NOT NULL,
    `staffid` INTEGER(11) NOT NULL,
    `full_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `custom_activity` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblnewsfeed_comment_likes"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnewsfeed_comment_likes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `postid` INTEGER(11) NOT NULL,
    `commentid` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    `dateliked` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblnewsfeed_post_comments"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnewsfeed_post_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `userid` INTEGER(11) NOT NULL,
    `postid` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblnewsfeed_post_likes"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblnewsfeed_post_likes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `postid` INTEGER(11) NOT NULL,
    `userid` INTEGER(11) NOT NULL,
    `dateliked` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblpinned_projects"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblpinned_projects` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `project_id` ON `tblpinned_projects` (`project_id`);

# ---------------------------------------------------------------------- #
# Add table "tblproject_activity"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproject_activity` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `staff_id` INTEGER(11) NOT NULL DEFAULT 0,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    `fullname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `visible_to_customer` INTEGER(11) NOT NULL DEFAULT 0,
    `description_key` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Language file key',
    `additional_data` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblproject_files"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproject_files` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `file_name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `filetype` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dateadded` DATETIME NOT NULL,
    `last_activity` DATETIME,
    `project_id` INTEGER(11) NOT NULL,
    `visible_to_customer` TINYINT(1) DEFAULT 0,
    `staffid` INTEGER(11) NOT NULL,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    `external` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `external_link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `thumbnail_link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblproject_members"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproject_members` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `project_id` ON `tblproject_members` (`project_id`);

CREATE INDEX `staff_id` ON `tblproject_members` (`staff_id`);

# ---------------------------------------------------------------------- #
# Add table "tblproject_notes"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproject_notes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblprojectdiscussioncomments"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblprojectdiscussioncomments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `discussion_id` INTEGER(11) NOT NULL,
    `discussion_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `parent` INTEGER(11),
    `created` DATETIME NOT NULL,
    `modified` DATETIME,
    `content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `staff_id` INTEGER(11) NOT NULL,
    `contact_id` INTEGER(11) DEFAULT 0,
    `fullname` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_mime_type` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblprojectdiscussions"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblprojectdiscussions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `project_id` INTEGER(11) NOT NULL,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `show_to_customer` TINYINT(1) NOT NULL DEFAULT 0,
    `datecreated` DATETIME NOT NULL,
    `last_activity` DATETIME,
    `staff_id` INTEGER(11) NOT NULL DEFAULT 0,
    `contact_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblproposal_comments"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblproposal_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `content` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `proposalid` INTEGER(11) NOT NULL,
    `staffid` INTEGER(11) NOT NULL,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbltasks"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltasks` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `priority` INTEGER(11),
    `dateadded` DATETIME NOT NULL,
    `startdate` DATE NOT NULL,
    `duedate` DATE,
    `datefinished` DATETIME,
    `addedfrom` INTEGER(11) NOT NULL,
    `is_added_from_contact` TINYINT(1) NOT NULL DEFAULT 0,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `recurring_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `repeat_every` INTEGER(11),
    `recurring` INTEGER(11) NOT NULL DEFAULT 0,
    `is_recurring_from` INTEGER(11),
    `cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `total_cycles` INTEGER(11) NOT NULL DEFAULT 0,
    `custom_recurring` TINYINT(1) NOT NULL DEFAULT 0,
    `last_recurring_date` DATE,
    `rel_id` INTEGER(11),
    `rel_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_public` TINYINT(1) NOT NULL DEFAULT 0,
    `billable` TINYINT(1) NOT NULL DEFAULT 0,
    `billed` TINYINT(1) NOT NULL DEFAULT 0,
    `invoice_id` INTEGER(11) NOT NULL DEFAULT 0,
    `hourly_rate` DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    `milestone` INTEGER(11) DEFAULT 0,
    `kanban_order` INTEGER(11) NOT NULL DEFAULT 0,
    `milestone_order` INTEGER(11) NOT NULL DEFAULT 0,
    `visible_to_client` TINYINT(1) NOT NULL DEFAULT 0,
    `deadline_notified` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `rel_id` ON `tbltasks` (`rel_id`);

CREATE INDEX `rel_type` ON `tbltasks` (`rel_type`);

CREATE INDEX `milestone` ON `tbltasks` (`milestone`);

CREATE INDEX `kanban_order` ON `tbltasks` (`kanban_order`);

# ---------------------------------------------------------------------- #
# Add table "tbltickets"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbltickets` (
    `ticketid` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `adminreplying` INTEGER(11) NOT NULL DEFAULT 0,
    `userid` INTEGER(11) NOT NULL,
    `contactid` INTEGER(11) NOT NULL DEFAULT 0,
    `email` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `department` INTEGER(11) NOT NULL,
    `priority` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL,
    `service` INTEGER(11),
    `ticketkey` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `admin` INTEGER(11),
    `date` DATETIME NOT NULL,
    `project_id` INTEGER(11) NOT NULL DEFAULT 0,
    `lastreply` DATETIME,
    `clientread` INTEGER(11) NOT NULL DEFAULT 0,
    `adminread` INTEGER(11) NOT NULL DEFAULT 0,
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`ticketid`)
)
ENGINE = INNODB;

CREATE INDEX `service` ON `tbltickets` (`service`);

CREATE INDEX `department` ON `tbltickets` (`department`);

CREATE INDEX `status` ON `tbltickets` (`status`);

CREATE INDEX `userid` ON `tbltickets` (`userid`);

CREATE INDEX `priority` ON `tbltickets` (`priority`);

CREATE INDEX `project_id` ON `tbltickets` (`project_id`);

CREATE INDEX `contactid` ON `tbltickets` (`contactid`);

# ---------------------------------------------------------------------- #
# Add table "tblticket_attachments"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblticket_attachments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ticketid` INTEGER(11) NOT NULL,
    `replyid` INTEGER(11),
    `file_name` VARCHAR(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `filetype` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dateadded` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tblticket_replies"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tblticket_replies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ticketid` INTEGER(11) NOT NULL,
    `userid` INTEGER(11),
    `contactid` INTEGER(11) NOT NULL DEFAULT 0,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date` DATETIME NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `attachment` INTEGER(11),
    `admin` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `tblcontact_permissions` ADD CONSTRAINT `tblclients_tblcontact_permissions` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblcontacts` ADD CONSTRAINT `tblclients_tblcontacts` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblcontract_comments` ADD CONSTRAINT `tblstaff_tblcontract_comments` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblcreditnote_refunds` ADD CONSTRAINT `tblstaff_tblcreditnote_refunds` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblcredits` ADD CONSTRAINT `tblstaff_tblcredits` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblcustomer_admins` ADD CONSTRAINT `tblstaff_tblcustomer_admins` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblcustomer_groups` ADD CONSTRAINT `tblknowledge_base_groups_tblcustomer_groups` 
    FOREIGN KEY (`groupid`) REFERENCES `tblknowledge_base_groups` (`groupid`);

ALTER TABLE `tbldismissed_announcements` ADD CONSTRAINT `tblannouncements_tbldismissed_announcements` 
    FOREIGN KEY (`announcementid`) REFERENCES `tblannouncements` (`announcementid`);

ALTER TABLE `tbldismissed_announcements` ADD CONSTRAINT `tblclients_tbldismissed_announcements` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblevents` ADD CONSTRAINT `tblclients_tblevents` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblfiles` ADD CONSTRAINT `tblstaff_tblfiles` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblform_question_box` ADD CONSTRAINT `tblform_questions_tblform_question_box` 
    FOREIGN KEY (`questionid`) REFERENCES `tblform_questions` (`questionid`);

ALTER TABLE `tblform_question_box_description` ADD CONSTRAINT `tblform_questions_tblform_question_box_description` 
    FOREIGN KEY (`questionid`) REFERENCES `tblform_questions` (`questionid`);

ALTER TABLE `tblform_results` ADD CONSTRAINT `tblform_question_box_tblform_results` 
    FOREIGN KEY (`boxid`) REFERENCES `tblform_question_box` (`boxid`);

ALTER TABLE `tblform_results` ADD CONSTRAINT `tblform_questions_tblform_results` 
    FOREIGN KEY (`questionid`) REFERENCES `tblform_questions` (`questionid`);

ALTER TABLE `tblitems` ADD CONSTRAINT `tblknowledge_base_groups_tblitems` 
    FOREIGN KEY (`group_id`) REFERENCES `tblknowledge_base_groups` (`groupid`);

ALTER TABLE `tblknowedge_base_article_feedback` ADD CONSTRAINT `tblknowledge_base_tblknowedge_base_article_feedback` 
    FOREIGN KEY (`articleid`) REFERENCES `tblknowledge_base` (`articleid`);

ALTER TABLE `tbllead_activity_log` ADD CONSTRAINT `tblstaff_tbllead_activity_log` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblnewsfeed_comment_likes` ADD CONSTRAINT `tblclients_tblnewsfeed_comment_likes` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblnewsfeed_comment_likes` ADD CONSTRAINT `tblnewsfeed_posts_tblnewsfeed_comment_likes` 
    FOREIGN KEY (`postid`) REFERENCES `tblnewsfeed_posts` (`postid`);

ALTER TABLE `tblnewsfeed_post_comments` ADD CONSTRAINT `tblclients_tblnewsfeed_post_comments` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblnewsfeed_post_comments` ADD CONSTRAINT `tblnewsfeed_posts_tblnewsfeed_post_comments` 
    FOREIGN KEY (`postid`) REFERENCES `tblnewsfeed_posts` (`postid`);

ALTER TABLE `tblnewsfeed_post_likes` ADD CONSTRAINT `tblclients_tblnewsfeed_post_likes` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblnewsfeed_post_likes` ADD CONSTRAINT `tblnewsfeed_posts_tblnewsfeed_post_likes` 
    FOREIGN KEY (`postid`) REFERENCES `tblnewsfeed_posts` (`postid`);

ALTER TABLE `tblnotifications` ADD CONSTRAINT `tblclients_tblnotifications` 
    FOREIGN KEY (`fromuserid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblpinned_projects` ADD CONSTRAINT `tblstaff_tblpinned_projects` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblproject_activity` ADD CONSTRAINT `tblstaff_tblproject_activity` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblproject_files` ADD CONSTRAINT `tblstaff_tblproject_files` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblproject_members` ADD CONSTRAINT `tblstaff_tblproject_members` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblproject_notes` ADD CONSTRAINT `tblstaff_tblproject_notes` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblprojectdiscussioncomments` ADD CONSTRAINT `tblstaff_tblprojectdiscussioncomments` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblprojectdiscussions` ADD CONSTRAINT `tblstaff_tblprojectdiscussions` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblproposal_comments` ADD CONSTRAINT `tblstaff_tblproposal_comments` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblstaff_departments` ADD CONSTRAINT `tbldepartments_tblstaff_departments` 
    FOREIGN KEY (`departmentid`) REFERENCES `tbldepartments` (`departmentid`);

ALTER TABLE `tblstaff_departments` ADD CONSTRAINT `tblstaff_tblstaff_departments` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblstaff_permissions` ADD CONSTRAINT `tblstaff_tblstaff_permissions` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tbltask_assigned` ADD CONSTRAINT `tblstaff_tbltask_assigned` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tbltask_comments` ADD CONSTRAINT `tblstaff_tbltask_comments` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tbltask_followers` ADD CONSTRAINT `tblstaff_tbltask_followers` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tbltasks` ADD CONSTRAINT `tbltickets_priorities_tbltasks` 
    FOREIGN KEY (`priority`) REFERENCES `tbltickets_priorities` (`priorityid`);

ALTER TABLE `tbltaskstimers` ADD CONSTRAINT `tblstaff_tbltaskstimers` 
    FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staffid`);

ALTER TABLE `tblticket_attachments` ADD CONSTRAINT `tbltickets_tblticket_attachments` 
    FOREIGN KEY (`ticketid`) REFERENCES `tbltickets` (`ticketid`);

ALTER TABLE `tblticket_replies` ADD CONSTRAINT `tblclients_tblticket_replies` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tblticket_replies` ADD CONSTRAINT `tbltickets_tblticket_replies` 
    FOREIGN KEY (`ticketid`) REFERENCES `tbltickets` (`ticketid`);

ALTER TABLE `tbltickets` ADD CONSTRAINT `tblclients_tbltickets` 
    FOREIGN KEY (`userid`) REFERENCES `tblclients` (`userid`);

ALTER TABLE `tbltickets` ADD CONSTRAINT `tbldepartments_tbltickets` 
    FOREIGN KEY (`department`) REFERENCES `tbldepartments` (`departmentid`);

ALTER TABLE `tbltickets` ADD CONSTRAINT `tbltickets_priorities_tbltickets` 
    FOREIGN KEY (`priority`) REFERENCES `tbltickets_priorities` (`priorityid`);

ALTER TABLE `tbltodos` ADD CONSTRAINT `tblstaff_tbltodos` 
    FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`);
