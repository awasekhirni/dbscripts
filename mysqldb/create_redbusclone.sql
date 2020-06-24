# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          redbusclone.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:26                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "acc_account_name"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `acc_account_name` (
    `account_id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `account_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `account_type` INTEGER(11) NOT NULL,
    PRIMARY KEY (`account_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "acn_account_transaction"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `acn_account_transaction` (
    `account_tran_id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER(11) NOT NULL,
    `transaction_description` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `amount` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document_pic` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `create_by_id` INTEGER(11),
    PRIMARY KEY (`account_tran_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "agent_info"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `agent_info` (
    `agent_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `agent_first_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_second_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_company_name` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_document_id` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_pic_document` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_picture` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_phone` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_mobile` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_email` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_address_line_1` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_address_line_2` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_address_city` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_address_zip_code` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_country` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `agent_commission` FLOAT NOT NULL,
    `status` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`agent_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "agent_ledger"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `agent_ledger` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `agent_id` INTEGER(11) NOT NULL,
    `booking_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `debit` FLOAT NOT NULL DEFAULT 0,
    `credit` FLOAT NOT NULL DEFAULT 0,
    `date` DATE NOT NULL,
    `commission_rate` FLOAT NOT NULL DEFAULT 0,
    `total_price` FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "bank_info"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `bank_info` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `bank_name` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `account_name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `account_number` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "bank_transaction"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `bank_transaction` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `bank_id` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `transaction_id` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `payer_name` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `booking_id` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `note` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `refund` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `amount` FLOAT,
    `b_account_no` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `transaction_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "booking_downtime"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `booking_downtime` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `reg_no` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `downtime` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_config"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_config` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `protocol` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_host` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_port` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_user` VARCHAR(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `smtp_pass` VARCHAR(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mailtype` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee_history"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee_history` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `second_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `position` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone_no` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_no` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `document_pic` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address_line_1` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address_line_2` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `picture` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `blood_group` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_assign` TINYINT(2) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "employee_type"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee_type` (
    `type_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `details` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`type_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "enquiry"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `enquiry` (
    `enquiry_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `enquiry` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `checked` TINYINT(1),
    `ip_address` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_agent` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `checked_by` INTEGER(11),
    `created_date` DATETIME,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`enquiry_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fit_fitness"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `fit_fitness` (
    `fitness_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fitness_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fitness_description` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`fitness_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "fleet_facilities"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `fleet_facilities` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fleet_type"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `fleet_type` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `layout` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `lastseat` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `total_seat` INTEGER(11) NOT NULL,
    `seat_numbers` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fleet_facilities` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ftn_fitness_period"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `ftn_fitness_period` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fitness_id` INTEGER(11),
    `vehicle_id` INTEGER(11),
    `start_date` DATE,
    `end_date` DATE,
    `start_milage` FLOAT,
    `end_milage` FLOAT,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "how_to_use"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `how_to_use` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "language"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `language` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `phrase` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `english` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `french` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "message"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `message` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sender_id` INTEGER(11) NOT NULL,
    `receiver_id` INTEGER(11) NOT NULL,
    `subject` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `datetime` DATETIME NOT NULL,
    `sender_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
    `receiver_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

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
# Add table "module_permission"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `module_permission` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fk_module_id` INTEGER(11) NOT NULL,
    `fk_user_id` INTEGER(11) NOT NULL,
    `create` TINYINT(1),
    `read` TINYINT(1),
    `update` TINYINT(1),
    `delete` TINYINT(1),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ofr_offer"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `ofr_offer` (
    `offer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `offer_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_start_date` DATE,
    `offer_end_date` DATE,
    `offer_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_discount` FLOAT,
    `offer_terms` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_route_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_number` INTEGER(15),
    PRIMARY KEY (`offer_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_informations"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_informations` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `how_to_pay` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `terms_and_condition` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pri_price"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `pri_price` (
    `price_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `route_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vehicle_type_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price` FLOAT,
    `children_price` FLOAT NOT NULL,
    `special_price` FLOAT NOT NULL,
    `group_price_per_person` FLOAT DEFAULT 0,
    `group_size` INTEGER(15) DEFAULT 0,
    PRIMARY KEY (`price_id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "sec_menu_item"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_menu_item` (
    `menu_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `menu_title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `page_url` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `module` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `parent_menu` INTEGER(11),
    `is_report` TINYINT(1),
    `createby` INTEGER(11) NOT NULL,
    `createdate` DATETIME NOT NULL,
    PRIMARY KEY (`menu_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sec_role_tbl"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_role_tbl` (
    `role_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `role_name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `role_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `create_by` INTEGER(11),
    `date_time` DATETIME,
    `role_status` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`role_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sec_user_access_tbl"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_user_access_tbl` (
    `role_acc_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `fk_role_id` INTEGER(11) NOT NULL,
    `fk_user_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`role_acc_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "setting"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `setting` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `favicon` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `language` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `site_align` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `footer_text` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shedule"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `shedule` (
    `shedule_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `start` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `end` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `duration` FLOAT NOT NULL,
    PRIMARY KEY (`shedule_id`)
)
ENGINE = INNODB;

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
# Add table "ticket_notification"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `ticket_notification` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `b_idno` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `passenger_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `no_tkts` INTEGER(11) NOT NULL,
    `amount` FLOAT NOT NULL,
    `route_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `trip_id` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `booking_time` DATETIME NOT NULL,
    `is_seen` INTEGER(11) NOT NULL DEFAULT 0,
    `admin_seen` INTEGER(11) NOT NULL DEFAULT 0,
    `booked_by` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tkt_feedback"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tkt_feedback` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tkt_booking_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rating` TINYINT(1) DEFAULT 1,
    `add_to_website` TINYINT(1),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tkt_passenger"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tkt_passenger` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `middle_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `nid` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password_reset_token` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address_line_1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address_line_2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip_code` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tkt_referal"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tkt_referal` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `tkt_passenger_id_no` INTEGER(11),
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tkt_refund"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tkt_refund` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `tkt_booking_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tkt_passenger_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cancelation_fees` FLOAT,
    `causes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `refund_by_id` INTEGER(11),
    `date` DATETIME,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `FK_tkt_refund_tkt_booking` ON `tkt_refund` (`tkt_booking_id_no`);

# ---------------------------------------------------------------------- #
# Add table "trip"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `trip` (
    `trip_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `trip_title` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `type` INTEGER(11) NOT NULL,
    `route` INTEGER(11) NOT NULL,
    `shedule_id` INTEGER(11) NOT NULL,
    `weekend` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`trip_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "trip_location"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `trip_location` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_map` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "trip_route"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `trip_route` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `start_point` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `end_point` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stoppage_points` VARCHAR(355) CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'Location ids',
    `distance` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `approximate_time` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `children_seat` INTEGER(11) NOT NULL DEFAULT 0,
    `special_seat` INTEGER(11) NOT NULL DEFAULT 0,
    `status` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `user` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `about` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password_reset_token` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_login` DATETIME,
    `last_logout` DATETIME,
    `ip_address` VARCHAR(14) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `is_admin` TINYINT(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ws_booking_history"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `ws_booking_history` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trip_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tkt_passenger_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trip_route_id` INTEGER(11),
    `pickup_trip_location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `drop_trip_location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `request_facilities` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price` FLOAT,
    `discount` FLOAT,
    `adult` INTEGER(11) NOT NULL,
    `child` INTEGER(11) NOT NULL,
    `special` INTEGER(11) NOT NULL,
    `total_seat` INTEGER(11),
    `seat_numbers` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tkt_refund_id` INTEGER(11),
    `agent_id` INTEGER(11),
    `booking_date` DATETIME,
    `date` DATETIME,
    `status` TINYINT(4) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `id_no` ON `ws_booking_history` (`id_no`);

# ---------------------------------------------------------------------- #
# Add table "ws_offer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `ws_offer` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `position` TINYINT(4) DEFAULT 0,
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ws_payments"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ws_payments` (
    `payment_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `txn_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `payment_gross` FLOAT(10,2) NOT NULL,
    `currency_code` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `payer_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `payment_status` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`payment_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ws_setting"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `ws_setting` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slogan` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `favicon` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 1,
    `timezone` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `about` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paypal_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bank_commission` FLOAT NOT NULL DEFAULT 0,
    `currency` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_map` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "fleet_registration"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `fleet_registration` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `reg_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fleet_type_id` INTEGER(11),
    `engine_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `model_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `chasis_no` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `owner` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `owner_phone` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `company` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ac_available` TINYINT(1),
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `is_assign` TINYINT(2) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sec_role_permission"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `sec_role_permission` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `role_id` INTEGER(11) NOT NULL,
    `menu_id` INTEGER(11) NOT NULL,
    `can_access` TINYINT(1) NOT NULL,
    `can_create` TINYINT(1) NOT NULL,
    `can_edit` TINYINT(1) NOT NULL,
    `can_delete` TINYINT(1) NOT NULL,
    `createby` INTEGER(11) NOT NULL,
    `createdate` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tkt_booking"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tkt_booking` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trip_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tkt_passenger_id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `trip_route_id` INTEGER(11),
    `pickup_trip_location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `drop_trip_location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `request_facilities` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price` FLOAT,
    `discount` FLOAT,
    `adult` INTEGER(11) NOT NULL DEFAULT 0,
    `child` INTEGER(11) NOT NULL DEFAULT 0,
    `special` INTEGER(11) NOT NULL DEFAULT 0,
    `total_seat` INTEGER(11),
    `seat_numbers` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `offer_code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tkt_refund_id` INTEGER(11),
    `agent_id` INTEGER(11),
    `booking_date` DATETIME,
    `date` DATETIME,
    `booking_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `booked_by` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `id_no` ON `tkt_booking` (`id_no`);

# ---------------------------------------------------------------------- #
# Add table "trip_assign"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `trip_assign` (
    `id` INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_no` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fleet_registration_id` INTEGER(11),
    `trip` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `assign_time` DATETIME NOT NULL,
    `driver_id` INTEGER(11),
    `assistant_1` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assistant_2` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `assistant_3` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `sold_ticket` FLOAT NOT NULL DEFAULT 0,
    `total_income` FLOAT DEFAULT 0,
    `total_expense` FLOAT DEFAULT 0,
    `total_fuel` FLOAT DEFAULT 0,
    `trip_comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `closed_by_id` INTEGER(11) DEFAULT 0,
    `date` DATETIME,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `acn_account_transaction` ADD CONSTRAINT `acc_account_name_acn_account_transaction` 
    FOREIGN KEY (`account_id`) REFERENCES `acc_account_name` (`account_id`);

ALTER TABLE `agent_ledger` ADD CONSTRAINT `agent_info_agent_ledger` 
    FOREIGN KEY (`agent_id`) REFERENCES `agent_info` (`agent_id`);

ALTER TABLE `fleet_registration` ADD CONSTRAINT `employee_type_fleet_registration` 
    FOREIGN KEY (`fleet_type_id`) REFERENCES `employee_type` (`type_id`);

ALTER TABLE `fleet_registration` ADD CONSTRAINT `fleet_type_fleet_registration` 
    FOREIGN KEY (`fleet_type_id`) REFERENCES `fleet_type` (`id`);

ALTER TABLE `ftn_fitness_period` ADD CONSTRAINT `fit_fitness_ftn_fitness_period` 
    FOREIGN KEY (`fitness_id`) REFERENCES `fit_fitness` (`fitness_id`);

ALTER TABLE `module_permission` ADD CONSTRAINT `module_module_permission` 
    FOREIGN KEY (`fk_module_id`) REFERENCES `module` (`id`);

ALTER TABLE `sec_role_permission` ADD CONSTRAINT `sec_menu_item_sec_role_permission` 
    FOREIGN KEY (`menu_id`) REFERENCES `sec_menu_item` (`menu_id`);

ALTER TABLE `sec_role_permission` ADD CONSTRAINT `sec_role_tbl_sec_role_permission` 
    FOREIGN KEY (`role_id`) REFERENCES `sec_role_tbl` (`role_id`);

ALTER TABLE `sec_user_access_tbl` ADD CONSTRAINT `sec_role_tbl_sec_user_access_tbl` 
    FOREIGN KEY (`fk_role_id`) REFERENCES `sec_role_tbl` (`role_id`);

ALTER TABLE `tkt_booking` ADD CONSTRAINT `agent_info_tkt_booking` 
    FOREIGN KEY (`agent_id`) REFERENCES `agent_info` (`agent_id`);

ALTER TABLE `tkt_booking` ADD CONSTRAINT `tkt_refund_tkt_booking` 
    FOREIGN KEY (`tkt_refund_id`) REFERENCES `tkt_refund` (`id`);

ALTER TABLE `tkt_booking` ADD CONSTRAINT `trip_route_tkt_booking` 
    FOREIGN KEY (`trip_route_id`) REFERENCES `trip_route` (`id`);

ALTER TABLE `tkt_referal` ADD CONSTRAINT `tkt_passenger_tkt_referal` 
    FOREIGN KEY (`tkt_passenger_id_no`) REFERENCES `tkt_passenger` (`id`);

ALTER TABLE `trip` ADD CONSTRAINT `shedule_trip` 
    FOREIGN KEY (`shedule_id`) REFERENCES `shedule` (`shedule_id`);

ALTER TABLE `trip_assign` ADD CONSTRAINT `fleet_registration_trip_assign` 
    FOREIGN KEY (`fleet_registration_id`) REFERENCES `fleet_registration` (`id`);

ALTER TABLE `ws_booking_history` ADD CONSTRAINT `agent_info_ws_booking_history` 
    FOREIGN KEY (`agent_id`) REFERENCES `agent_info` (`agent_id`);

ALTER TABLE `ws_booking_history` ADD CONSTRAINT `tkt_refund_ws_booking_history` 
    FOREIGN KEY (`tkt_refund_id`) REFERENCES `tkt_refund` (`id`);

ALTER TABLE `ws_booking_history` ADD CONSTRAINT `trip_route_ws_booking_history` 
    FOREIGN KEY (`trip_route_id`) REFERENCES `trip_route` (`id`);

ALTER TABLE `ws_payments` ADD CONSTRAINT `user_ws_payments` 
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
