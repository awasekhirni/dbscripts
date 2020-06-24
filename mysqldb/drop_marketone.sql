# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          marketone.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:54                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `bank_transfers` DROP FOREIGN KEY `users_bank_transfers`;

ALTER TABLE `blog_comments` DROP FOREIGN KEY `users_blog_comments`;

ALTER TABLE `blog_posts` DROP FOREIGN KEY `users_blog_posts`;

ALTER TABLE `comments` DROP FOREIGN KEY `products_comments`;

ALTER TABLE `comments` DROP FOREIGN KEY `users_comments`;

ALTER TABLE `conversation_messages` DROP FOREIGN KEY `conversations_conversation_messages`;

ALTER TABLE `custom_fields_product` DROP FOREIGN KEY `products_custom_fields_product`;

ALTER TABLE `digital_files` DROP FOREIGN KEY `products_digital_files`;

ALTER TABLE `digital_files` DROP FOREIGN KEY `users_digital_files`;

ALTER TABLE `digital_sales` DROP FOREIGN KEY `products_digital_sales`;

ALTER TABLE `earnings` DROP FOREIGN KEY `users_earnings`;

ALTER TABLE `images` DROP FOREIGN KEY `products_images`;

ALTER TABLE `images_file_manager` DROP FOREIGN KEY `users_images_file_manager`;

ALTER TABLE `images_variation` DROP FOREIGN KEY `products_images_variation`;

ALTER TABLE `images_variation` DROP FOREIGN KEY `variation_options_images_variation`;

ALTER TABLE `images_variation` DROP FOREIGN KEY `variations_images_variation`;

ALTER TABLE `invoices` DROP FOREIGN KEY `orders_invoices`;

ALTER TABLE `media` DROP FOREIGN KEY `products_media`;

ALTER TABLE `order_products` DROP FOREIGN KEY `orders_order_products`;

ALTER TABLE `order_products` DROP FOREIGN KEY `products_order_products`;

ALTER TABLE `order_shipping` DROP FOREIGN KEY `orders_order_shipping`;

ALTER TABLE `payments` DROP FOREIGN KEY `products_payments`;

ALTER TABLE `payments` DROP FOREIGN KEY `users_payments`;

ALTER TABLE `payouts` DROP FOREIGN KEY `users_payouts`;

ALTER TABLE `product_license_keys` DROP FOREIGN KEY `products_product_license_keys`;

ALTER TABLE `products` DROP FOREIGN KEY `users_products`;

ALTER TABLE `promoted_transactions` DROP FOREIGN KEY `products_promoted_transactions`;

ALTER TABLE `promoted_transactions` DROP FOREIGN KEY `users_promoted_transactions`;

ALTER TABLE `quote_requests` DROP FOREIGN KEY `products_quote_requests`;

ALTER TABLE `reviews` DROP FOREIGN KEY `products_reviews`;

ALTER TABLE `reviews` DROP FOREIGN KEY `users_reviews`;

ALTER TABLE `transactions` DROP FOREIGN KEY `users_transactions`;

ALTER TABLE `user_payout_accounts` DROP FOREIGN KEY `users_user_payout_accounts`;

ALTER TABLE `variation_options` DROP FOREIGN KEY `variations_variation_options`;

ALTER TABLE `variations` DROP FOREIGN KEY `products_variations`;

ALTER TABLE `variations` DROP FOREIGN KEY `users_variations`;

ALTER TABLE `wishlist` DROP FOREIGN KEY `products_wishlist`;

ALTER TABLE `wishlist` DROP FOREIGN KEY `users_wishlist`;

# ---------------------------------------------------------------------- #
# Drop table "images_variation"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `images_variation` ALTER COLUMN `variation_option_id` DROP DEFAULT;

ALTER TABLE `images_variation` ALTER COLUMN `is_main` DROP DEFAULT;

ALTER TABLE `images_variation` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `images_variation` DROP PRIMARY KEY;

DROP TABLE `images_variation`;

# ---------------------------------------------------------------------- #
# Drop table "variation_options"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `variation_options` ALTER COLUMN `parent_id` DROP DEFAULT;

ALTER TABLE `variation_options` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `variation_options` ALTER COLUMN `use_default_price` DROP DEFAULT;

ALTER TABLE `variation_options` ALTER COLUMN `no_discount` DROP DEFAULT;

ALTER TABLE `variation_options` DROP PRIMARY KEY;

DROP TABLE `variation_options`;

# ---------------------------------------------------------------------- #
# Drop table "product_license_keys"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `product_license_keys` ALTER COLUMN `is_used` DROP DEFAULT;

ALTER TABLE `product_license_keys` DROP PRIMARY KEY;

DROP TABLE `product_license_keys`;

# ---------------------------------------------------------------------- #
# Drop table "payments"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `payments` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `payments` DROP PRIMARY KEY;

DROP TABLE `payments`;

# ---------------------------------------------------------------------- #
# Drop table "order_products"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `order_products` ALTER COLUMN `product_type` DROP DEFAULT;

ALTER TABLE `order_products` ALTER COLUMN `product_vat_rate` DROP DEFAULT;

ALTER TABLE `order_products` ALTER COLUMN `product_vat` DROP DEFAULT;

ALTER TABLE `order_products` ALTER COLUMN `is_approved` DROP DEFAULT;

ALTER TABLE `order_products` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `order_products` DROP PRIMARY KEY;

DROP TABLE `order_products`;

# ---------------------------------------------------------------------- #
# Drop table "media"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `media` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `media` DROP PRIMARY KEY;

DROP TABLE `media`;

# ---------------------------------------------------------------------- #
# Drop table "images"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `images` ALTER COLUMN `is_main` DROP DEFAULT;

ALTER TABLE `images` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `images` DROP PRIMARY KEY;

DROP TABLE `images`;

# ---------------------------------------------------------------------- #
# Drop table "digital_sales"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `digital_sales` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `digital_sales` ALTER COLUMN `purchase_date` DROP DEFAULT;

ALTER TABLE `digital_sales` DROP PRIMARY KEY;

DROP TABLE `digital_sales`;

# ---------------------------------------------------------------------- #
# Drop table "digital_files"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `digital_files` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `digital_files` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `digital_files` DROP PRIMARY KEY;

DROP TABLE `digital_files`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields_product"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `custom_fields_product` DROP PRIMARY KEY;

DROP TABLE `custom_fields_product`;

# ---------------------------------------------------------------------- #
# Drop table "comments"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `comments` ALTER COLUMN `parent_id` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `comments` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `comments` DROP PRIMARY KEY;

DROP TABLE `comments`;

# ---------------------------------------------------------------------- #
# Drop table "wishlist"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `wishlist` DROP PRIMARY KEY;

DROP TABLE `wishlist`;

# ---------------------------------------------------------------------- #
# Drop table "variations"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `variations` ALTER COLUMN `parent_id` DROP DEFAULT;

ALTER TABLE `variations` ALTER COLUMN `insert_type` DROP DEFAULT;

ALTER TABLE `variations` ALTER COLUMN `option_display_type` DROP DEFAULT;

ALTER TABLE `variations` ALTER COLUMN `show_images_on_slider` DROP DEFAULT;

ALTER TABLE `variations` ALTER COLUMN `use_different_price` DROP DEFAULT;

ALTER TABLE `variations` ALTER COLUMN `is_visible` DROP DEFAULT;

ALTER TABLE `variations` DROP PRIMARY KEY;

DROP TABLE `variations`;

# ---------------------------------------------------------------------- #
# Drop table "user_payout_accounts"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `user_payout_accounts` DROP PRIMARY KEY;

DROP TABLE `user_payout_accounts`;

# ---------------------------------------------------------------------- #
# Drop table "transactions"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `transactions` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `transactions` DROP PRIMARY KEY;

DROP TABLE `transactions`;

# ---------------------------------------------------------------------- #
# Drop table "reviews"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `reviews` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `reviews` DROP PRIMARY KEY;

DROP TABLE `reviews`;

# ---------------------------------------------------------------------- #
# Drop table "quote_requests"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `quote_requests` ALTER COLUMN `product_quantity` DROP DEFAULT;

ALTER TABLE `quote_requests` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `quote_requests` ALTER COLUMN `is_buyer_deleted` DROP DEFAULT;

ALTER TABLE `quote_requests` ALTER COLUMN `is_seller_deleted` DROP DEFAULT;

ALTER TABLE `quote_requests` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `quote_requests` DROP PRIMARY KEY;

DROP TABLE `quote_requests`;

# ---------------------------------------------------------------------- #
# Drop table "promoted_transactions"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `promoted_transactions` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `promoted_transactions` DROP PRIMARY KEY;

DROP TABLE `promoted_transactions`;

# ---------------------------------------------------------------------- #
# Drop table "products"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `products` ALTER COLUMN `product_type` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `listing_type` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `discount_rate` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `vat_rate` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_promoted` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `visibility` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `rating` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `hit` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `stock` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `shipping_time` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `shipping_cost` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `shipping_cost_additional` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_deleted` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_draft` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `is_free_product` DROP DEFAULT;

ALTER TABLE `products` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `products` DROP PRIMARY KEY;

DROP TABLE `products`;

# ---------------------------------------------------------------------- #
# Drop table "payouts"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `payouts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `payouts` DROP PRIMARY KEY;

DROP TABLE `payouts`;

# ---------------------------------------------------------------------- #
# Drop table "order_shipping"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `order_shipping` DROP PRIMARY KEY;

DROP TABLE `order_shipping`;

# ---------------------------------------------------------------------- #
# Drop table "invoices"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `invoices` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `invoices` DROP PRIMARY KEY;

DROP TABLE `invoices`;

# ---------------------------------------------------------------------- #
# Drop table "images_file_manager"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `images_file_manager` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `images_file_manager` DROP PRIMARY KEY;

DROP TABLE `images_file_manager`;

# ---------------------------------------------------------------------- #
# Drop table "earnings"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `earnings` ALTER COLUMN `currency` DROP DEFAULT;

ALTER TABLE `earnings` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `earnings` DROP PRIMARY KEY;

DROP TABLE `earnings`;

# ---------------------------------------------------------------------- #
# Drop table "conversation_messages"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `conversation_messages` ALTER COLUMN `is_read` DROP DEFAULT;

ALTER TABLE `conversation_messages` ALTER COLUMN `deleted_user_id` DROP DEFAULT;

ALTER TABLE `conversation_messages` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `conversation_messages` DROP PRIMARY KEY;

DROP TABLE `conversation_messages`;

# ---------------------------------------------------------------------- #
# Drop table "blog_posts"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_posts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `blog_posts` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `blog_posts` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `blog_posts` ALTER COLUMN `user_id` DROP DEFAULT;

ALTER TABLE `blog_posts` DROP PRIMARY KEY;

DROP TABLE `blog_posts`;

# ---------------------------------------------------------------------- #
# Drop table "blog_comments"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `blog_comments` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `blog_comments` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `blog_comments` DROP PRIMARY KEY;

DROP TABLE `blog_comments`;

# ---------------------------------------------------------------------- #
# Drop table "bank_transfers"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_transfers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bank_transfers` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `bank_transfers` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `bank_transfers` DROP PRIMARY KEY;

DROP TABLE `bank_transfers`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `email_status` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `role` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `balance` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `number_of_sales` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `user_type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `banned` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `show_email` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `show_phone` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `show_location` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `show_rss_feeds` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `send_email_new_message` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `is_active_shop_request` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `send_email_when_item_sold` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "subscribers"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `subscribers` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `subscribers` DROP PRIMARY KEY;

DROP TABLE `subscribers`;

# ---------------------------------------------------------------------- #
# Drop table "storage_settings"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `storage_settings` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `storage_settings` ALTER COLUMN `aws_region` DROP DEFAULT;

ALTER TABLE `storage_settings` ALTER COLUMN `aws_base_url` DROP DEFAULT;

ALTER TABLE `storage_settings` DROP PRIMARY KEY;

DROP TABLE `storage_settings`;

# ---------------------------------------------------------------------- #
# Drop table "slider"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `slider` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `item_order` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `animation_title` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `animation_description` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `animation_button` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `text_color` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `button_color` DROP DEFAULT;

ALTER TABLE `slider` ALTER COLUMN `button_text_color` DROP DEFAULT;

ALTER TABLE `slider` DROP PRIMARY KEY;

DROP TABLE `slider`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `site_font` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `homepage_title` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `cookies_warning` DROP DEFAULT;

ALTER TABLE `settings` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `settings` DROP PRIMARY KEY;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "routes"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `routes` ALTER COLUMN `admin` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `blog` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `tag` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `quote_requests` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `sent_quote_requests` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `cart` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `shipping` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `payment_method` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `payment` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `promote_payment_completed` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `orders` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `order_details` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `order_completed` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `completed_orders` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `messages` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `conversation` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `profile` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `wishlist` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `settings` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `update_profile` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `followers` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `following` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `sales` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `sale` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `sell_now` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `start_selling` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `products` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `product_details` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `edit_product` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `promote_product` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `pending_products` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `hidden_products` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `latest_products` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `featured_products` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `drafts` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `downloads` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `seller` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `earnings` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `payouts` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `set_payout_account` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `pricing` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `reviews` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `category` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `completed_sales` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `shop_settings` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `personal_information` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `shipping_address` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `social_media` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `search` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `register` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `members` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `forgot_password` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `change_password` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `reset_password` DROP DEFAULT;

ALTER TABLE `routes` ALTER COLUMN `rss_feeds` DROP DEFAULT;

ALTER TABLE `routes` DROP PRIMARY KEY;

DROP TABLE `routes`;

# ---------------------------------------------------------------------- #
# Drop table "product_options"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `product_options` DROP PRIMARY KEY;

DROP TABLE `product_options`;

# ---------------------------------------------------------------------- #
# Drop table "payment_settings"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `payment_settings` ALTER COLUMN `default_product_currency` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `allow_all_currencies_for_classied` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `promoted_products_payment_currency` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `currency_format` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `currency_symbol_format` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `space_between_money_currency` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `paypal_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `paypal_mode` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `stripe_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `paystack_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `razorpay_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `pagseguro_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `pagseguro_mode` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `iyzico_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `iyzico_mode` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `iyzico_type` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `bank_transfer_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `cash_on_delivery_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `price_per_day` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `price_per_month` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `free_product_promotion` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `payout_paypal_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `payout_iban_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `payout_swift_enabled` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `min_payout_paypal` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `min_payout_iban` DROP DEFAULT;

ALTER TABLE `payment_settings` ALTER COLUMN `min_payout_swift` DROP DEFAULT;

ALTER TABLE `payment_settings` DROP PRIMARY KEY;

DROP TABLE `payment_settings`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `page_order` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `visibility` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `title_active` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `location` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `is_custom` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `price_vat` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "location_states"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `location_states` DROP PRIMARY KEY;

DROP TABLE `location_states`;

# ---------------------------------------------------------------------- #
# Drop table "location_countries"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `location_countries` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `location_countries` DROP PRIMARY KEY;

DROP TABLE `location_countries`;

# ---------------------------------------------------------------------- #
# Drop table "location_cities"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `location_cities` DROP PRIMARY KEY;

DROP TABLE `location_cities`;

# ---------------------------------------------------------------------- #
# Drop table "languages"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `languages` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `languages` ALTER COLUMN `language_order` DROP DEFAULT;

ALTER TABLE `languages` ALTER COLUMN `ckeditor_lang` DROP DEFAULT;

ALTER TABLE `languages` DROP PRIMARY KEY;

DROP TABLE `languages`;

# ---------------------------------------------------------------------- #
# Drop table "language_translations"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `language_translations` DROP PRIMARY KEY;

DROP TABLE `language_translations`;

# ---------------------------------------------------------------------- #
# Drop table "general_settings"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `general_settings` ALTER COLUMN `physical_products_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `digital_products_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `marketplace_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `classified_ads_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `bidding_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `multi_vendor_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `vat_status` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `site_lang` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `timezone` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `selected_navigation` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `menu_limit` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `mail_library` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `mail_protocol` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `email_verification` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `promoted_products` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `multilingual_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `product_comments` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `comment_approval_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `reviews` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `blog_comments` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `slider_status` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `slider_type` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `slider_effect` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_categories` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_promoted_products` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_promoted_products_count` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_latest_products` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_latest_products_count` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `index_blog_slider` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `product_link_structure` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `site_color` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `watermark_vrt_alignment` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `watermark_hor_alignment` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `watermark_product_images` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `watermark_blog_images` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `watermark_thumbnail_images` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `facebook_comment_status` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `cache_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `refresh_cache_database_changes` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `cache_refresh_time` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `rss_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `approve_before_publishing` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `commission_rate` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_new_product` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_buyer_purchase` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_contact_messages` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_order_shipped` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_shop_opening_request` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `send_email_bidding_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `vendor_verification_system` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `hide_vendor_contact_information` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `guest_checkout` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `maintenance_mode_status` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `max_file_size_image` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `max_file_size_video` DROP DEFAULT;

ALTER TABLE `general_settings` ALTER COLUMN `max_file_size_audio` DROP DEFAULT;

ALTER TABLE `general_settings` DROP PRIMARY KEY;

DROP TABLE `general_settings`;

# ---------------------------------------------------------------------- #
# Drop table "form_settings"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `form_settings` ALTER COLUMN `product_conditions` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `product_conditions_required` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `price_required` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `quantity_required` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `variations` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `shipping` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `shipping_required` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `product_location` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `product_location_required` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `physical_demo_url` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `physical_video_preview` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `physical_audio_preview` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `digital_demo_url` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `digital_video_preview` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `digital_audio_preview` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `digital_allowed_file_extensions` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `external_link` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `sitemap_frequency` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `sitemap_last_modification` DROP DEFAULT;

ALTER TABLE `form_settings` ALTER COLUMN `sitemap_priority` DROP DEFAULT;

ALTER TABLE `form_settings` DROP PRIMARY KEY;

DROP TABLE `form_settings`;

# ---------------------------------------------------------------------- #
# Drop table "fonts"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `fonts` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `fonts` DROP PRIMARY KEY;

DROP TABLE `fonts`;

# ---------------------------------------------------------------------- #
# Drop table "followers"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `followers` DROP PRIMARY KEY;

DROP TABLE `followers`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields_options"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `custom_fields_options` DROP PRIMARY KEY;

DROP TABLE `custom_fields_options`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields_lang"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `custom_fields_lang` DROP PRIMARY KEY;

DROP TABLE `custom_fields_lang`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields_category"                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `custom_fields_category` DROP PRIMARY KEY;

DROP TABLE `custom_fields_category`;

# ---------------------------------------------------------------------- #
# Drop table "custom_fields"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `custom_fields` ALTER COLUMN `row_width` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `is_required` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `field_order` DROP DEFAULT;

ALTER TABLE `custom_fields` ALTER COLUMN `is_product_filter` DROP DEFAULT;

ALTER TABLE `custom_fields` DROP PRIMARY KEY;

DROP TABLE `custom_fields`;

# ---------------------------------------------------------------------- #
# Drop table "currencies"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `currencies` DROP PRIMARY KEY;

DROP TABLE `currencies`;

# ---------------------------------------------------------------------- #
# Drop table "conversations"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `conversations` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `conversations` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `conversations` DROP PRIMARY KEY;

DROP TABLE `conversations`;

# ---------------------------------------------------------------------- #
# Drop table "contacts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `contacts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `contacts` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `contacts` DROP PRIMARY KEY;

DROP TABLE `contacts`;

# ---------------------------------------------------------------------- #
# Drop table "ci_sessions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ci_sessions` ALTER COLUMN `timestamp` DROP DEFAULT;

DROP TABLE `ci_sessions`;

# ---------------------------------------------------------------------- #
# Drop table "categories_lang"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories_lang` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `categories_lang` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `categories_lang` DROP PRIMARY KEY;

DROP TABLE `categories_lang`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `parent_id` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `category_order` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `homepage_order` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `visibility` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `show_on_homepage` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `storage` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `show_image_on_navigation` DROP DEFAULT;

ALTER TABLE `categories` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "blog_tags"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_tags` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `blog_tags` DROP PRIMARY KEY;

DROP TABLE `blog_tags`;

# ---------------------------------------------------------------------- #
# Drop table "blog_categories"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `blog_categories` ALTER COLUMN `lang_id` DROP DEFAULT;

ALTER TABLE `blog_categories` DROP PRIMARY KEY;

DROP TABLE `blog_categories`;

# ---------------------------------------------------------------------- #
# Drop table "ad_spaces"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ad_spaces` MODIFY `id` TINYINT(4) NOT NULL;

# Drop constraints #

ALTER TABLE `ad_spaces` DROP PRIMARY KEY;

DROP TABLE `ad_spaces`;
