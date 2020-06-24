# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          couriermgmtdb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-18 14:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "add_consolidate"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `add_consolidate` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(11) NOT NULL,
    `con_tmp` INTEGER(11) NOT NULL,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `s_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_qnty` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_weight` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `v_weight` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotal` DOUBLE NOT NULL,
    `created` DATE NOT NULL,
    `r_hour` TIME NOT NULL,
    `act_status` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "add_container"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `add_container` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(11) NOT NULL,
    `letter_or` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tracking` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `username` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_dest` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_postal` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `origin_port` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `destination_port` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `origin_off` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `package` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_tax` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total_tax` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_insurance` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total_insurance` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ship_mode` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `n_weight` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `g_weight` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `s_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `length` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `width` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `height` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `incoterms` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pay_mode` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_curren` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotal` DOUBLE NOT NULL,
    `payment_status` TINYINT(4) NOT NULL,
    `s_week` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `expiration_date` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `deli_time` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATE NOT NULL,
    `r_hour` TIME NOT NULL,
    `courier` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status_courier` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `act_status` TINYINT(1) NOT NULL,
    `level` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "add_courier"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `add_courier` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `letter_or` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tracking` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `s_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `postal` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `username` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `rc_phone` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_dest` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_postal` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `origin_off` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `code_offnew` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `package` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_tax` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total_tax` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_insurance` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `total_insurance` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `itemcat` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_qnty` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_weight` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `v_weight` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `length` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `width` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `height` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_custom` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pay_mode` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_curren` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotal` DOUBLE NOT NULL,
    `payment_status` TINYINT(4) NOT NULL,
    `deli_time` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATE NOT NULL,
    `r_hour` TIME NOT NULL,
    `courier` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `service_options` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `collection_courier` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_driver` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status_courier` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `act_status` TINYINT(1) NOT NULL,
    `reasons` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deliver_date` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `delivery_hour` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `person_receives` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name_employee` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `level` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "c_tracking"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `c_tracking` (
    `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
    `n_order` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `order_track` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `name_off` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `role_user` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_courier` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "category"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `category` (
    `id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `name_item` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail_item` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cons_products"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `cons_products` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(11) NOT NULL,
    `con_tmp` INTEGER(11) NOT NULL,
    `trackings` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_invs` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_cons` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `s_names` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_qntys` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_weights` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `v_weights` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_descriptions` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotals` DOUBLE NOT NULL,
    `createds` DATE NOT NULL,
    `r_hours` TIME NOT NULL,
    `levels` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "cons_tmp"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `cons_tmp` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(11) NOT NULL,
    `con_tmp` INTEGER(11) NOT NULL,
    `trackings` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_invs` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_cons` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `s_names` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_qntys` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_weights` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `v_weights` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_descriptions` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotals` DOUBLE NOT NULL,
    `createds` DATE NOT NULL,
    `r_hours` TIME NOT NULL,
    `levels` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "consolidate"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `consolidate` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(11) NOT NULL,
    `letter_or` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tracking` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_cons` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `seals` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `username` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `r_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_dest` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_declarate` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_qnty` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_weight` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `code_off` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `code_offnew` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_curren` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_add_pound` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reexpedition` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `r_costtotal` DOUBLE NOT NULL,
    `pay_mode` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `payment_status` TINYINT(4) NOT NULL,
    `deli_time` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATE NOT NULL,
    `r_hour` TIME NOT NULL,
    `courier` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `service_options` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_driver` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status_courier` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `act_status` TINYINT(1) NOT NULL,
    `comments` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `deliver_date` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `delivery_hour` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `person_receives` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name_employee` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `level` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "courier_com"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `courier_com` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `name_com` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `address_cou` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone_cou` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `country_cou` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `city_cou` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `postal_cou` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "courier_track"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `courier_track` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `t_id` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `order_track` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `t_dest` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `t_city` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `comments` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `rc_phone` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `t_date` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `t_hour` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `status_courier` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `code_offnew` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `t_level` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "detail_container"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `detail_container` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(20) NOT NULL,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_container` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_weight` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_qty` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `price` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tprice` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATE NOT NULL,
    `act_status` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `level` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "detail_container_tmp"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `detail_container_tmp` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `idcon` INTEGER(20) NOT NULL,
    `order_inv` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_container` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_weight` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `detail_qty` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `price` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tprice` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATE NOT NULL,
    `act_status` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `level` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "email_templates"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_templates` (
    `id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `subject` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `help` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "incoterm"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `incoterm` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `inco_name` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "met_payment"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `met_payment` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `met_payment` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "news"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `news` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    `body` TEXT CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    `author` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    `created` DATE NOT NULL DEFAULT '0000-00-00',
    `active` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "offices"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `offices` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `name_off` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `code_off` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `address` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `city` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `phone_off` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "packaging"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `packaging` (
    `id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `name_pack` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail_pack` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `site_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_nit` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_phone` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cell_phone` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_address` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_country` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_city` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_postal` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `site_email` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `interms` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signing_customer` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `signing_company` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `site_url` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `reg_allowed` TINYINT(1) NOT NULL DEFAULT 1,
    `user_limit` TINYINT(1) NOT NULL DEFAULT 0,
    `reg_verify` TINYINT(1) NOT NULL DEFAULT 0,
    `notify_admin` TINYINT(1) NOT NULL DEFAULT 0,
    `auto_verify` TINYINT(1) NOT NULL DEFAULT 0,
    `account_paypal` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_id` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_perpage` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '10',
    `thumb_w` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `thumb_h` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `logo` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `favicon` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `backup` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mailer` ENUM('PHP','SMTP') COLLATE utf8_general_ci NOT NULL DEFAULT 'PHP',
    `smtp_host` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `smtp_user` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `smtp_pass` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `smtp_port` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_ssl` TINYINT(1) NOT NULL DEFAULT 0,
    `version` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `prefix` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `track_digit` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `prefix_con` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `track_container` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `prefix_consolidate` VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `track_consolidate` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tax` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `insurance` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `value_weight` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `meter` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_value_pound` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_add_pound` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_handling` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_fuel` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_reexpedition` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_logistic` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_surcharges` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_safe` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_nationalization` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_tariffs` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `c_vat` VARCHAR(4) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timezone` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "ship_rate"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `ship_rate` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `n_courier` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `services` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `weight` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `rate` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `deli_time` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `typeweight` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `free_ship` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `drop_off` VARCHAR(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created` DATETIME NOT NULL,
    `brand` VARCHAR(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shipping_line"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `shipping_line` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ship_line` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shipping_mode"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `shipping_mode` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ship_mode` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sms_templates"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `sms_templates` (
    `id` INTEGER(5) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `help` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `body3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `active` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "styles"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `styles` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `mod_style` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `detail` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `color` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "textsms"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `textsms` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `namesms` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin,
    `account_sid` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_bin,
    `auth_token` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin,
    `twilio_number` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `active_twi` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "textsmsnexmo"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `textsmsnexmo` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `namesms` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin,
    `api_key` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_bin,
    `api_secret` VARCHAR(55) CHARACTER SET utf8 COLLATE utf8_bin,
    `nexmo_number` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `active_nex` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `item_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `transaction_amount` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `transaction_state` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `transaction_track` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `transaction_date` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cookie_id` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `token` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
    `userlevel` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `fname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `postal` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `avatar` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `lastlogin` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `lastip` VARCHAR(16) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `notes` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `code_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `enrollment` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vehiclecode` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `gender` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `newsletter` TINYINT(1) NOT NULL DEFAULT 0,
    `terms` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `active` ENUM('y','n','b','t') COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "zone"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `zone` (
    `zone_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `country_code` CHAR(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    `zone_name` VARCHAR(35) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`zone_id`)
)
ENGINE = MYISAM;

CREATE INDEX `idx_country_code` ON `zone` (`country_code`);

CREATE INDEX `idx_zone_name` ON `zone` (`zone_name`);
