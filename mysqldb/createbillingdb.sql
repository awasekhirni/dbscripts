# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          billingdb.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 18:44                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "account_balances"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `account_balances` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER(11) NOT NULL DEFAULT 0,
    `currency_id` INTEGER(11) NOT NULL DEFAULT 0,
    `balance` DECIMAL(16,4) NOT NULL DEFAULT 0.0000,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_accounts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_accounts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `company` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `jobtitle` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cid` INTEGER(11) NOT NULL,
    `o` INTEGER(11) NOT NULL DEFAULT 0,
    `phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `balance` DECIMAL(16,2) NOT NULL,
    `status` ENUM('Active','Inactive') COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tags` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `token` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ts` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `img` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `web` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `facebook` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `google` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `linkedin` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `twitter` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `skype` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax_number` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `entity_number` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` INTEGER(11) DEFAULT 0,
    `pmethod` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `autologin` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lastlogin` DATETIME,
    `lastloginip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stage` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `timezone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `isp` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lat` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lon` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `gname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `gid` INTEGER(11) NOT NULL DEFAULT 0,
    `sid` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `role` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country_code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country_idd` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signed_up_by` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signed_up_ip` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dob` DATE,
    `ct` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assistant` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `asst_phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `second_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `second_phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `taxexempt` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `latefeeoveride` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `overideduenotices` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `separateinvoices` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `disableautocc` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billingcid` INTEGER(10) NOT NULL DEFAULT 0,
    `securityqid` INTEGER(10) NOT NULL DEFAULT 0,
    `securityqans` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cardtype` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cardlastfour` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cardnum` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `startdate` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `expdate` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `issuenumber` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bankname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `banktype` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bankcode` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bankacct` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `gatewayid` INTEGER(10) NOT NULL DEFAULT 0,
    `language` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pwresetkey` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `emailoptout` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `pwresetexpiry` DATETIME,
    `c1` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_email_verified` INTEGER(1) NOT NULL DEFAULT 0,
    `is_phone_veirifed` INTEGER(1) NOT NULL DEFAULT 0,
    `photo_id_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `photo_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_customfields"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_customfields` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `ctype` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `relid` INTEGER(10) NOT NULL DEFAULT 0,
    `fieldname` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fieldtype` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fieldoptions` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `regexpr` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `adminonly` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `required` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `showorder` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `showinvoice` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sorder` INTEGER(10) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_customfieldsvalues"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_customfieldsvalues` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `fieldid` INTEGER(10) NOT NULL,
    `relid` INTEGER(10) NOT NULL,
    `fvalue` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_groups"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_groups` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `gname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `color` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `discount` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `parent` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pid` INTEGER(10),
    `exempt` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `separateinvoices` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sorder` INTEGER(10),
    `c1` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_industries"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_industries` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `industry` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active` INTEGER(1) NOT NULL DEFAULT 1,
    `is_default` INTEGER(1) NOT NULL DEFAULT 0,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_lead_sources"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_lead_sources` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active` INTEGER(1) NOT NULL DEFAULT 1,
    `is_default` INTEGER(1) NOT NULL DEFAULT 1,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_lead_status"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_lead_status` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active` INTEGER(1) NOT NULL DEFAULT 1,
    `is_default` INTEGER(1) NOT NULL DEFAULT 0,
    `is_converted` INTEGER(1) NOT NULL DEFAULT 0,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_leads"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_leads` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `secret` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `o` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `salutation` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `first_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `middle_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `suffix` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `website` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `industry` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `employees` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `color` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `source` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `added_from` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mobile` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `viewed_at` DATETIME,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    `last_contact` DATETIME,
    `last_contact_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_converted` DATETIME,
    `public` INTEGER(1) NOT NULL DEFAULT 0,
    `ratings` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `flag` INTEGER(1) NOT NULL DEFAULT 0,
    `lost` INTEGER(1) NOT NULL DEFAULT 0,
    `junk` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    `memo` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crm_salutations"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `crm_salutations` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active` INTEGER(1) NOT NULL DEFAULT 1,
    `is_default` INTEGER(1) NOT NULL DEFAULT 0,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ib_doc_rel"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `ib_doc_rel` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rtype` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'contact',
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `did` INTEGER(11) NOT NULL DEFAULT 0,
    `can_download` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ib_invoice_access_log"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `ib_invoice_access_log` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lid` INTEGER(11) NOT NULL DEFAULT 0,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `customer` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `browser` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `referer` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `postal_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country_iso` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `viewed_at` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lat` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lon` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_accounts"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_accounts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `balance` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `bank_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `account_number` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `branch` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_person` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `website` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ib_url` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created` DATE,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sorder` INTEGER(11),
    `e` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `token` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_activity"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_activity` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `msg` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `icon` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `stime` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sdate` DATE NOT NULL,
    `o` INTEGER(11) NOT NULL DEFAULT 0,
    `oname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_api"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_api` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `label` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `apikey` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_appconfig"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_appconfig` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `setting` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_cart"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_cart` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `secret` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `items` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `discount` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `ip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fullname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `browser` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `coupon` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lat` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lon` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `item_count` INTEGER(11) NOT NULL DEFAULT 0,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `lid` INTEGER(11) NOT NULL DEFAULT 0,
    `currency_id` INTEGER(11) NOT NULL DEFAULT 0,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `expiry` DATETIME,
    `memo` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_cats"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_cats` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` ENUM('Income','Expense') COLLATE utf8_general_ci NOT NULL,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `total_amount` DECIMAL(16,4) DEFAULT 0.0000,
    `budget` DECIMAL(16,4) DEFAULT 0.0000,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_companies"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_companies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `company_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `url` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo_url` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo_path` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `emails` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phones` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tags` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address1` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address2` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `state` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `source` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `added_from` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `o` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `pid` INTEGER(11) NOT NULL DEFAULT 0,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` TIMESTAMP,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_contact` DATETIME,
    `last_contact_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ratings` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_currencies"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_currencies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iso_code` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `symbol` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rate` DECIMAL(16,8) NOT NULL DEFAULT 1.00000000,
    `prefix` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `suffix` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `format` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `decimal_separator` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `thousand_separator` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` DATETIME,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `available_in` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `isdefault` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_documents"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_documents` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_o_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_r_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_mime_type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_path` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_dl_token` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_owner` INTEGER(11) NOT NULL DEFAULT 0,
    `version` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `link` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sha1` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `md5` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `gid` INTEGER(11) NOT NULL DEFAULT 0,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `contacts` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deals` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `leads` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` DATETIME,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `customer_can_download` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    `is_global` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_email_logs"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_email_logs` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(10) NOT NULL,
    `sender` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATETIME,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `rel_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rel_id` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_email_templates"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_email_templates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tplname` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language_id` INTEGER(11) NOT NULL DEFAULT 1,
    `subject` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `send` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Active',
    `core` ENUM('Yes','No') COLLATE utf8_general_ci DEFAULT 'Yes',
    `hidden` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`, `language_id`)
)
ENGINE = INNODB;

CREATE INDEX `tplname` ON `sys_email_templates` (`tplname`);

# ---------------------------------------------------------------------- #
# Add table "sys_emailconfig"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_emailconfig` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `method` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `host` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `apikey` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `port` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `secure` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_events"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_events` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contacts` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deals` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `owner` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `etype` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `priority` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `color` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `o` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `start` DATETIME,
    `end` DATETIME,
    `allday` INTEGER(1) NOT NULL DEFAULT 0,
    `notification` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_invoiceitems"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_invoiceitems` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `invoiceid` INTEGER(10) NOT NULL DEFAULT 0,
    `userid` INTEGER(10) NOT NULL,
    `type` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `relid` INTEGER(10) NOT NULL,
    `itemcode` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `qty` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
    `amount` DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    `taxed` INTEGER(1) NOT NULL,
    `taxamount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `total` DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    `duedate` DATE,
    `paymentmethod` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `invoiceid` ON `sys_invoiceitems` (`invoiceid`);

# ---------------------------------------------------------------------- #
# Add table "sys_invoices"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_invoices` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `userid` INTEGER(10) NOT NULL,
    `account` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cn` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `invoicenum` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `date` DATE,
    `duedate` DATE,
    `datepaid` DATETIME,
    `subtotal` DECIMAL(18,2) NOT NULL,
    `discount_type` VARCHAR(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'f',
    `discount_value` DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    `discount` DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    `credit` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `taxname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tax` DECIMAL(10,2) NOT NULL,
    `tax2` DECIMAL(10,2) NOT NULL,
    `total` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `taxrate` DECIMAL(10,2) NOT NULL,
    `taxrate2` DECIMAL(10,2) NOT NULL,
    `status` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `paymentmethod` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `vtoken` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ptoken` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `nd` DATE,
    `eid` INTEGER(10) NOT NULL DEFAULT 0,
    `ename` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `vid` INTEGER(11) NOT NULL DEFAULT 0,
    `currency` INTEGER(11) NOT NULL DEFAULT 0,
    `currency_symbol` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_prefix` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_suffix` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_rate` DECIMAL(11,4) NOT NULL DEFAULT 1.0000,
    `recurring` TINYINT(1) NOT NULL DEFAULT 0,
    `recurring_ends` DATE,
    `last_recurring_date` DATE,
    `source` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sale_agent` INTEGER(11) NOT NULL DEFAULT 0,
    `last_overdue_reminder` DATE,
    `allowed_payment_methods` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_street` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `q_hide` TINYINT(1) NOT NULL DEFAULT 0,
    `show_quantity_as` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pid` INTEGER(11) NOT NULL DEFAULT 0,
    `is_credit_invoice` INTEGER(1) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `aname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `userid` ON `sys_invoices` (`userid`);

CREATE INDEX `status` ON `sys_invoices` (`status`);

# ---------------------------------------------------------------------- #
# Add table "sys_item_cats"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_item_cats` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `pid` INTEGER(11) NOT NULL DEFAULT 0,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `img` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_items"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_items` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `unit` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `sales_price` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `inventory` DECIMAL(16,4) NOT NULL DEFAULT 0.0000,
    `weight` DECIMAL(16,4) NOT NULL DEFAULT 0.0000,
    `width` DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
    `length` DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
    `height` DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
    `sku` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `upc` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ean` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mpn` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `isbn` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sid` INTEGER(11) NOT NULL DEFAULT 0,
    `supplier` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bid` INTEGER(11) NOT NULL DEFAULT 0,
    `brand` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sell_account` INTEGER(11) NOT NULL DEFAULT 0,
    `purchase_account` INTEGER(11) NOT NULL DEFAULT 0,
    `inventory_account` INTEGER(11) NOT NULL DEFAULT 0,
    `taxable` INTEGER(1) NOT NULL DEFAULT 0,
    `location` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `item_number` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` ENUM('Service','Product') COLLATE utf8_general_ci NOT NULL,
    `track_inventroy` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `negative_stock` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `available` INTEGER(11) NOT NULL DEFAULT 0,
    `status` ENUM('Active','Inactive') COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
    `added` DATE,
    `last_sold` DATE,
    `e` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `gid` INTEGER(11) NOT NULL DEFAULT 0,
    `category_id` INTEGER(11) NOT NULL DEFAULT 0,
    `supplier_id` INTEGER(11) NOT NULL DEFAULT 0,
    `gname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `size` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `start_date` DATE,
    `end_date` DATE,
    `expire_date` DATE,
    `expire_days` INTEGER(11) NOT NULL DEFAULT 0,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `flag` INTEGER(1) NOT NULL DEFAULT 0,
    `is_service` INTEGER(1) NOT NULL DEFAULT 0,
    `commission_percent` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `commission_percent_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `commission_fixed` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `payterm` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cost_price` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `unit_price` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `promo_price` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `setup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `onetime` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `monthly` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `monthlysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `quarterly` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `quarterlysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `halfyearly` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `halfyearlysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `annually` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `annuallysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `biennially` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `bienniallysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `triennially` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `trienniallysetup` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `has_domain` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `free_domain` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_rel` INTEGER(11) NOT NULL DEFAULT 0,
    `tags` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c6` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c7` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c8` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c9` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c10` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c11` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c12` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c13` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c14` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c15` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c16` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c17` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c18` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c19` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c20` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c21` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c22` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c23` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c24` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c25` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c26` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c27` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c28` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c29` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c30` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sold_count` DECIMAL(16,4) DEFAULT 0.0000,
    `total_amount` DECIMAL(16,4) DEFAULT 0.0000,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_leads"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_leads` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fullname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `color` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `source` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `added_from` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `o` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `assigned` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` DATETIME,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` DATETIME,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_contact` DATETIME,
    `last_contact_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_converted` DATETIME,
    `public` INTEGER(1) NOT NULL DEFAULT 0,
    `ratings` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `flag` INTEGER(1) NOT NULL DEFAULT 0,
    `lost` INTEGER(1) NOT NULL DEFAULT 0,
    `junk` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_logs"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_logs` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `userid` INTEGER(10) NOT NULL,
    `ip` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "sys_orders"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_orders` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ordernum` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `source` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sales_person` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `branch_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cname` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11),
    `contract_id` INTEGER(11),
    `bid` INTEGER(11),
    `date_added` DATE,
    `date_expiry` DATE,
    `pid` INTEGER(11),
    `stitle` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sid` INTEGER(11),
    `iid` INTEGER(11),
    `aid` INTEGER(11),
    `amount` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `recurring` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `setup_fee` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `billing_cycle` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `addon_ids` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `related_orders` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `upgrade_ids` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `xdata` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `xsecret` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `promo_code` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `promo_type` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `promo_value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_method` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ipaddress` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fraud_module` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fraud_output` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `activation_subject` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `activation_message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_permissions"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_permissions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `pname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shortname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `available` INTEGER(1) NOT NULL DEFAULT 0,
    `core` INTEGER(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_pg"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_pg` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `settings` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `processor` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ins` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` ENUM('Active','Inactive') COLLATE utf8_general_ci NOT NULL,
    `sorder` INTEGER(2) NOT NULL,
    `logo` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mode` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `gateway_setting` ON `sys_pg` (`name`,`processor`);

CREATE INDEX `setting_value` ON `sys_pg` (`processor`,`ins`);

# ---------------------------------------------------------------------- #
# Add table "sys_pl"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_pl` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `c` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `build` INTEGER(10) DEFAULT 1,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_pmethods"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_pmethods` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_quoteitems"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_quoteitems` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `qid` INTEGER(10) NOT NULL,
    `itemcode` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `qty` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` DECIMAL(18,2) NOT NULL,
    `discount` DECIMAL(10,2) NOT NULL,
    `total` DECIMAL(18,2) NOT NULL,
    `taxable` INTEGER(1) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_quotes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_quotes` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `subject` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `stage` ENUM('Draft','Delivered','On Hold','Accepted','Lost','Dead') COLLATE utf8_general_ci NOT NULL,
    `validuntil` DATE NOT NULL,
    `userid` INTEGER(10) NOT NULL,
    `invoicenum` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cn` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `firstname` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lastname` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `companyname` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `address2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `city` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `state` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `postcode` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phonenumber` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `currency` INTEGER(10) NOT NULL,
    `subtotal` DECIMAL(18,2) NOT NULL,
    `discount_type` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `discount_value` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(10,2) NOT NULL,
    `taxname` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `taxrate` DECIMAL(10,2) NOT NULL,
    `tax1` DECIMAL(10,2) NOT NULL,
    `tax2` DECIMAL(10,2) NOT NULL,
    `total` DECIMAL(18,2) NOT NULL,
    `proposal` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `customernotes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `adminnotes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `datecreated` DATE NOT NULL,
    `lastmodified` DATE NOT NULL,
    `datesent` DATE NOT NULL,
    `dateaccepted` DATE NOT NULL,
    `vtoken` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_roles"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_roles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_sales"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_sales` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `oname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` DECIMAL(14,2) NOT NULL,
    `term` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `milestone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `p` INTEGER(11) NOT NULL,
    `o` INTEGER(11) NOT NULL,
    `open` DATE NOT NULL,
    `close` DATE NOT NULL,
    `status` ENUM('New','In Progress','Won','Lost') COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_schedule"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_schedule` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `cname` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `val` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_schedulelogs"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_schedulelogs` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `logs` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_staffpermissions"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_staffpermissions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `rid` INTEGER(11),
    `pid` INTEGER(11),
    `shortname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `can_view` INTEGER(1) NOT NULL DEFAULT 0,
    `can_edit` INTEGER(1) NOT NULL DEFAULT 0,
    `can_create` INTEGER(1) NOT NULL DEFAULT 0,
    `can_delete` INTEGER(1) NOT NULL DEFAULT 0,
    `all_data` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_tags"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_tags` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `text` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_tasks"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_tasks` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cid` INTEGER(11) NOT NULL DEFAULT 0,
    `oid` INTEGER(11) NOT NULL DEFAULT 0,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL DEFAULT 0,
    `tid` INTEGER(11) NOT NULL DEFAULT 0,
    `eid` INTEGER(11) NOT NULL DEFAULT 0,
    `pid` INTEGER(11) NOT NULL DEFAULT 0,
    `did` INTEGER(11) NOT NULL DEFAULT 0,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `subscribers` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assigned_to` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `priority` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` DATETIME,
    `created_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` DATETIME,
    `updated_by` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vtoken` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ptoken` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `started` DATE,
    `due_date` DATE,
    `stime` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `dtime` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `time_spent` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `date_finished` DATE,
    `source` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `flag` INTEGER(1) NOT NULL DEFAULT 0,
    `finished` INTEGER(1) NOT NULL DEFAULT 0,
    `ratings` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rel_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rel_id` INTEGER(11),
    `parent` INTEGER(11) NOT NULL DEFAULT 0,
    `is_public` INTEGER(1) NOT NULL DEFAULT 0,
    `billable` INTEGER(1) NOT NULL DEFAULT 0,
    `billed` INTEGER(1) NOT NULL DEFAULT 0,
    `hourly_rate` DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    `milestone` INTEGER(11),
    `progress` INTEGER(3),
    `visible_to_client` INTEGER(1) NOT NULL DEFAULT 0,
    `notification` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_tax"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_tax` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `state` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `rate` DECIMAL(10,2) NOT NULL,
    `aid` INTEGER(11) NOT NULL,
    `bal` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `state_country` ON `sys_tax` (`state`,`country`);

# ---------------------------------------------------------------------- #
# Add table "sys_transactions"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` ENUM('Income','Expense','Transfer') COLLATE utf8_general_ci NOT NULL,
    `category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` DECIMAL(18,2) NOT NULL,
    `payer` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payee` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payerid` INTEGER(11) NOT NULL DEFAULT 0,
    `payeeid` INTEGER(11) NOT NULL DEFAULT 0,
    `method` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ref` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` ENUM('Cleared','Uncleared','Reconciled','Void') COLLATE utf8_general_ci NOT NULL DEFAULT 'Cleared',
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tags` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `date` DATE NOT NULL,
    `dr` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `cr` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `bal` DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    `iid` INTEGER(11) NOT NULL DEFAULT 0,
    `currency` INTEGER(11) NOT NULL DEFAULT 0,
    `currency_symbol` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_prefix` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_suffix` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency_rate` DECIMAL(11,4) NOT NULL DEFAULT 1.0000,
    `base_amount` DECIMAL(16,4) NOT NULL DEFAULT 0.0000,
    `company_id` INTEGER(11) NOT NULL DEFAULT 0,
    `vid` INTEGER(11) NOT NULL DEFAULT 0,
    `aid` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `updated_by` INTEGER(11) NOT NULL DEFAULT 0,
    `attachments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `source` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rid` INTEGER(11) NOT NULL DEFAULT 0,
    `pid` INTEGER(11) NOT NULL DEFAULT 0,
    `archived` INTEGER(1) NOT NULL DEFAULT 0,
    `trash` INTEGER(1) NOT NULL DEFAULT 0,
    `flag` INTEGER(1) NOT NULL DEFAULT 0,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_units"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_units` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reference` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `conversion_factor` DECIMAL(16,2) NOT NULL DEFAULT 0.00,
    `sorder` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sys_users"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `sys_users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `fullname` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `phonenumber` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Full Access',
    `status` ENUM('Active','Inactive') COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
    `last_login` DATETIME,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `creationdate` DATETIME NOT NULL,
    `otp` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `pin_enabled` ENUM('Yes','No') COLLATE utf8_general_ci NOT NULL DEFAULT 'No',
    `pin` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `img` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `api` ENUM('Yes','No') COLLATE utf8_general_ci DEFAULT 'No',
    `pwresetkey` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `keyexpire` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `roleid` INTEGER(11) NOT NULL DEFAULT 0,
    `role` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_activity` DATETIME,
    `autologin` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `at` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `landing_page` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c4` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c5` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;
