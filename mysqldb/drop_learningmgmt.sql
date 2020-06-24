# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          learningmgmt.dez                                #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 10:46                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `admin_menu_items` DROP FOREIGN KEY `admin_menu_items_menu_foreign`;

ALTER TABLE `blogs` DROP FOREIGN KEY `blogs_category_id_foreign`;

ALTER TABLE `bundle_courses` DROP FOREIGN KEY `bundle_courses_bundle_id_foreign`;

ALTER TABLE `bundle_courses` DROP FOREIGN KEY `bundle_courses_course_id_foreign`;

ALTER TABLE `bundle_student` DROP FOREIGN KEY `bundle_student_bundle_id_foreign`;

ALTER TABLE `bundle_student` DROP FOREIGN KEY `bundle_student_user_id_foreign`;

ALTER TABLE `bundles` DROP FOREIGN KEY `bundles_user_id_foreign`;

ALTER TABLE `certificates` DROP FOREIGN KEY `certificates_course_id_foreign`;

ALTER TABLE `certificates` DROP FOREIGN KEY `certificates_user_id_foreign`;

ALTER TABLE `chapter_students` DROP FOREIGN KEY `chapter_students_course_id_foreign`;

ALTER TABLE `chapter_students` DROP FOREIGN KEY `chapter_students_user_id_foreign`;

ALTER TABLE `chatter_discussion` DROP FOREIGN KEY `chatter_discussion_chatter_category_id_foreign`;

ALTER TABLE `chatter_discussion` DROP FOREIGN KEY `chatter_discussion_user_id_foreign`;

ALTER TABLE `chatter_post` DROP FOREIGN KEY `chatter_post_chatter_discussion_id_foreign`;

ALTER TABLE `chatter_post` DROP FOREIGN KEY `chatter_post_user_id_foreign`;

ALTER TABLE `chatter_user_discussion` DROP FOREIGN KEY `chatter_user_discussion_discussion_id_foreign`;

ALTER TABLE `chatter_user_discussion` DROP FOREIGN KEY `chatter_user_discussion_user_id_foreign`;

ALTER TABLE `course_student` DROP FOREIGN KEY `course_student_course_id_foreign`;

ALTER TABLE `course_student` DROP FOREIGN KEY `course_student_user_id_foreign`;

ALTER TABLE `course_user` DROP FOREIGN KEY `fk_p_54417_54418_course_u_596eece522bee`;

ALTER TABLE `course_user` DROP FOREIGN KEY `fk_p_54418_54417_user_cou_596eece522b73`;

ALTER TABLE `courses` DROP FOREIGN KEY `courses_category_id_foreign`;

ALTER TABLE `earnings` DROP FOREIGN KEY `earnings_course_id_foreign`;

ALTER TABLE `earnings` DROP FOREIGN KEY `earnings_user_id_foreign`;

ALTER TABLE `faqs` DROP FOREIGN KEY `faqs_category_id_foreign`;

ALTER TABLE `lessons` DROP FOREIGN KEY `54419_596eedbb6686e`;

ALTER TABLE `message_thread_participants` DROP FOREIGN KEY `message_thread_participants_thread_id_foreign`;

ALTER TABLE `message_thread_participants` DROP FOREIGN KEY `message_thread_participants_user_id_foreign`;

ALTER TABLE `messages` DROP FOREIGN KEY `messages_sender_id_foreign`;

ALTER TABLE `messages` DROP FOREIGN KEY `messages_thread_id_foreign`;

ALTER TABLE `model_has_permissions` DROP FOREIGN KEY `model_has_permissions_permission_id_foreign`;

ALTER TABLE `model_has_roles` DROP FOREIGN KEY `model_has_roles_role_id_foreign`;

ALTER TABLE `pages` DROP FOREIGN KEY `pages_user_id_foreign`;

ALTER TABLE `password_histories` DROP FOREIGN KEY `password_histories_user_id_foreign`;

ALTER TABLE `question_test` DROP FOREIGN KEY `fk_p_54420_54422_test_que_596eeef70992f`;

ALTER TABLE `question_test` DROP FOREIGN KEY `fk_p_54422_54420_question_596eeef7099af`;

ALTER TABLE `questions` DROP FOREIGN KEY `questions_user_id_foreign`;

ALTER TABLE `questions_options` DROP FOREIGN KEY `54421_596eee8745a1e`;

ALTER TABLE `reviews` DROP FOREIGN KEY `reviews_user_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_permission_id_foreign`;

ALTER TABLE `role_has_permissions` DROP FOREIGN KEY `role_has_permissions_role_id_foreign`;

ALTER TABLE `social_accounts` DROP FOREIGN KEY `social_accounts_user_id_foreign`;

ALTER TABLE `teacher_profiles` DROP FOREIGN KEY `teacher_profiles_user_id_foreign`;

ALTER TABLE `tests` DROP FOREIGN KEY `54422_596eeef514d00`;

ALTER TABLE `tests` DROP FOREIGN KEY `54422_596eeef53411a`;

ALTER TABLE `tests_results` DROP FOREIGN KEY `tests_results_test_id_foreign`;

ALTER TABLE `tests_results` DROP FOREIGN KEY `tests_results_user_id_foreign`;

ALTER TABLE `tests_results_answers` DROP FOREIGN KEY `tests_results_answers_option_id_foreign`;

ALTER TABLE `tests_results_answers` DROP FOREIGN KEY `tests_results_answers_question_id_foreign`;

ALTER TABLE `tests_results_answers` DROP FOREIGN KEY `tests_results_answers_tests_result_id_foreign`;

ALTER TABLE `video_progresses` DROP FOREIGN KEY `video_progresses_media_id_foreign`;

ALTER TABLE `video_progresses` DROP FOREIGN KEY `video_progresses_user_id_foreign`;

ALTER TABLE `withdraws` DROP FOREIGN KEY `withdraws_user_id_foreign`;

# ---------------------------------------------------------------------- #
# Drop table "question_test"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `question_test`;

# ---------------------------------------------------------------------- #
# Drop table "bundle_student"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `bundle_student` ALTER COLUMN `rating` DROP DEFAULT;

DROP TABLE `bundle_student`;

# ---------------------------------------------------------------------- #
# Drop table "bundle_courses"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `bundle_courses`;

# ---------------------------------------------------------------------- #
# Drop table "tests_results_answers"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tests_results_answers` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tests_results_answers` ALTER COLUMN `correct` DROP DEFAULT;

ALTER TABLE `tests_results_answers` DROP PRIMARY KEY;

DROP TABLE `tests_results_answers`;

# ---------------------------------------------------------------------- #
# Drop table "tests_results"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tests_results` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tests_results` DROP PRIMARY KEY;

DROP TABLE `tests_results`;

# ---------------------------------------------------------------------- #
# Drop table "teacher_profiles"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `teacher_profiles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `teacher_profiles` DROP PRIMARY KEY;

DROP TABLE `teacher_profiles`;

# ---------------------------------------------------------------------- #
# Drop table "social_accounts"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `social_accounts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `social_accounts` DROP PRIMARY KEY;

DROP TABLE `social_accounts`;

# ---------------------------------------------------------------------- #
# Drop table "role_has_permissions"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `role_has_permissions` DROP PRIMARY KEY;

DROP TABLE `role_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "reviews"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reviews` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reviews` DROP PRIMARY KEY;

DROP TABLE `reviews`;

# ---------------------------------------------------------------------- #
# Drop table "questions_options"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `questions_options` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `questions_options` ALTER COLUMN `correct` DROP DEFAULT;

ALTER TABLE `questions_options` DROP PRIMARY KEY;

DROP TABLE `questions_options`;

# ---------------------------------------------------------------------- #
# Drop table "questions"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `questions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `questions` DROP PRIMARY KEY;

DROP TABLE `questions`;

# ---------------------------------------------------------------------- #
# Drop table "password_histories"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `password_histories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `password_histories` DROP PRIMARY KEY;

DROP TABLE `password_histories`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `sidebar` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `pages` DROP PRIMARY KEY;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_roles"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `model_has_roles` DROP PRIMARY KEY;

DROP TABLE `model_has_roles`;

# ---------------------------------------------------------------------- #
# Drop table "model_has_permissions"                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `model_has_permissions` DROP PRIMARY KEY;

DROP TABLE `model_has_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "messages"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `messages` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `messages` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `messages` DROP PRIMARY KEY;

DROP TABLE `messages`;

# ---------------------------------------------------------------------- #
# Drop table "message_thread_participants"                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message_thread_participants` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `message_thread_participants` DROP PRIMARY KEY;

DROP TABLE `message_thread_participants`;

# ---------------------------------------------------------------------- #
# Drop table "earnings"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `earnings` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `earnings` DROP PRIMARY KEY;

DROP TABLE `earnings`;

# ---------------------------------------------------------------------- #
# Drop table "course_user"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `course_user`;

# ---------------------------------------------------------------------- #
# Drop table "course_student"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `course_student` ALTER COLUMN `rating` DROP DEFAULT;

DROP TABLE `course_student`;

# ---------------------------------------------------------------------- #
# Drop table "chatter_user_discussion"                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `chatter_user_discussion` DROP PRIMARY KEY;

DROP TABLE `chatter_user_discussion`;

# ---------------------------------------------------------------------- #
# Drop table "chatter_post"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `chatter_post` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `chatter_post` ALTER COLUMN `markdown` DROP DEFAULT;

ALTER TABLE `chatter_post` ALTER COLUMN `locked` DROP DEFAULT;

ALTER TABLE `chatter_post` DROP PRIMARY KEY;

DROP TABLE `chatter_post`;

# ---------------------------------------------------------------------- #
# Drop table "chatter_discussion"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `chatter_discussion` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `chatter_discussion` ALTER COLUMN `chatter_category_id` DROP DEFAULT;

ALTER TABLE `chatter_discussion` ALTER COLUMN `sticky` DROP DEFAULT;

ALTER TABLE `chatter_discussion` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `chatter_discussion` ALTER COLUMN `answered` DROP DEFAULT;

ALTER TABLE `chatter_discussion` ALTER COLUMN `color` DROP DEFAULT;

ALTER TABLE `chatter_discussion` ALTER COLUMN `last_reply_at` DROP DEFAULT;

ALTER TABLE `chatter_discussion` DROP PRIMARY KEY;

DROP TABLE `chatter_discussion`;

# ---------------------------------------------------------------------- #
# Drop table "chapter_students"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `chapter_students` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `chapter_students` DROP PRIMARY KEY;

DROP TABLE `chapter_students`;

# ---------------------------------------------------------------------- #
# Drop table "certificates"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `certificates` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `certificates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `certificates` DROP PRIMARY KEY;

DROP TABLE `certificates`;

# ---------------------------------------------------------------------- #
# Drop table "bundles"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bundles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `bundles` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `bundles` ALTER COLUMN `trending` DROP DEFAULT;

ALTER TABLE `bundles` ALTER COLUMN `popular` DROP DEFAULT;

ALTER TABLE `bundles` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `bundles` ALTER COLUMN `free` DROP DEFAULT;

ALTER TABLE `bundles` DROP PRIMARY KEY;

DROP TABLE `bundles`;

# ---------------------------------------------------------------------- #
# Drop table "blogs"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blogs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `blogs` ALTER COLUMN `views` DROP DEFAULT;

ALTER TABLE `blogs` DROP PRIMARY KEY;

DROP TABLE `blogs`;

# ---------------------------------------------------------------------- #
# Drop table "admin_menu_items"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_menu_items` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admin_menu_items` ALTER COLUMN `parent` DROP DEFAULT;

ALTER TABLE `admin_menu_items` ALTER COLUMN `sort` DROP DEFAULT;

ALTER TABLE `admin_menu_items` ALTER COLUMN `depth` DROP DEFAULT;

ALTER TABLE `admin_menu_items` DROP PRIMARY KEY;

DROP TABLE `admin_menu_items`;

# ---------------------------------------------------------------------- #
# Drop table "withdraws"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `withdraws` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `withdraws` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `withdraws` DROP PRIMARY KEY;

DROP TABLE `withdraws`;

# ---------------------------------------------------------------------- #
# Drop table "video_progresses"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `video_progresses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `video_progresses` ALTER COLUMN `complete` DROP DEFAULT;

ALTER TABLE `video_progresses` DROP PRIMARY KEY;

DROP TABLE `video_progresses`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `avatar_type` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `confirmed` DROP DEFAULT;

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "tests"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tests` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tests` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `tests` DROP PRIMARY KEY;

DROP TABLE `tests`;

# ---------------------------------------------------------------------- #
# Drop table "testimonials"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `testimonials` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `testimonials` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `testimonials` DROP PRIMARY KEY;

DROP TABLE `testimonials`;

# ---------------------------------------------------------------------- #
# Drop table "taxes"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `taxes` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `taxes` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `taxes` DROP PRIMARY KEY;

DROP TABLE `taxes`;

# ---------------------------------------------------------------------- #
# Drop table "tags"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tags` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tags` DROP PRIMARY KEY;

DROP TABLE `tags`;

# ---------------------------------------------------------------------- #
# Drop table "taggables"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `taggables`;

# ---------------------------------------------------------------------- #
# Drop table "sponsors"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sponsors` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sponsors` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sponsors` DROP PRIMARY KEY;

DROP TABLE `sponsors`;

# ---------------------------------------------------------------------- #
# Drop table "sliders"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sliders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `sliders` ALTER COLUMN `overlay` DROP DEFAULT;

ALTER TABLE `sliders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `sliders` DROP PRIMARY KEY;

DROP TABLE `sliders`;

# ---------------------------------------------------------------------- #
# Drop table "sessions"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `sessions`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `roles` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `roles` DROP PRIMARY KEY;

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "reasons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `reasons` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `reasons` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `reasons` DROP PRIMARY KEY;

DROP TABLE `reasons`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `permissions` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `permissions` DROP PRIMARY KEY;

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "orders"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `orders` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `orders` ALTER COLUMN `payment_type` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `orders` ALTER COLUMN `coupon_id` DROP DEFAULT;

ALTER TABLE `orders` DROP PRIMARY KEY;

DROP TABLE `orders`;

# ---------------------------------------------------------------------- #
# Drop table "order_items"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `order_items` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `order_items` DROP PRIMARY KEY;

DROP TABLE `order_items`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_refresh_tokens"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `oauth_refresh_tokens` DROP PRIMARY KEY;

DROP TABLE `oauth_refresh_tokens`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_personal_access_clients"                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `oauth_personal_access_clients` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `oauth_personal_access_clients` DROP PRIMARY KEY;

DROP TABLE `oauth_personal_access_clients`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_clients"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `oauth_clients` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `oauth_clients` DROP PRIMARY KEY;

DROP TABLE `oauth_clients`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_auth_codes"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `oauth_auth_codes` DROP PRIMARY KEY;

DROP TABLE `oauth_auth_codes`;

# ---------------------------------------------------------------------- #
# Drop table "oauth_access_tokens"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `oauth_access_tokens` DROP PRIMARY KEY;

DROP TABLE `oauth_access_tokens`;

# ---------------------------------------------------------------------- #
# Drop table "migrations"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `migrations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `migrations` DROP PRIMARY KEY;

DROP TABLE `migrations`;

# ---------------------------------------------------------------------- #
# Drop table "message_threads"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message_threads` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `message_threads` DROP PRIMARY KEY;

DROP TABLE `message_threads`;

# ---------------------------------------------------------------------- #
# Drop table "media"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `media` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `media` DROP PRIMARY KEY;

DROP TABLE `media`;

# ---------------------------------------------------------------------- #
# Drop table "ltm_translations"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ltm_translations` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ltm_translations` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `ltm_translations` DROP PRIMARY KEY;

DROP TABLE `ltm_translations`;

# ---------------------------------------------------------------------- #
# Drop table "locales"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `locales` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `locales` ALTER COLUMN `display_type` DROP DEFAULT;

ALTER TABLE `locales` ALTER COLUMN `is_default` DROP DEFAULT;

ALTER TABLE `locales` DROP PRIMARY KEY;

DROP TABLE `locales`;

# ---------------------------------------------------------------------- #
# Drop table "lessons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `lessons` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `lessons` ALTER COLUMN `free_lesson` DROP DEFAULT;

ALTER TABLE `lessons` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `lessons` DROP PRIMARY KEY;

DROP TABLE `lessons`;

# ---------------------------------------------------------------------- #
# Drop table "jobs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `jobs` DROP PRIMARY KEY;

DROP TABLE `jobs`;

# ---------------------------------------------------------------------- #
# Drop table "invoices"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `invoices` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `invoices` DROP PRIMARY KEY;

DROP TABLE `invoices`;

# ---------------------------------------------------------------------- #
# Drop table "faqs"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `faqs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `faqs` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `faqs` DROP PRIMARY KEY;

DROP TABLE `faqs`;

# ---------------------------------------------------------------------- #
# Drop table "courses"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `courses` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `courses` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `courses` ALTER COLUMN `trending` DROP DEFAULT;

ALTER TABLE `courses` ALTER COLUMN `popular` DROP DEFAULT;

ALTER TABLE `courses` ALTER COLUMN `published` DROP DEFAULT;

ALTER TABLE `courses` ALTER COLUMN `free` DROP DEFAULT;

ALTER TABLE `courses` DROP PRIMARY KEY;

DROP TABLE `courses`;

# ---------------------------------------------------------------------- #
# Drop table "course_timeline"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `course_timeline` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `course_timeline` DROP PRIMARY KEY;

DROP TABLE `course_timeline`;

# ---------------------------------------------------------------------- #
# Drop table "coupons"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `coupons` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `coupons` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `coupons` ALTER COLUMN `min_price` DROP DEFAULT;

ALTER TABLE `coupons` ALTER COLUMN `per_user_limit` DROP DEFAULT;

ALTER TABLE `coupons` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `coupons` DROP PRIMARY KEY;

DROP TABLE `coupons`;

# ---------------------------------------------------------------------- #
# Drop table "contacts"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `contacts` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `contacts` DROP PRIMARY KEY;

DROP TABLE `contacts`;

# ---------------------------------------------------------------------- #
# Drop table "configs"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `configs` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `configs` DROP PRIMARY KEY;

DROP TABLE `configs`;

# ---------------------------------------------------------------------- #
# Drop table "chatter_categories"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `chatter_categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `chatter_categories` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `chatter_categories` DROP PRIMARY KEY;

DROP TABLE `chatter_categories`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `categories` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "cart_storage"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `cart_storage` DROP PRIMARY KEY;

DROP TABLE `cart_storage`;

# ---------------------------------------------------------------------- #
# Drop table "cache"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `cache`;

# ---------------------------------------------------------------------- #
# Drop table "blog_comments"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `blog_comments` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `blog_comments` DROP PRIMARY KEY;

DROP TABLE `blog_comments`;

# ---------------------------------------------------------------------- #
# Drop table "admin_menus"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `admin_menus` MODIFY `id` INTEGER(10) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `admin_menus` DROP PRIMARY KEY;

DROP TABLE `admin_menus`;
