# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          marketplacedb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:56                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "admin_languages"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_languages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `is_default` TINYINT(1) NOT NULL DEFAULT 0,
    `language` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `file` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rtl` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "attributes"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `attributes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `attributable_id` INTEGER(11),
    `attributable_type` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `input_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `price_status` INTEGER(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
    `details_status` INTEGER(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "banners"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `banners` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` ENUM('Large','TopSmall','BottomSmall') COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blog_categories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_categories` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blogs"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `blogs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(191) NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `source` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `views` INTEGER(11) NOT NULL DEFAULT 0,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `meta_tag` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `tags` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_featured` TINYINT(1) NOT NULL DEFAULT 0,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "childcategories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `childcategories` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `subcategory_id` INTEGER(191) NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "conversations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `conversations` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `subject` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sent_user` INTEGER(191) NOT NULL,
    `recieved_user` INTEGER(191) NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "counters"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `counters` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `type` ENUM('referral','browser') COLLATE latin1_swedish_ci NOT NULL DEFAULT 'referral',
    `referral` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `total_count` INTEGER(11) NOT NULL DEFAULT 0,
    `todays_count` INTEGER(11) NOT NULL DEFAULT 0,
    `today` DATE,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "countries"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `countries` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `country_code` VARCHAR(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    `country_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "coupons"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `coupons` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `price` DOUBLE NOT NULL,
    `times` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `used` INTEGER(191) UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sign` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` DOUBLE NOT NULL,
    `is_default` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "email_templates"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `email_templates` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `email_type` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `email_subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `email_body` LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `status` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "faqs"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `faqs` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "generalsettings"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `generalsettings` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `favicon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `header_email` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `header_phone` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `footer` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `copyright` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `colors` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `loader` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `admin_loader` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_talkto` TINYINT(1) NOT NULL DEFAULT 1,
    `talkto` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_language` TINYINT(1) NOT NULL DEFAULT 1,
    `is_loader` TINYINT(1) NOT NULL DEFAULT 1,
    `map_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_disqus` TINYINT(1) NOT NULL DEFAULT 0,
    `disqus` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_contact` TINYINT(1) NOT NULL DEFAULT 0,
    `is_faq` TINYINT(1) NOT NULL DEFAULT 0,
    `guest_checkout` TINYINT(1) NOT NULL DEFAULT 0,
    `stripe_check` TINYINT(1) NOT NULL DEFAULT 0,
    `cod_check` TINYINT(1) NOT NULL DEFAULT 0,
    `stripe_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `stripe_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `currency_format` TINYINT(1) NOT NULL DEFAULT 0,
    `withdraw_fee` DOUBLE NOT NULL DEFAULT 0,
    `withdraw_charge` DOUBLE NOT NULL DEFAULT 0,
    `tax` DOUBLE NOT NULL DEFAULT 0,
    `shipping_cost` DOUBLE NOT NULL DEFAULT 0,
    `smtp_host` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_port` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_user` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `smtp_pass` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `from_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `from_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_smtp` TINYINT(1) NOT NULL DEFAULT 0,
    `is_comment` TINYINT(1) NOT NULL DEFAULT 1,
    `is_currency` TINYINT(1) NOT NULL DEFAULT 1,
    `add_cart` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `out_stock` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `add_wish` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `already_wish` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `wish_remove` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `add_compare` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `already_compare` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `compare_remove` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color_change` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `coupon_found` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `no_coupon` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `already_coupon` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_affilate` TINYINT(1) NOT NULL DEFAULT 1,
    `affilate_charge` INTEGER(100) NOT NULL DEFAULT 0,
    `affilate_banner` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `already_cart` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fixed_commission` DOUBLE NOT NULL DEFAULT 0,
    `percentage_commission` DOUBLE NOT NULL DEFAULT 0,
    `multiple_shipping` TINYINT(1) NOT NULL DEFAULT 0,
    `multiple_packaging` TINYINT(4) NOT NULL DEFAULT 0,
    `vendor_ship_info` TINYINT(1) NOT NULL DEFAULT 0,
    `reg_vendor` TINYINT(1) NOT NULL DEFAULT 0,
    `cod_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paypal_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `stripe_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `header_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `footer_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `copyright_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_admin_loader` TINYINT(1) NOT NULL DEFAULT 0,
    `menu_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `menu_hover_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_home` TINYINT(1) NOT NULL DEFAULT 0,
    `is_verification_email` TINYINT(1) NOT NULL DEFAULT 0,
    `instamojo_key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instamojo_token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `instamojo_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_instamojo` TINYINT(1) NOT NULL DEFAULT 0,
    `instamojo_sandbox` TINYINT(1) NOT NULL DEFAULT 0,
    `is_paystack` TINYINT(1) NOT NULL DEFAULT 0,
    `paystack_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paystack_email` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paystack_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `wholesell` INTEGER(191) NOT NULL DEFAULT 0,
    `is_capcha` TINYINT(1) NOT NULL DEFAULT 0,
    `error_banner` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_popup` TINYINT(1) NOT NULL DEFAULT 0,
    `popup_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `popup_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `popup_background` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `invoice_logo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `user_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `vendor_color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_secure` TINYINT(1) NOT NULL DEFAULT 0,
    `is_report` TINYINT(1) NOT NULL,
    `paypal_check` TINYINT(1) DEFAULT 0,
    `paypal_business` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `footer_logo` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_encryption` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paytm_merchant` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paytm_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paytm_website` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paytm_industry` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_paytm` INTEGER(11) NOT NULL DEFAULT 1,
    `paytm_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `paytm_mode` ENUM('sandbox','live') COLLATE utf8mb4_bin,
    `is_molly` TINYINT(1) NOT NULL DEFAULT 0,
    `molly_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `molly_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_razorpay` INTEGER(11) NOT NULL DEFAULT 1,
    `razorpay_key` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `razorpay_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `razorpay_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `show_stock` TINYINT(1) NOT NULL DEFAULT 0,
    `is_maintain` TINYINT(1) NOT NULL DEFAULT 0,
    `maintain_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `is_default` TINYINT(1) NOT NULL DEFAULT 0,
    `language` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `file` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "messages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `messages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `conversation_id` INTEGER(191) NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `sent_user` INTEGER(191),
    `recieved_user` INTEGER(191),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_tag` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `header` TINYINT(1) NOT NULL DEFAULT 0,
    `footer` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pagesettings"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `pagesettings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `contact_success` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `contact_email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `contact_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `side_title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `side_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `street` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fax` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `site` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slider` TINYINT(1) NOT NULL DEFAULT 1,
    `service` TINYINT(1) NOT NULL DEFAULT 1,
    `featured` TINYINT(1) NOT NULL DEFAULT 1,
    `small_banner` TINYINT(1) NOT NULL DEFAULT 1,
    `best` TINYINT(1) NOT NULL DEFAULT 1,
    `top_rated` TINYINT(1) NOT NULL DEFAULT 1,
    `large_banner` TINYINT(1) NOT NULL DEFAULT 1,
    `big` TINYINT(1) NOT NULL DEFAULT 1,
    `hot_sale` TINYINT(1) NOT NULL DEFAULT 1,
    `partners` TINYINT(1) NOT NULL DEFAULT 0,
    `review_blog` TINYINT(1) NOT NULL DEFAULT 1,
    `best_seller_banner` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `best_seller_banner_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `big_save_banner` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `big_save_banner_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `bottom_small` TINYINT(1) NOT NULL DEFAULT 0,
    `flash_deal` TINYINT(1) NOT NULL DEFAULT 0,
    `best_seller_banner1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `best_seller_banner_link1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `big_save_banner1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `big_save_banner_link1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `featured_category` INTEGER(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "partners"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `partners` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_gateways"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_gateways` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `subtitle` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(10) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pickups"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `pickups` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `location` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reviews"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reviews` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `section` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "seotools"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `seotools` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `google_analytics` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keys` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sliders"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `sliders` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `subtitle_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subtitle_size` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subtitle_color` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subtitle_anime` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title_size` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `title_color` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `title_anime` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `details_text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `details_size` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `details_color` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `details_anime` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `position` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "socialsettings"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `socialsettings` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `facebook` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `gplus` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `twitter` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `linkedin` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `dribble` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `f_status` TINYINT(4) NOT NULL DEFAULT 1,
    `g_status` TINYINT(4) NOT NULL DEFAULT 1,
    `t_status` TINYINT(4) NOT NULL DEFAULT 1,
    `l_status` TINYINT(4) NOT NULL DEFAULT 1,
    `d_status` TINYINT(4) NOT NULL DEFAULT 1,
    `f_check` TINYINT(10),
    `g_check` TINYINT(10),
    `fclient_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fclient_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fredirect` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gclient_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gclient_secret` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `gredirect` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subcategories"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `subcategories` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(191) NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subscribers"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscribers` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `zip` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fax` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `is_provider` TINYINT(10) NOT NULL DEFAULT 0,
    `status` TINYINT(10) NOT NULL DEFAULT 0,
    `verification_link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `email_verified` ENUM('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
    `affilate_code` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `affilate_income` DOUBLE NOT NULL DEFAULT 0,
    `shop_name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `owner_name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shop_number` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shop_address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `reg_number` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shop_message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shop_details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shop_image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `f_url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `g_url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `t_url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `l_url` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_vendor` TINYINT(1) NOT NULL DEFAULT 0,
    `f_check` TINYINT(1) NOT NULL DEFAULT 0,
    `g_check` TINYINT(1) NOT NULL DEFAULT 0,
    `t_check` TINYINT(1) NOT NULL DEFAULT 0,
    `l_check` TINYINT(1) NOT NULL DEFAULT 0,
    `mail_sent` TINYINT(1) NOT NULL DEFAULT 0,
    `shipping_cost` DOUBLE NOT NULL DEFAULT 0,
    `current_balance` DOUBLE NOT NULL DEFAULT 0,
    `date` DATE,
    `ban` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);

# ---------------------------------------------------------------------- #
# Add table "verifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `verifications` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `attachments` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('Pending','Verified','Declined') COLLATE latin1_swedish_ci,
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `admin_warning` TINYINT(1) NOT NULL DEFAULT 0,
    `warning_reason` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "withdraws"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `withdraws` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191),
    `method` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `acc_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `iban` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `acc_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `address` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `swift` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `reference` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `amount` FLOAT,
    `fee` FLOAT DEFAULT 0,
    `created_at` DATETIME,
    `updated_at` DATETIME,
    `status` ENUM('pending','completed','rejected') COLLATE latin1_swedish_ci NOT NULL DEFAULT 'pending',
    `type` ENUM('user','vendor') COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admin_user_conversations"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_user_conversations` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `subject` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(191) NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `type` ENUM('Ticket','Dispute') COLLATE utf8mb4_unicode_ci,
    `order_number` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admin_user_messages"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `admin_user_messages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `conversation_id` INTEGER(191) NOT NULL,
    `message` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id` INTEGER(191),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "admins"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `admins` (
    `id` INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `role_id` INTEGER(191) NOT NULL DEFAULT 0,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `shop_name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `admins_email_unique` ON `admins` (`email`);

# ---------------------------------------------------------------------- #
# Add table "attribute_options"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `attribute_options` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `attribute_id` INTEGER(11),
    `name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "favorite_sellers"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorite_sellers` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `vendor_id` INTEGER(191) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191),
    `cart` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `method` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shipping` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `pickup_location` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `totalQty` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pay_amount` FLOAT NOT NULL,
    `txnid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order_number` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_status` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `customer_email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `customer_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `customer_country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `customer_phone` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `customer_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `customer_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `customer_zip` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `shipping_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `shipping_country` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `shipping_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `shipping_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `shipping_address` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `shipping_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `shipping_zip` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `order_note` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `coupon_code` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `coupon_discount` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('pending','processing','completed','declined','on delivery') COLLATE latin1_swedish_ci NOT NULL DEFAULT 'pending',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `affilate_user` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `affilate_charge` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `currency_sign` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_value` DOUBLE NOT NULL,
    `shipping_cost` DOUBLE NOT NULL,
    `packing_cost` DOUBLE NOT NULL DEFAULT 0,
    `tax` INTEGER(191) NOT NULL,
    `dp` TINYINT(1) NOT NULL DEFAULT 0,
    `pay_id` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `vendor_shipping_id` INTEGER(191) NOT NULL DEFAULT 0,
    `vendor_packing_id` INTEGER(191) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "packages"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `packages` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL DEFAULT 0,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `subtitle` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price` DOUBLE NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `sku` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_type` ENUM('normal','affiliate') COLLATE latin1_swedish_ci NOT NULL DEFAULT 'normal',
    `affiliate_link` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `user_id` INTEGER(191) NOT NULL DEFAULT 0,
    `category_id` INTEGER(191) UNSIGNED NOT NULL,
    `subcategory_id` INTEGER(191) UNSIGNED,
    `childcategory_id` INTEGER(191) UNSIGNED,
    `attributes` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `thumbnail` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `file` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `size` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `size_qty` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `size_price` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price` DOUBLE NOT NULL,
    `previous_price` DOUBLE,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `stock` INTEGER(191),
    `policy` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(2) UNSIGNED NOT NULL DEFAULT 1,
    `views` INTEGER(191) UNSIGNED NOT NULL DEFAULT 0,
    `tags` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `features` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `colors` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `product_condition` TINYINT(1) NOT NULL DEFAULT 0,
    `ship` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_meta` TINYINT(1) NOT NULL DEFAULT 0,
    `meta_tag` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `youtube` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` ENUM('Physical','Digital','License') COLLATE latin1_swedish_ci NOT NULL,
    `license` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `license_qty` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `platform` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `region` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `licence_type` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `measure` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `featured` TINYINT(2) UNSIGNED NOT NULL DEFAULT 0,
    `best` TINYINT(10) UNSIGNED NOT NULL DEFAULT 0,
    `top` TINYINT(10) UNSIGNED NOT NULL DEFAULT 0,
    `hot` TINYINT(10) UNSIGNED NOT NULL DEFAULT 0,
    `latest` TINYINT(10) UNSIGNED NOT NULL DEFAULT 0,
    `big` TINYINT(10) UNSIGNED NOT NULL DEFAULT 0,
    `trending` TINYINT(1) NOT NULL DEFAULT 0,
    `sale` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `is_discount` TINYINT(1) NOT NULL DEFAULT 0,
    `discount_date` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `whole_sell_qty` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `whole_sell_discount` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `is_catalog` TINYINT(1) NOT NULL DEFAULT 0,
    `catalog_id` INTEGER(191) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE FULLTEXT INDEX `name` ON `products` (`name` DESC);

CREATE FULLTEXT INDEX `attributes` ON `products` (`attributes` DESC);

# ---------------------------------------------------------------------- #
# Add table "ratings"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `ratings` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `product_id` INTEGER(191) NOT NULL,
    `review` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rating` TINYINT(2) NOT NULL,
    `review_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reports"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reports` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `product_id` INTEGER(192) NOT NULL,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `note` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "services"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `services` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL DEFAULT 0,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shippings"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `shippings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL DEFAULT 0,
    `title` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `subtitle` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `price` DOUBLE NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "social_providers"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `social_providers` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `provider_id` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `provider` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subscriptions"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscriptions` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_code` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE NOT NULL DEFAULT 0,
    `days` INTEGER(11) NOT NULL,
    `allowed_products` INTEGER(11) NOT NULL DEFAULT 0,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_notifications"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_notifications` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `order_number` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_read` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "user_subscriptions"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_subscriptions` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `subscription_id` INTEGER(191) NOT NULL,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency_code` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE NOT NULL DEFAULT 0,
    `days` INTEGER(11) NOT NULL,
    `allowed_products` INTEGER(11) NOT NULL DEFAULT 0,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `method` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
    `txnid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `charge_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` INTEGER(11) NOT NULL DEFAULT 0,
    `payment_number` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "vendor_orders"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `vendor_orders` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) NOT NULL,
    `order_id` INTEGER(191) NOT NULL,
    `qty` INTEGER(191) NOT NULL,
    `price` DOUBLE NOT NULL,
    `order_number` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` ENUM('pending','processing','completed','declined','on delivery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "wishlists"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `wishlists` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) UNSIGNED NOT NULL,
    `product_id` INTEGER(191) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) UNSIGNED NOT NULL,
    `product_id` INTEGER(191) UNSIGNED NOT NULL,
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "galleries"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `galleries` (
    `id` INTEGER(191) UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(191) UNSIGNED NOT NULL,
    `photo` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "notifications"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `notifications` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(191) UNSIGNED,
    `user_id` INTEGER(191),
    `vendor_id` INTEGER(191),
    `product_id` INTEGER(191),
    `conversation_id` INTEGER(191),
    `is_read` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "order_tracks"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_tracks` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER(191) NOT NULL,
    `title` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_clicks"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_clicks` (
    `id` INTEGER(191) NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER(191) NOT NULL,
    `date` DATE,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "replies"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `replies` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER(191) UNSIGNED NOT NULL,
    `comment_id` INTEGER(191) UNSIGNED NOT NULL,
    `text` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `admin_user_conversations` ADD CONSTRAINT `users_admin_user_conversations` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `admin_user_messages` ADD CONSTRAINT `conversations_admin_user_messages` 
    FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`);

ALTER TABLE `admin_user_messages` ADD CONSTRAINT `users_admin_user_messages` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `admins` ADD CONSTRAINT `roles_admins` 
    FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

ALTER TABLE `attribute_options` ADD CONSTRAINT `attributes_attribute_options` 
    FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `products_comments` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `users_comments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `favorite_sellers` ADD CONSTRAINT `users_favorite_sellers` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `galleries` ADD CONSTRAINT `products_galleries` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `messages` ADD CONSTRAINT `conversations_messages` 
    FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `conversations_notifications` 
    FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `orders_notifications` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `products_notifications` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `notifications` ADD CONSTRAINT `users_notifications` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `order_tracks` ADD CONSTRAINT `orders_order_tracks` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orders` ADD CONSTRAINT `users_orders` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `packages` ADD CONSTRAINT `users_packages` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `product_clicks` ADD CONSTRAINT `products_product_clicks` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `products` ADD CONSTRAINT `users_products` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `ratings` ADD CONSTRAINT `products_ratings` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `ratings` ADD CONSTRAINT `users_ratings` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `replies` ADD CONSTRAINT `comments_replies` 
    FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

ALTER TABLE `replies` ADD CONSTRAINT `users_replies` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `reports` ADD CONSTRAINT `products_reports` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `reports` ADD CONSTRAINT `users_reports` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `services` ADD CONSTRAINT `users_services` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `shippings` ADD CONSTRAINT `users_shippings` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `social_providers` ADD CONSTRAINT `users_social_providers` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `subscriptions` ADD CONSTRAINT `products_subscriptions` 
    FOREIGN KEY (`allowed_products`) REFERENCES `products` (`id`);

ALTER TABLE `user_notifications` ADD CONSTRAINT `users_user_notifications` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_subscriptions` ADD CONSTRAINT `products_user_subscriptions` 
    FOREIGN KEY (`allowed_products`) REFERENCES `products` (`id`);

ALTER TABLE `user_subscriptions` ADD CONSTRAINT `subscriptions_user_subscriptions` 
    FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

ALTER TABLE `user_subscriptions` ADD CONSTRAINT `users_user_subscriptions` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `vendor_orders` ADD CONSTRAINT `orders_vendor_orders` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `vendor_orders` ADD CONSTRAINT `users_vendor_orders` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `verifications` ADD CONSTRAINT `users_verifications` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `wishlists` ADD CONSTRAINT `products_wishlists` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `wishlists` ADD CONSTRAINT `users_wishlists` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `withdraws` ADD CONSTRAINT `users_withdraws` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
