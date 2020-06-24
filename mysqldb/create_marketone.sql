# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          marketone.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 10:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "ad_spaces"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `ad_spaces` (
    `id` TINYINT(4) NOT NULL AUTO_INCREMENT,
    `ad_space` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ad_code_728` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ad_code_468` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ad_code_300` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ad_code_250` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blog_categories"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lang_id` TINYINT(4) DEFAULT 1,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `keywords` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `category_order` TINYINT(4),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_lang_id` ON `blog_categories` (`lang_id`);

# ---------------------------------------------------------------------- #
# Add table "blog_tags"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_tags` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11),
    `tag` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `tag_slug` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_post_id` ON `blog_tags` (`post_id`);

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `slug` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `parent_id` INTEGER(11) DEFAULT 0,
    `title_meta_tag` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `keywords` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `category_order` MEDIUMINT(9) DEFAULT 0,
    `homepage_order` MEDIUMINT(9) DEFAULT 5,
    `visibility` TINYINT(1) DEFAULT 1,
    `show_on_homepage` TINYINT(1) DEFAULT 0,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `show_image_on_navigation` TINYINT(1) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_parent_id` ON `categories` (`parent_id`);

CREATE INDEX `idx_visibility` ON `categories` (`visibility`);

CREATE INDEX `idx_show_on_homepage` ON `categories` (`show_on_homepage`);

# ---------------------------------------------------------------------- #
# Add table "categories_lang"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories_lang` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER(11),
    `lang_id` TINYINT(4) DEFAULT 1,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_category_id` ON `categories_lang` (`category_id`);

CREATE INDEX `idx_lang_id` ON `categories_lang` (`lang_id`);

# ---------------------------------------------------------------------- #
# Add table "ci_sessions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `ci_sessions` (
    `id` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `ip_address` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0,
    `data` BLOB NOT NULL
)
ENGINE = INNODB;

CREATE INDEX `ci_sessions_timestamp` ON `ci_sessions` (`timestamp`);

# ---------------------------------------------------------------------- #
# Add table "contacts"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `contacts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `message` VARCHAR(5000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "conversations"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `conversations` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `sender_id` INTEGER(11),
    `receiver_id` INTEGER(11),
    `subject` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_sender_id` ON `conversations` (`sender_id`);

CREATE INDEX `idx_receiver_id` ON `conversations` (`receiver_id`);

# ---------------------------------------------------------------------- #
# Add table "currencies"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies` (
    `id` INTEGER(11) NOT NULL,
    `code` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `symbol` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `hex` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_fields"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields` (
    `id` INTEGER(11) NOT NULL,
    `field_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `row_width` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'half',
    `is_required` TINYINT(1) DEFAULT 0,
    `status` TINYINT(1) DEFAULT 1,
    `field_order` INTEGER(11) DEFAULT 1,
    `is_product_filter` TINYINT(1) DEFAULT 0,
    `product_filter_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "custom_fields_category"                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields_category` (
    `id` INTEGER(11) NOT NULL,
    `category_id` INTEGER(11),
    `field_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_category_id` ON `custom_fields_category` (`category_id`);

CREATE INDEX `idx_field_id` ON `custom_fields_category` (`field_id`);

# ---------------------------------------------------------------------- #
# Add table "custom_fields_lang"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields_lang` (
    `id` INTEGER(11) NOT NULL,
    `field_id` INTEGER(11),
    `lang_id` TINYINT(4),
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_field_id` ON `custom_fields_lang` (`field_id`);

CREATE INDEX `idx_lang_id` ON `custom_fields_lang` (`lang_id`);

# ---------------------------------------------------------------------- #
# Add table "custom_fields_options"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields_options` (
    `id` INTEGER(11) NOT NULL,
    `lang_id` TINYINT(4),
    `field_id` INTEGER(11),
    `field_option` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `common_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_lang_id` ON `custom_fields_options` (`lang_id`);

CREATE INDEX `idx_field_id` ON `custom_fields_options` (`field_id`);

# ---------------------------------------------------------------------- #
# Add table "followers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `followers` (
    `id` INTEGER(11) NOT NULL,
    `following_id` INTEGER(11),
    `follower_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_following_id` ON `followers` (`following_id`);

CREATE INDEX `idx_follower_id` ON `followers` (`follower_id`);

# ---------------------------------------------------------------------- #
# Add table "fonts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `fonts` (
    `id` INTEGER(11) NOT NULL,
    `font_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `font_url` VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `font_family` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_default` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "form_settings"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `form_settings` (
    `id` INTEGER(11) NOT NULL,
    `product_conditions` TINYINT(1) DEFAULT 1,
    `product_conditions_required` TINYINT(1) DEFAULT 1,
    `quantity` TINYINT(1) DEFAULT 1,
    `price` TINYINT(1) DEFAULT 1,
    `price_required` TINYINT(1) DEFAULT 1,
    `quantity_required` TINYINT(1) DEFAULT 1,
    `variations` TINYINT(1) DEFAULT 1,
    `shipping` TINYINT(1) DEFAULT 1,
    `shipping_required` TINYINT(1) DEFAULT 1,
    `product_location` TINYINT(1) DEFAULT 1,
    `product_location_required` TINYINT(1) DEFAULT 1,
    `physical_demo_url` TINYINT(1) DEFAULT 0,
    `physical_video_preview` TINYINT(1) DEFAULT 1,
    `physical_audio_preview` TINYINT(1) DEFAULT 1,
    `digital_demo_url` TINYINT(1) DEFAULT 1,
    `digital_video_preview` TINYINT(1) DEFAULT 1,
    `digital_audio_preview` TINYINT(1) DEFAULT 1,
    `digital_allowed_file_extensions` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'zip',
    `external_link` TINYINT(1) NOT NULL DEFAULT 1,
    `sitemap_frequency` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'monthly',
    `sitemap_last_modification` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'server_response',
    `sitemap_priority` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'automatically',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "general_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `general_settings` (
    `id` INTEGER(11) NOT NULL,
    `physical_products_system` TINYINT(1) DEFAULT 1,
    `digital_products_system` TINYINT(1) DEFAULT 1,
    `marketplace_system` TINYINT(1) DEFAULT 1,
    `classified_ads_system` TINYINT(1) DEFAULT 1,
    `bidding_system` TINYINT(1) DEFAULT 1,
    `multi_vendor_system` TINYINT(1) DEFAULT 1,
    `vat_status` TINYINT(1) DEFAULT 1,
    `site_lang` TINYINT(4) DEFAULT 1,
    `timezone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'America/New_York',
    `application_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `selected_navigation` TINYINT(4) DEFAULT 1,
    `menu_limit` TINYINT(4) DEFAULT 9,
    `recaptcha_site_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `recaptcha_secret_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `recaptcha_lang` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `custom_css_codes` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `custom_javascript_codes` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mail_library` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'swift',
    `mail_protocol` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'smtp',
    `mail_host` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mail_port` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mail_username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mail_password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `mail_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email_verification` TINYINT(1) DEFAULT 0,
    `facebook_app_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `facebook_app_secret` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_client_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_client_secret` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vk_app_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vk_secure_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_analytics` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `promoted_products` TINYINT(1) DEFAULT 1,
    `multilingual_system` TINYINT(1) DEFAULT 1,
    `product_comments` TINYINT(1) DEFAULT 1,
    `comment_approval_system` TINYINT(1) DEFAULT 0,
    `reviews` TINYINT(1) DEFAULT 1,
    `blog_comments` TINYINT(1) DEFAULT 1,
    `slider_status` TINYINT(4) DEFAULT 1,
    `slider_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'full_width',
    `slider_effect` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'fade',
    `index_categories` TINYINT(1) DEFAULT 1,
    `index_promoted_products` TINYINT(1) DEFAULT 1,
    `index_promoted_products_count` TINYINT(1) DEFAULT 8,
    `index_latest_products` TINYINT(1) DEFAULT 1,
    `index_latest_products_count` TINYINT(1) DEFAULT 4,
    `index_blog_slider` TINYINT(1) DEFAULT 1,
    `product_link_structure` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'slug-id',
    `mds_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `purchase_code` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `site_color` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT default,
    `logo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `logo_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `favicon` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `watermark_image_large` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `watermark_image_mid` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `watermark_image_small` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `watermark_vrt_alignment` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'middle',
    `watermark_hor_alignment` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'center',
    `watermark_product_images` TINYINT(1) DEFAULT 0,
    `watermark_blog_images` TINYINT(1) DEFAULT 0,
    `watermark_thumbnail_images` TINYINT(1) DEFAULT 0,
    `facebook_comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `facebook_comment_status` TINYINT(1) DEFAULT 0,
    `cache_system` TINYINT(1) DEFAULT 0,
    `refresh_cache_database_changes` TINYINT(1) DEFAULT 0,
    `cache_refresh_time` INTEGER(11) DEFAULT 1800,
    `rss_system` TINYINT(1) DEFAULT 1,
    `approve_before_publishing` TINYINT(1) DEFAULT 1,
    `commission_rate` TINYINT(4) DEFAULT 0,
    `send_email_new_product` TINYINT(1) DEFAULT 0,
    `send_email_buyer_purchase` TINYINT(1) DEFAULT 0,
    `send_email_contact_messages` TINYINT(1) DEFAULT 0,
    `send_email_order_shipped` TINYINT(1) DEFAULT 0,
    `send_email_shop_opening_request` TINYINT(1) DEFAULT 0,
    `send_email_bidding_system` TINYINT(1) DEFAULT 0,
    `mail_options_account` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vendor_verification_system` TINYINT(1) DEFAULT 1,
    `hide_vendor_contact_information` TINYINT(1) DEFAULT 0,
    `guest_checkout` TINYINT(1) DEFAULT 0,
    `maintenance_mode_title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `maintenance_mode_description` VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `maintenance_mode_status` TINYINT(1) DEFAULT 0,
    `max_file_size_image` BIGINT(20) DEFAULT 10485760,
    `max_file_size_video` BIGINT(20) DEFAULT 31457280,
    `max_file_size_audio` BIGINT(20) DEFAULT 10485760,
    `google_adsense_code` VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "language_translations"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `language_translations` (
    `id` INTEGER(11) NOT NULL,
    `lang_id` SMALLINT(6),
    `label` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `translation` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_lang_id` ON `language_translations` (`lang_id`);

# ---------------------------------------------------------------------- #
# Add table "languages"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `languages` (
    `id` TINYINT(4) NOT NULL,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `short_form` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `language_code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `text_direction` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `language_order` TINYINT(4) NOT NULL DEFAULT 1,
    `ckeditor_lang` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'en',
    `flag_path` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "location_cities"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `location_cities` (
    `id` MEDIUMINT(9) NOT NULL,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country_id` SMALLINT(6) NOT NULL,
    `state_id` MEDIUMINT(9) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_country_id` ON `location_cities` (`country_id`);

CREATE INDEX `idx_state_id` ON `location_cities` (`state_id`);

# ---------------------------------------------------------------------- #
# Add table "location_countries"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `location_countries` (
    `id` SMALLINT(6) NOT NULL,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "location_states"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `location_states` (
    `id` MEDIUMINT(9) NOT NULL,
    `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `country_id` SMALLINT(6) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_country_id` ON `location_states` (`country_id`);

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `id` BIGINT(20) NOT NULL,
    `order_number` BIGINT(20),
    `buyer_id` INTEGER(11) NOT NULL,
    `buyer_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price_subtotal` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price_vat` BIGINT(20) DEFAULT 0,
    `price_shipping` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price_total` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price_currency` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 0,
    `payment_method` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_order_number` ON `orders` (`order_number`);

CREATE INDEX `idx_buyer_id` ON `orders` (`buyer_id`);

CREATE INDEX `idx_status` ON `orders` (`status`);

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(11) NOT NULL,
    `lang_id` INTEGER(11) DEFAULT 1,
    `title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `keywords` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `page_content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `page_order` INTEGER(11) DEFAULT 1,
    `visibility` TINYINT(1) DEFAULT 1,
    `title_active` TINYINT(1) DEFAULT 1,
    `location` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'information',
    `is_custom` TINYINT(1) NOT NULL DEFAULT 1,
    `page_default_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment_settings` (
    `id` INTEGER(11) NOT NULL,
    `default_product_currency` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'USD',
    `allow_all_currencies_for_classied` TINYINT(1) DEFAULT 1,
    `promoted_products_payment_currency` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'USD',
    `currency_format` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'us',
    `currency_symbol_format` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'left',
    `space_between_money_currency` TINYINT(1) DEFAULT 0,
    `paypal_enabled` TINYINT(1) DEFAULT 0,
    `paypal_mode` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'live',
    `paypal_client_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paypal_secret_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stripe_enabled` TINYINT(1) DEFAULT 0,
    `stripe_publishable_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stripe_secret_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paystack_enabled` TINYINT(1) DEFAULT 0,
    `paystack_secret_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `paystack_public_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `razorpay_enabled` TINYINT(1) DEFAULT 0,
    `razorpay_key_id` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `razorpay_key_secret` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pagseguro_enabled` TINYINT(1) DEFAULT 0,
    `pagseguro_mode` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'production',
    `pagseguro_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pagseguro_token` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iyzico_enabled` TINYINT(1) DEFAULT 0,
    `iyzico_mode` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'live',
    `iyzico_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'checkout_form',
    `iyzico_api_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iyzico_secret_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iyzico_submerchant_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `bank_transfer_enabled` TINYINT(1) DEFAULT 0,
    `bank_transfer_accounts` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cash_on_delivery_enabled` TINYINT(1) DEFAULT 1,
    `price_per_day` BIGINT(20) DEFAULT 1,
    `price_per_month` BIGINT(20) DEFAULT 3,
    `free_product_promotion` TINYINT(1) DEFAULT 0,
    `payout_paypal_enabled` TINYINT(1) DEFAULT 1,
    `payout_iban_enabled` TINYINT(1) DEFAULT 1,
    `payout_swift_enabled` TINYINT(1) DEFAULT 1,
    `min_payout_paypal` BIGINT(20) DEFAULT 5000,
    `min_payout_iban` BIGINT(20) DEFAULT 5000,
    `min_payout_swift` BIGINT(20) DEFAULT 50000,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "product_options"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_options` (
    `id` INTEGER(11) NOT NULL,
    `common_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `option_label` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `option_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `lang_id` TINYINT(4),
    `option_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `shipping_cost` TINYINT(1),
    `is_visible` TINYINT(1),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "routes"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `routes` (
    `id` INTEGER(11) NOT NULL,
    `admin` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'admin',
    `blog` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'blog',
    `tag` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'tag',
    `quote_requests` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT quote-requests,
    `sent_quote_requests` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'sent-quote-requests',
    `cart` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'cart',
    `shipping` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'shipping',
    `payment_method` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'payment-method',
    `payment` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'payment',
    `promote_payment_completed` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'promote-payment-completed',
    `orders` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'orders',
    `order_details` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'order',
    `order_completed` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'order-completed',
    `completed_orders` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'completed-orders',
    `messages` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'messages',
    `conversation` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'conversation',
    `profile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'profile',
    `wishlist` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'wishlist',
    `settings` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'settings',
    `update_profile` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'update-profile',
    `followers` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'followers',
    `following` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'following',
    `sales` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'sales',
    `sale` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'sale',
    `sell_now` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'sell-now',
    `start_selling` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'start-selling',
    `products` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'products',
    `product_details` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'product-details',
    `edit_product` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'edit_product',
    `promote_product` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'promote-product',
    `pending_products` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending-products',
    `hidden_products` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'hidden-products',
    `latest_products` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'latest-products',
    `featured_products` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'featured-products',
    `drafts` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'drafts',
    `downloads` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'downloads',
    `seller` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'seller',
    `earnings` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'earnings',
    `payouts` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'payouts',
    `set_payout_account` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'set-payout-account',
    `pricing` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pricing',
    `reviews` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'reviews',
    `category` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'category',
    `completed_sales` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'completed-sales',
    `shop_settings` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'shop-settings',
    `personal_information` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'personal-information',
    `shipping_address` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'shipping-address',
    `social_media` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'social-media',
    `search` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'search',
    `register` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'register',
    `members` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'members',
    `forgot_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'forgot-password',
    `change_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'change-password',
    `reset_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'reset-password',
    `rss_feeds` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'rss-feeds',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(11) NOT NULL,
    `lang_id` INTEGER(11) DEFAULT 1,
    `site_font` SMALLINT(6) DEFAULT 19,
    `site_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `homepage_title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Home',
    `site_description` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `keywords` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `facebook_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `twitter_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `instagram_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pinterest_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `linkedin_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vk_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `youtube_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `about_footer` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_text` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_address` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `contact_phone` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `copyright` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `cookies_warning` TINYINT(1) DEFAULT 0,
    `cookies_warning_text` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "slider"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `slider` (
    `id` INTEGER(11) NOT NULL,
    `lang_id` TINYINT(4) DEFAULT 1,
    `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `description` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `item_order` SMALLINT(6) DEFAULT 1,
    `button_text` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `animation_title` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'none',
    `animation_description` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'none',
    `animation_button` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'none',
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `text_color` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#ffffff',
    `button_color` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#222222',
    `button_text_color` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#ffffff',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "storage_settings"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `storage_settings` (
    `id` INTEGER(11) NOT NULL,
    `storage` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    `aws_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `aws_secret` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `aws_bucket` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `aws_region` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'us-west-2',
    `aws_base_url` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'https://s3.amazonaws.com/',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "subscribers"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `subscribers` (
    `id` INTEGER(11) NOT NULL,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `token` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(11) NOT NULL,
    `username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'name@domain.com',
    `email_status` TINYINT(1) DEFAULT 0,
    `token` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `role` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'member',
    `balance` BIGINT(20) DEFAULT 0,
    `number_of_sales` INTEGER(11) DEFAULT 0,
    `user_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'registered',
    `facebook_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `google_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vkontakte_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `avatar` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `banned` TINYINT(1) DEFAULT 0,
    `first_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shop_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `about_me` VARCHAR(5000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `phone_number` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country_id` INTEGER(11),
    `state_id` INTEGER(11),
    `city_id` INTEGER(11),
    `address` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `show_email` TINYINT(1) DEFAULT 0,
    `show_phone` TINYINT(1) DEFAULT 0,
    `show_location` TINYINT(1) DEFAULT 0,
    `facebook_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `twitter_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `instagram_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `pinterest_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `linkedin_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `vk_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `youtube_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `last_seen` TIMESTAMP,
    `show_rss_feeds` TINYINT(1) DEFAULT 0,
    `send_email_new_message` TINYINT(1) DEFAULT 0,
    `shipping_first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_phone_number` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_address_1` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_address_2` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip_code` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_active_shop_request` TINYINT(1) DEFAULT 0,
    `send_email_when_item_sold` TINYINT(1) DEFAULT 1,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "bank_transfers"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `bank_transfers` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `order_number` BIGINT(20),
    `payment_note` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `receipt_path` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_id` INTEGER(11),
    `user_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending',
    `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blog_comments"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER(11),
    `user_id` INTEGER(11),
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment` VARCHAR(5000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 1,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_post_id` ON `blog_comments` (`post_id`);

CREATE INDEX `idx_user_id` ON `blog_comments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "blog_posts"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `blog_posts` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `lang_id` TINYINT(4) DEFAULT 1,
    `title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `summary` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `keywords` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `category_id` INTEGER(11),
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    `image_default` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image_small` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_id` INTEGER(11) DEFAULT 1,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_lang_id` ON `blog_posts` (`lang_id`);

CREATE INDEX `idx_category_id` ON `blog_posts` (`category_id`);

# ---------------------------------------------------------------------- #
# Add table "conversation_messages"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `conversation_messages` (
    `id` INTEGER(11) NOT NULL,
    `conversation_id` INTEGER(11),
    `sender_id` INTEGER(11),
    `receiver_id` INTEGER(11),
    `message` VARCHAR(10000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_read` TINYINT(1) NOT NULL DEFAULT 0,
    `deleted_user_id` INTEGER(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_conversation_id` ON `conversation_messages` (`conversation_id`);

CREATE INDEX `idx_sender_id` ON `conversation_messages` (`sender_id`);

CREATE INDEX `idx_receiver_id` ON `conversation_messages` (`receiver_id`);

# ---------------------------------------------------------------------- #
# Add table "earnings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `earnings` (
    `id` INTEGER(11) NOT NULL,
    `order_number` BIGINT(20),
    `user_id` INTEGER(11),
    `price` BIGINT(20),
    `commission_rate` TINYINT(4),
    `shipping_cost` BIGINT(20),
    `earned_amount` BIGINT(20),
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'USD',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_user_id` ON `earnings` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "images_file_manager"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `images_file_manager` (
    `id` INTEGER(11) NOT NULL,
    `image_path` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    `user_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_user_id` ON `images_file_manager` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "invoices"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `invoices` (
    `id` INTEGER(11) NOT NULL,
    `order_id` BIGINT(20),
    `order_number` BIGINT(20),
    `client_username` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_first_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_last_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `client_address` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `invoice_items` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_order_id` ON `invoices` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "order_shipping"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_shipping` (
    `id` BIGINT(20) NOT NULL,
    `order_id` BIGINT(20) NOT NULL,
    `shipping_first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_phone_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_address_1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_address_2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_zip_code` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_first_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_last_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_phone_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_address_1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_address_2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_country` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `billing_zip_code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_order_id` ON `order_shipping` (`order_id`);

# ---------------------------------------------------------------------- #
# Add table "payouts"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `payouts` (
    `id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11),
    `payout_method` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `amount` BIGINT(20),
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 0,
    `created_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_user_id` ON `payouts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `products` (
    `id` INTEGER(11) NOT NULL,
    `title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `slug` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'physical',
    `listing_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'sell_on_site',
    `sku` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `category_id` INTEGER(11),
    `price` BIGINT(20),
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `discount_rate` SMALLINT(3) DEFAULT 0,
    `vat_rate` SMALLINT(3) DEFAULT 0,
    `description` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_condition` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `country_id` INTEGER(11),
    `state_id` INTEGER(11),
    `city_id` INTEGER(11),
    `address` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `zip_code` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_id` INTEGER(11),
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    `is_promoted` TINYINT(1) DEFAULT 0,
    `promote_start_date` TIMESTAMP,
    `promote_end_date` TIMESTAMP,
    `promote_plan` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `promote_day` INTEGER(11),
    `visibility` TINYINT(1) NOT NULL DEFAULT 1,
    `rating` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0',
    `hit` INTEGER(11) DEFAULT 0,
    `demo_url` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `external_link` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `files_included` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stock` INTEGER(11) DEFAULT 1,
    `shipping_time` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '2_3_business_days',
    `shipping_cost_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_cost` BIGINT(20) DEFAULT 0,
    `shipping_cost_additional` BIGINT(20) DEFAULT 0,
    `is_deleted` TINYINT(1) DEFAULT 0,
    `is_draft` TINYINT(1) DEFAULT 0,
    `is_free_product` TINYINT(1) DEFAULT 0,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_category_id` ON `products` (`category_id`);

CREATE INDEX `idx_country_id` ON `products` (`country_id`);

CREATE INDEX `idx_state_id` ON `products` (`state_id`);

CREATE INDEX `idx_city_id` ON `products` (`city_id`);

CREATE INDEX `idx_user_id` ON `products` (`user_id`);

CREATE INDEX `idx_status` ON `products` (`status`);

CREATE INDEX `idx_is_promoted` ON `products` (`is_promoted`);

CREATE INDEX `idx_visibility` ON `products` (`visibility`);

CREATE INDEX `idx_is_deleted` ON `products` (`is_deleted`);

CREATE INDEX `idx_is_draft` ON `products` (`is_draft`);

CREATE INDEX `idx_created_at` ON `products` (`created_at`);

# ---------------------------------------------------------------------- #
# Add table "promoted_transactions"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `promoted_transactions` (
    `id` INTEGER(11) NOT NULL,
    `payment_method` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `user_id` INTEGER(11),
    `product_id` INTEGER(11),
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_amount` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `purchased_plan` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `day_count` INTEGER(11),
    `ip_address` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "quote_requests"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `quote_requests` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `product_title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_quantity` MEDIUMINT(9) DEFAULT 1,
    `seller_id` INTEGER(11),
    `buyer_id` INTEGER(11),
    `status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending',
    `price_offered` BIGINT(20),
    `price_currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_cost` BIGINT(20),
    `is_buyer_deleted` TINYINT(1) DEFAULT 0,
    `is_seller_deleted` TINYINT(1) DEFAULT 0,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `quote_requests` (`product_id`);

CREATE INDEX `idx_seller_id` ON `quote_requests` (`seller_id`);

CREATE INDEX `idx_buyer_id` ON `quote_requests` (`buyer_id`);

# ---------------------------------------------------------------------- #
# Add table "reviews"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reviews` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `user_id` INTEGER(11),
    `rating` INTEGER(11),
    `review` VARCHAR(10000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `reviews` (`product_id`);

CREATE INDEX `idx_user_id` ON `reviews` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "transactions"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `transactions` (
    `id` INTEGER(11) NOT NULL,
    `payment_method` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `order_id` INTEGER(11),
    `user_id` INTEGER(11),
    `user_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_amount` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip_address` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_payment_id` ON `transactions` (`payment_id`);

CREATE INDEX `idx_order_id` ON `transactions` (`order_id`);

CREATE INDEX `idx_user_id` ON `transactions` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "user_payout_accounts"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `user_payout_accounts` (
    `id` INTEGER(11) NOT NULL,
    `user_id` INTEGER(11),
    `payout_paypal_email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iban_full_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iban_country_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iban_bank_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `iban_number` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_full_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_address` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_state` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_postcode` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_country_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_bank_account_holder_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_iban` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_code` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_bank_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_bank_branch_city` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `swift_bank_branch_country_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_user_id` ON `user_payout_accounts` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "variations"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `variations` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `user_id` INTEGER(11),
    `parent_id` INTEGER(11) DEFAULT 0,
    `label_names` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `variation_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `insert_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'new',
    `option_display_type` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'text',
    `show_images_on_slider` TINYINT(1) DEFAULT 0,
    `use_different_price` TINYINT(1) DEFAULT 0,
    `is_visible` TINYINT(1) DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `variations` (`product_id`);

CREATE INDEX `idx_user_id` ON `variations` (`user_id`);

CREATE INDEX `idx_parent_id` ON `variations` (`parent_id`);

CREATE INDEX `idx_is_visible` ON `variations` (`is_visible`);

# ---------------------------------------------------------------------- #
# Add table "wishlist"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `wishlist` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `user_id` INTEGER(11),
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `wishlist` (`product_id`);

CREATE INDEX `idx_user_id` ON `wishlist` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "comments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `comments` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER(11) DEFAULT 0,
    `product_id` INTEGER(11),
    `user_id` INTEGER(11),
    `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `comment` VARCHAR(5000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `status` TINYINT(1) DEFAULT 1,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_parent_id` ON `comments` (`parent_id`);

CREATE INDEX `idx_product_id` ON `comments` (`product_id`);

CREATE INDEX `idx_user_id` ON `comments` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "custom_fields_product"                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `custom_fields_product` (
    `id` INTEGER(11) NOT NULL,
    `field_id` INTEGER(11),
    `product_id` INTEGER(11),
    `product_filter_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `field_value` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `selected_option_common_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_field_id` ON `custom_fields_product` (`field_id`);

CREATE INDEX `idx_product_id` ON `custom_fields_product` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "digital_files"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `digital_files` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `user_id` INTEGER(11),
    `file_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `digital_files` (`product_id`);

CREATE INDEX `idx_user_id` ON `digital_files` (`user_id`);

# ---------------------------------------------------------------------- #
# Add table "digital_sales"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `digital_sales` (
    `id` INTEGER(11) NOT NULL,
    `order_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `product_title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `seller_id` INTEGER(11) NOT NULL,
    `buyer_id` INTEGER(11) NOT NULL,
    `license_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `purchase_code` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USD',
    `price` BIGINT(20) NOT NULL,
    `purchase_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_order_id` ON `digital_sales` (`order_id`);

CREATE INDEX `idx_product_id` ON `digital_sales` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "images"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `images` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `image_default` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image_big` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image_small` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_main` TINYINT(1) DEFAULT 0,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `images` (`product_id`);

CREATE INDEX `idx_is_main` ON `images` (`is_main`);

# ---------------------------------------------------------------------- #
# Add table "media"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `media` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `media_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `file_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `media` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "order_products"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `order_products` (
    `id` BIGINT(20) NOT NULL,
    `order_id` BIGINT(20) NOT NULL,
    `seller_id` INTEGER(11),
    `buyer_id` INTEGER(11),
    `buyer_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_id` INTEGER(11),
    `product_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'physical',
    `product_title` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_slug` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_unit_price` BIGINT(20),
    `product_quantity` TINYINT(4),
    `product_currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `product_vat_rate` SMALLINT(3) DEFAULT 0,
    `product_vat` BIGINT(20) DEFAULT 0,
    `product_shipping_cost` BIGINT(20),
    `product_total_price` BIGINT(20),
    `variation_option_ids` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `commission_rate` TINYINT(4),
    `order_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_approved` TINYINT(1) DEFAULT 0,
    `shipping_tracking_number` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `shipping_tracking_url` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `updated_at` TIMESTAMP,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_order_id` ON `order_products` (`order_id`);

CREATE INDEX `idx_seller_id` ON `order_products` (`seller_id`);

CREATE INDEX `idx_buyer_id` ON `order_products` (`buyer_id`);

CREATE INDEX `idx_product_id` ON `order_products` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "payments"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `payments` (
    `id` INTEGER(11) NOT NULL,
    `payment_method` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11) NOT NULL,
    `currency` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_amount` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payer_email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `payment_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `purchased_plan` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_payment_id` ON `payments` (`payment_id`);

CREATE INDEX `idx_user_id` ON `payments` (`user_id`);

CREATE INDEX `idx_product_id` ON `payments` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "product_license_keys"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `product_license_keys` (
    `id` BIGINT(20) NOT NULL,
    `product_id` INTEGER(11),
    `license_key` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_used` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `product_license_keys` (`product_id`);

# ---------------------------------------------------------------------- #
# Add table "variation_options"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `variation_options` (
    `id` INTEGER(11) NOT NULL,
    `variation_id` INTEGER(11),
    `parent_id` INTEGER(11) DEFAULT 0,
    `option_names` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci,
    `stock` INTEGER(11),
    `color` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `price` BIGINT(20),
    `discount_rate` SMALLINT(3),
    `is_default` TINYINT(1) DEFAULT 0,
    `use_default_price` TINYINT(1) NOT NULL DEFAULT 0,
    `no_discount` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_variation_id` ON `variation_options` (`variation_id`);

CREATE INDEX `idx_parent_id` ON `variation_options` (`parent_id`);

# ---------------------------------------------------------------------- #
# Add table "images_variation"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `images_variation` (
    `id` INTEGER(11) NOT NULL,
    `product_id` INTEGER(11),
    `variation_option_id` INTEGER(11) DEFAULT 0,
    `image_default` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image_big` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `image_small` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
    `is_main` TINYINT(1) DEFAULT 0,
    `storage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `idx_product_id` ON `images_variation` (`product_id`);

CREATE INDEX `idx_variation_option_id` ON `images_variation` (`variation_option_id`);

CREATE INDEX `idx_is_main` ON `images_variation` (`is_main`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `bank_transfers` ADD CONSTRAINT `users_bank_transfers` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `blog_comments` ADD CONSTRAINT `users_blog_comments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `blog_posts` ADD CONSTRAINT `users_blog_posts` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `products_comments` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `comments` ADD CONSTRAINT `users_comments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `conversation_messages` ADD CONSTRAINT `conversations_conversation_messages` 
    FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`);

ALTER TABLE `custom_fields_product` ADD CONSTRAINT `products_custom_fields_product` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `digital_files` ADD CONSTRAINT `products_digital_files` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `digital_files` ADD CONSTRAINT `users_digital_files` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `digital_sales` ADD CONSTRAINT `products_digital_sales` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `earnings` ADD CONSTRAINT `users_earnings` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `images` ADD CONSTRAINT `products_images` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `images_file_manager` ADD CONSTRAINT `users_images_file_manager` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `images_variation` ADD CONSTRAINT `products_images_variation` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `images_variation` ADD CONSTRAINT `variation_options_images_variation` 
    FOREIGN KEY (`variation_option_id`) REFERENCES `variation_options` (`id`);

ALTER TABLE `images_variation` ADD CONSTRAINT `variations_images_variation` 
    FOREIGN KEY (`variation_option_id`) REFERENCES `variations` (`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `orders_invoices` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `media` ADD CONSTRAINT `products_media` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `order_products` ADD CONSTRAINT `orders_order_products` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `order_products` ADD CONSTRAINT `products_order_products` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `order_shipping` ADD CONSTRAINT `orders_order_shipping` 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `payments` ADD CONSTRAINT `products_payments` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `payments` ADD CONSTRAINT `users_payments` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `payouts` ADD CONSTRAINT `users_payouts` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `product_license_keys` ADD CONSTRAINT `products_product_license_keys` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `products` ADD CONSTRAINT `users_products` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `promoted_transactions` ADD CONSTRAINT `products_promoted_transactions` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `promoted_transactions` ADD CONSTRAINT `users_promoted_transactions` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `quote_requests` ADD CONSTRAINT `products_quote_requests` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `reviews` ADD CONSTRAINT `products_reviews` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `reviews` ADD CONSTRAINT `users_reviews` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `transactions` ADD CONSTRAINT `users_transactions` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_payout_accounts` ADD CONSTRAINT `users_user_payout_accounts` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `variation_options` ADD CONSTRAINT `variations_variation_options` 
    FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`);

ALTER TABLE `variations` ADD CONSTRAINT `products_variations` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `variations` ADD CONSTRAINT `users_variations` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `wishlist` ADD CONSTRAINT `products_wishlist` 
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `wishlist` ADD CONSTRAINT `users_wishlist` 
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
