# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          bloodbank.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 18:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "tbl_agent"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_agent` (
    `agent_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `agent_name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_designation` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_organization` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_email` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_phone` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_website` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_city` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_state` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_country` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_zip_code` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_map` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_facebook` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_twitter` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_linkedin` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_googleplus` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_pinterest` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_token` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_time` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_access` INTEGER(11) NOT NULL,
    PRIMARY KEY (`agent_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_blood_group"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_blood_group` (
    `blood_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `blood_group_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`blood_group_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_category"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_category` (
    `category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category_slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_keyword` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_comment"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_comment` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `code_body` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `code_main` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_faq_category"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_faq_category` (
    `faq_category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `faq_category_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`faq_category_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_file"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_file` (
    `file_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `file_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `file_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`file_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_menu"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_menu` (
    `menu_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `menu_type` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `menu_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category_or_page_slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `menu_order` INTEGER(11) NOT NULL,
    `menu_parent` INTEGER(11) NOT NULL,
    `menu_url` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`menu_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_news"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_news` (
    `news_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `news_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `news_slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `news_content` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `news_date` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category_id` INTEGER(11) NOT NULL,
    `publisher` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `total_view` INTEGER(11) NOT NULL,
    `meta_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_keyword` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`news_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_page"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_page` (
    `page_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `page_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `page_slug` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `page_content` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `page_layout` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_keyword` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`page_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_partner"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_partner` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `url` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_pricing_plan"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_pricing_plan` (
    `pricing_plan_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `pricing_plan_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pricing_plan_price` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pricing_plan_day` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pricing_plan_item_allow` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pricing_plan_description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`pricing_plan_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_religion"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_religion` (
    `religion_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `religion_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`religion_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_settings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `favicon` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `footer_about` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `footer_copyright` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `contact_address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `contact_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `contact_phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `contact_fax` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `contact_map_iframe` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `receive_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `receive_email_subject` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `receive_email_thank_you_message` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `donor_email_subject` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `donor_email_thank_you_message` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `forget_password_message` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `total_recent_news_footer` INTEGER(10) NOT NULL,
    `total_popular_news_footer` INTEGER(10) NOT NULL,
    `total_recent_news_sidebar` INTEGER(11) NOT NULL,
    `total_popular_news_sidebar` INTEGER(11) NOT NULL,
    `total_recent_news_home_page` INTEGER(11) NOT NULL,
    `meta_title_home` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_keyword_home` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `meta_description_home` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_login` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_registration` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_forget_password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_blog` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_donor` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_agent` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `banner_search` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `search_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `search_photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `testimonial_photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `newsletter_text` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `mod_rewrite` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `paypal_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_social"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_social` (
    `social_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `social_name` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `social_url` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `social_icon` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`social_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_subscriber"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_subscriber` (
    `subs_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `subs_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `subs_date` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `subs_date_time` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `subs_hash` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `subs_active` INTEGER(11) NOT NULL,
    PRIMARY KEY (`subs_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_testimonial"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_testimonial` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `designation` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `company` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `comment` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_user"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_user` (
    `id` INTEGER(10) NOT NULL AUTO_INCREMENT,
    `full_name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `phone` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `role` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_donor"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_donor` (
    `donor_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `profession` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `education` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `gender` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `date_of_birth` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `religion_id` INTEGER(11) NOT NULL,
    `blood_group_id` INTEGER(11) NOT NULL,
    `email` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `phone` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `website` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `city` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `country` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `state` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `zip_code` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `map` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `photo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `facebook` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `twitter` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `linkedin` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `googleplus` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pinterest` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `agent_id` INTEGER(11) NOT NULL,
    `status` INTEGER(11) NOT NULL,
    PRIMARY KEY (`donor_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_faq"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_faq` (
    `faq_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `faq_title` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `faq_content` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `faq_category_id` INTEGER(11) NOT NULL,
    PRIMARY KEY (`faq_id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tbl_payment"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_payment` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `agent_id` INTEGER(11) NOT NULL,
    `payment_date` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `expire_date` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `txnid` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `paid_amount` INTEGER(11) NOT NULL,
    `pricing_plan_id` INTEGER(11) NOT NULL,
    `payment_status` VARCHAR(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_id` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_donor` ADD CONSTRAINT `tbl_agent_tbl_donor` 
    FOREIGN KEY (`agent_id`) REFERENCES `tbl_agent` (`agent_id`);

ALTER TABLE `tbl_donor` ADD CONSTRAINT `tbl_blood_group_tbl_donor` 
    FOREIGN KEY (`blood_group_id`) REFERENCES `tbl_blood_group` (`blood_group_id`);

ALTER TABLE `tbl_donor` ADD CONSTRAINT `tbl_religion_tbl_donor` 
    FOREIGN KEY (`religion_id`) REFERENCES `tbl_religion` (`religion_id`);

ALTER TABLE `tbl_faq` ADD CONSTRAINT `tbl_category_tbl_faq` 
    FOREIGN KEY (`faq_category_id`) REFERENCES `tbl_category` (`category_id`);

ALTER TABLE `tbl_faq` ADD CONSTRAINT `tbl_faq_category_tbl_faq` 
    FOREIGN KEY (`faq_category_id`) REFERENCES `tbl_faq_category` (`faq_category_id`);

ALTER TABLE `tbl_news` ADD CONSTRAINT `tbl_category_tbl_news` 
    FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);

ALTER TABLE `tbl_payment` ADD CONSTRAINT `tbl_agent_tbl_payment` 
    FOREIGN KEY (`agent_id`) REFERENCES `tbl_agent` (`agent_id`);

ALTER TABLE `tbl_payment` ADD CONSTRAINT `tbl_pricing_plan_tbl_payment` 
    FOREIGN KEY (`pricing_plan_id`) REFERENCES `tbl_pricing_plan` (`pricing_plan_id`);
