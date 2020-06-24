# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          cryptotracker.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:56                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `data_rows` DROP FOREIGN KEY `data_types_data_rows`;

# ---------------------------------------------------------------------- #
# Drop table "data_rows"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `data_rows` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `browse` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `read` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `edit` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `add` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `delete` DROP DEFAULT;

ALTER TABLE `data_rows` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `data_rows` DROP PRIMARY KEY;

DROP TABLE `data_rows`;

# ---------------------------------------------------------------------- #
# Drop table "wallets"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `wallets` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `wallets` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `wallets` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `wallets` ALTER COLUMN `updated_at` DROP DEFAULT;

DROP TABLE `wallets`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `users` ALTER COLUMN `avatar` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `newsletter` DROP DEFAULT;

ALTER TABLE `users` ALTER COLUMN `status` DROP DEFAULT;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "translations"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `translations`;

# ---------------------------------------------------------------------- #
# Drop table "settings"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `settings` ALTER COLUMN `order` DROP DEFAULT;

DROP TABLE `settings`;

# ---------------------------------------------------------------------- #
# Drop table "roles"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `roles`;

# ---------------------------------------------------------------------- #
# Drop table "posts"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `posts` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `posts` ALTER COLUMN `featured` DROP DEFAULT;

DROP TABLE `posts`;

# ---------------------------------------------------------------------- #
# Drop table "permissions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `permissions`;

# ---------------------------------------------------------------------- #
# Drop table "permission_role"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `permission_role`;

# ---------------------------------------------------------------------- #
# Drop table "permission_groups"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `permission_groups`;

# ---------------------------------------------------------------------- #
# Drop table "password_resets"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `password_resets`;

# ---------------------------------------------------------------------- #
# Drop table "pages"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pages` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `pages` ALTER COLUMN `language` DROP DEFAULT;

DROP TABLE `pages`;

# ---------------------------------------------------------------------- #
# Drop table "news_letters"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `news_letters` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `news_letters` ALTER COLUMN `updated_at` DROP DEFAULT;

DROP TABLE `news_letters`;

# ---------------------------------------------------------------------- #
# Drop table "mining_pools"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `mining_pools` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `mining_pools` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `mining_pools` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `mining_pools` ALTER COLUMN `updated_at` DROP DEFAULT;

DROP TABLE `mining_pools`;

# ---------------------------------------------------------------------- #
# Drop table "menus"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `menus`;

# ---------------------------------------------------------------------- #
# Drop table "menu_items"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `menu_items` ALTER COLUMN `target` DROP DEFAULT;

DROP TABLE `menu_items`;

# ---------------------------------------------------------------------- #
# Drop table "favorites_coins"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `favorites_coins`;

# ---------------------------------------------------------------------- #
# Drop table "exchanges"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `exchanges` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `exchanges` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `exchanges` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `exchanges` DROP PRIMARY KEY;

DROP TABLE `exchanges`;

# ---------------------------------------------------------------------- #
# Drop table "events"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `events` ALTER COLUMN `start_date` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `end_date` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `events` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `events` DROP PRIMARY KEY;

DROP TABLE `events`;

# ---------------------------------------------------------------------- #
# Drop table "donate_coins"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `donate_coins` DROP PRIMARY KEY;

DROP TABLE `donate_coins`;

# ---------------------------------------------------------------------- #
# Drop table "data_types"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `data_types` ALTER COLUMN `generate_permissions` DROP DEFAULT;

ALTER TABLE `data_types` ALTER COLUMN `server_side` DROP DEFAULT;

ALTER TABLE `data_types` DROP PRIMARY KEY;

DROP TABLE `data_types`;

# ---------------------------------------------------------------------- #
# Drop table "dashboard_sliders"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `dashboard_sliders` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `dashboard_sliders` ALTER COLUMN `lang` DROP DEFAULT;

ALTER TABLE `dashboard_sliders` DROP PRIMARY KEY;

DROP TABLE `dashboard_sliders`;

# ---------------------------------------------------------------------- #
# Drop table "currencies_rates"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `currencies_rates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `currencies_rates` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `currencies_rates` DROP PRIMARY KEY;

DROP TABLE `currencies_rates`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_top_pairs"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_top_pairs` DROP PRIMARY KEY;

DROP TABLE `crypto_top_pairs`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_news"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_news` ALTER COLUMN `lang` DROP DEFAULT;

ALTER TABLE `crypto_news` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_news` ALTER COLUMN `twitter_post` DROP DEFAULT;

ALTER TABLE `crypto_news` DROP PRIMARY KEY;

DROP TABLE `crypto_news`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_mining_equipments"                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_mining_equipments` ALTER COLUMN `recommended` DROP DEFAULT;

ALTER TABLE `crypto_mining_equipments` ALTER COLUMN `url` DROP DEFAULT;

ALTER TABLE `crypto_mining_equipments` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_mining_equipments` DROP PRIMARY KEY;

DROP TABLE `crypto_mining_equipments`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_markets"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_markets` ALTER COLUMN `rank` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `price_usd` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `price_btc` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `percent_change_hour` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `percent_change_day` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `percent_change_week` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `last_updated` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_markets` ALTER COLUMN `sponsored` DROP DEFAULT;

ALTER TABLE `crypto_markets` DROP PRIMARY KEY;

DROP TABLE `crypto_markets`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_historical_hour_datas"                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_historical_hour_datas` DROP PRIMARY KEY;

DROP TABLE `crypto_historical_hour_datas`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_historical_day_datas"                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_historical_day_datas` DROP PRIMARY KEY;

DROP TABLE `crypto_historical_day_datas`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_globals"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_globals` DROP PRIMARY KEY;

DROP TABLE `crypto_globals`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_exchanges_volumes"                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_exchanges_volumes` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `crypto_exchanges_volumes` DROP PRIMARY KEY;

DROP TABLE `crypto_exchanges_volumes`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_exchanges"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_exchanges` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `crypto_exchanges` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_exchanges` ALTER COLUMN `image` DROP DEFAULT;

ALTER TABLE `crypto_exchanges` DROP PRIMARY KEY;

DROP TABLE `crypto_exchanges`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_coins_rates"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_coins_rates` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `crypto_coins_rates` ALTER COLUMN `change_hour` DROP DEFAULT;

ALTER TABLE `crypto_coins_rates` ALTER COLUMN `change_day` DROP DEFAULT;

ALTER TABLE `crypto_coins_rates` DROP PRIMARY KEY;

DROP TABLE `crypto_coins_rates`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_coins_icos"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_coins_icos` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_coins_icos` ALTER COLUMN `featured` DROP DEFAULT;

ALTER TABLE `crypto_coins_icos` ALTER COLUMN `affiliate` DROP DEFAULT;

ALTER TABLE `crypto_coins_icos` ALTER COLUMN `hide` DROP DEFAULT;

ALTER TABLE `crypto_coins_icos` DROP PRIMARY KEY;

DROP TABLE `crypto_coins_icos`;

# ---------------------------------------------------------------------- #
# Drop table "crypto_coins_full_details"                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `block_reward` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `net_hases_per_second` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_token_supply` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_start_date` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_end_date` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_fund_raised_btc` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_fund_raised_usd` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `ico_start_price` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `crypto_coins_full_details` DROP PRIMARY KEY;

DROP TABLE `crypto_coins_full_details`;

# ---------------------------------------------------------------------- #
# Drop table "contact_us"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `contact_us` ALTER COLUMN `replied` DROP DEFAULT;

ALTER TABLE `contact_us` ALTER COLUMN `created_at` DROP DEFAULT;

ALTER TABLE `contact_us` ALTER COLUMN `updated_at` DROP DEFAULT;

ALTER TABLE `contact_us` DROP PRIMARY KEY;

DROP TABLE `contact_us`;

# ---------------------------------------------------------------------- #
# Drop table "categories"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `categories` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `categories` DROP PRIMARY KEY;

DROP TABLE `categories`;

# ---------------------------------------------------------------------- #
# Drop table "blockfolio_coins"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `blockfolio_coins` ALTER COLUMN `price` DROP DEFAULT;

ALTER TABLE `blockfolio_coins` ALTER COLUMN `type` DROP DEFAULT;

ALTER TABLE `blockfolio_coins` DROP PRIMARY KEY;

DROP TABLE `blockfolio_coins`;

# ---------------------------------------------------------------------- #
# Drop table "available_languages"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `available_languages` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `available_languages` ALTER COLUMN `order` DROP DEFAULT;

ALTER TABLE `available_languages` ALTER COLUMN `flag` DROP DEFAULT;

ALTER TABLE `available_languages` DROP PRIMARY KEY;

DROP TABLE `available_languages`;

# ---------------------------------------------------------------------- #
# Drop table "affiliates"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `affiliates` DROP PRIMARY KEY;

DROP TABLE `affiliates`;
