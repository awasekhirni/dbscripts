# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          cryptotracker.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:56                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "affiliates"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `affiliates` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `link` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "available_languages"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `available_languages` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `short_name` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `code` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `order` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
    `flag` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "blockfolio_coins"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `blockfolio_coins` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `transaction_id` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `coin` CHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exchange` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pair` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `quantity` DOUBLE(50,8) NOT NULL,
    `price` DOUBLE NOT NULL DEFAULT 0,
    `type` SMALLINT(6) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "categories"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `categories` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `parent_id` INTEGER(10) UNSIGNED,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `categories_slug_unique` ON `categories` (`slug`);

CREATE INDEX `categories_parent_id_foreign` ON `categories` (`parent_id`);

# ---------------------------------------------------------------------- #
# Add table "contact_us"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `contact_us` (
    `id` INTEGER(11) NOT NULL,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `inquiry_type` VARCHAR(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `message` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `replied` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crypto_coins_full_details"                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_coins_full_details` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `title` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `alias` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `seo_description` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `full_name` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `symbol` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `features` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `technology` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `algorithm` CHAR(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `proof_type` CHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `start_date` INTEGER(11) NOT NULL,
    `twitter` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `reddit` CHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `facebook` CHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `website_url` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `block_number` BIGINT(20) NOT NULL,
    `block_time` INTEGER(11) NOT NULL,
    `total_coins_mined` BIGINT(20) NOT NULL,
    `previous_total_coins_mined` BIGINT(20) NOT NULL,
    `block_reward` INTEGER(11) NOT NULL DEFAULT 0,
    `net_hases_per_second` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ico_status` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_token_supply` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ico_start_date` INTEGER(11) NOT NULL DEFAULT 0,
    `ico_end_date` INTEGER(11) NOT NULL DEFAULT 0,
    `ico_fund_raised_btc` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ico_fund_raised_usd` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ico_start_price` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ico_security_audit_company` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_legal_form` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_jurisdiction` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_legal_advisers` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_blog` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `ico_white_paper_link` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` SMALLINT(4) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_coins_full_details_symbol_unique` ON `crypto_coins_full_details` (`symbol`);

# ---------------------------------------------------------------------- #
# Add table "crypto_coins_icos"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_coins_icos` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `alias` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 0,
    `image` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `website` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icowatchlist_url` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `timezone` CHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `featured` TINYINT(4) DEFAULT 0,
    `affiliate` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `hide` SMALLINT(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_coins_icos_alias_unique` ON `crypto_coins_icos` (`alias`);

# ---------------------------------------------------------------------- #
# Add table "crypto_coins_rates"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_coins_rates` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `coin` CHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `f_currency` CHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE(14,6) NOT NULL DEFAULT 0.000000,
    `change_hour` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `change_day` DOUBLE(8,2) NOT NULL DEFAULT 0.00,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_coins_rates_coin_f_currency_unique` ON `crypto_coins_rates` (`coin`,`f_currency`);

# ---------------------------------------------------------------------- #
# Add table "crypto_exchanges"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_exchanges` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `exchange_id` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `website` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `affiliate` CHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `order` INTEGER(11) DEFAULT 0,
    `status` SMALLINT(4) NOT NULL DEFAULT 1,
    `image` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_exchanges_exchange_id_unique` ON `crypto_exchanges` (`exchange_id`);

# ---------------------------------------------------------------------- #
# Add table "crypto_exchanges_volumes"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_exchanges_volumes` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `symbol` CHAR(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `to_symbol` CHAR(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exchange` CHAR(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pair` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` DOUBLE(25,8) NOT NULL DEFAULT 0.00000000,
    `volume_day_from` DOUBLE(25,8) NOT NULL,
    `volume_day_to` DOUBLE(25,8) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE UNIQUE INDEX `crypto_exchanges_volumes_symbol_exchange_pair_unique` ON `crypto_exchanges_volumes` (`symbol`,`exchange`,`pair`);

# ---------------------------------------------------------------------- #
# Add table "crypto_globals"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_globals` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `total_market_cap_usd` BIGINT(20) NOT NULL,
    `total_24h_volume_usd` BIGINT(20) NOT NULL,
    `bitcoin_percentage_of_market_cap` DOUBLE(4,2) NOT NULL,
    `active_currencies` INTEGER(11) NOT NULL,
    `active_assets` INTEGER(11) NOT NULL,
    `active_markets` INTEGER(11) NOT NULL,
    `last_updated` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crypto_historical_day_datas"                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_historical_day_datas` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `coin` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` INTEGER(11) NOT NULL,
    `open` DOUBLE(14,6) NOT NULL,
    `close` DOUBLE(14,6) NOT NULL,
    `high` DOUBLE(14,6) NOT NULL,
    `low` DOUBLE(14,6) NOT NULL,
    `volume_from` DOUBLE(25,6) NOT NULL,
    `volume_to` DOUBLE(25,6) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_historical_day_datas_coin_time_unique` ON `crypto_historical_day_datas` (`coin`,`time`);

# ---------------------------------------------------------------------- #
# Add table "crypto_historical_hour_datas"                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_historical_hour_datas` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `coin` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` INTEGER(11) NOT NULL,
    `open` DOUBLE(14,6) NOT NULL,
    `close` DOUBLE(14,6) NOT NULL,
    `high` DOUBLE(14,6) NOT NULL,
    `low` DOUBLE(14,6) NOT NULL,
    `volume_from` DOUBLE(25,6) NOT NULL,
    `volume_to` DOUBLE(25,6) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_historical_hour_datas_coin_time_unique` ON `crypto_historical_hour_datas` (`coin`,`time`);

# ---------------------------------------------------------------------- #
# Add table "crypto_markets"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_markets` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `unique_name` CHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` CHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `alias` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `symbol` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rank` INTEGER(11) DEFAULT 0,
    `price_usd` DOUBLE(14,6) DEFAULT 0.000000,
    `price_btc` DOUBLE(14,10) DEFAULT 0.0000000000,
    `volume_usd_day` BIGINT(20),
    `market_cap_usd` BIGINT(20),
    `available_supply` BIGINT(20),
    `total_supply` BIGINT(20),
    `max_supply` BIGINT(20),
    `percent_change_hour` DOUBLE(8,2) DEFAULT 0.00,
    `percent_change_day` DOUBLE(8,2) DEFAULT 0.00,
    `percent_change_week` DOUBLE(8,2) DEFAULT 0.00,
    `last_updated` INTEGER(11) DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` SMALLINT(4) NOT NULL DEFAULT 1,
    `sponsored` INTEGER(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_markets_name_symbol_unique` ON `crypto_markets` (`name`,`symbol`);

# ---------------------------------------------------------------------- #
# Add table "crypto_mining_equipments"                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_mining_equipments` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `company` CHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `logo` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `alias` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `affiliate` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `algorithm` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `hashes_per_second` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `cost` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currency` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `power_consumption` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `currencies_available` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `recommended` TINYINT(1) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `url` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `status` SMALLINT(4) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crypto_news"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_news` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `author` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `alias` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `url` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `urlToImage` CHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `publishedAt` INTEGER(11),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `lang` CHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'en',
    `status` SMALLINT(4) NOT NULL DEFAULT 1,
    `twitter_post` SMALLINT(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "crypto_top_pairs"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `crypto_top_pairs` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `symbol` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `pair` CHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `volume24h_from` DOUBLE(25,2),
    `volume24h_to` DOUBLE(25,2),
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `crypto_top_pairs_symbol_pair_unique` ON `crypto_top_pairs` (`symbol`,`pair`);

# ---------------------------------------------------------------------- #
# Add table "currencies_rates"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `currencies_rates` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `currency` CHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate` DOUBLE(14,6) NOT NULL,
    `icon` CHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `flag` CHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "dashboard_sliders"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `dashboard_sliders` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `image_link` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `text` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `page_link` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `lang` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "data_types"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_types` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_singular` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name_plural` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `model_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `policy_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `controller` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `generate_permissions` TINYINT(1) NOT NULL DEFAULT 0,
    `server_side` TINYINT(4) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `data_types_name_unique` ON `data_types` (`name`);

CREATE UNIQUE INDEX `data_types_slug_unique` ON `data_types` (`slug`);

# ---------------------------------------------------------------------- #
# Add table "donate_coins"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `donate_coins` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `coin` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `address` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

# ---------------------------------------------------------------------- #
# Add table "events"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `events` (
    `id` INTEGER(11) NOT NULL,
    `type` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `title` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `alias` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `organizer` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `start_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `end_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `website` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `email` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `venue` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `address` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `city` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `country` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `screenshot` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `alias` ON `events` (`alias`);

# ---------------------------------------------------------------------- #
# Add table "exchanges"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `exchanges` (
    `id` INTEGER(11) NOT NULL,
    `name` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `alias` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `logo` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `items` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `centralization_type` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `grade_points` FLOAT,
    `grade` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `grade_points_split` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `affiliate_url` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `url` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `country` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `order_book` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `trades` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `full_address` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `fees` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `deposit_methods` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `withdrawal_methods` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `rating` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `total_volume_24h` FLOAT,
    `order_no` INTEGER(11) NOT NULL,
    `status` TINYINT(4) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE UNIQUE INDEX `name` ON `exchanges` (`name`);

CREATE UNIQUE INDEX `alias` ON `exchanges` (`alias`);

# ---------------------------------------------------------------------- #
# Add table "favorites_coins"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `favorites_coins` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `user_id` INTEGER(11) NOT NULL,
    `coin` CHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menu_items"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `menu_items` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `menu_id` INTEGER(10) UNSIGNED,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `url` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `target` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
    `icon_class` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `color` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parent_id` INTEGER(11),
    `order` INTEGER(11) NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `route` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `parameters` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "menus"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `menus` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "mining_pools"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `mining_pools` (
    `id` INTEGER(11) NOT NULL,
    `read_more` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `logo` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `name` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `alias` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `merged_mining` TINYINT(1) NOT NULL,
    `tx_fee_shared_with_miner` TINYINT(1) NOT NULL,
    `affiliate_url` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `pool_features` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `coins` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `server_locations` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `payment_types` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `merged_mining_coins` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `twitter` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `average_fee` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `fee_expanded` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `minimum_payout` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "news_letters"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `news_letters` (
    `id` INTEGER(11) NOT NULL,
    `email` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "pages"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pages` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `author_id` INTEGER(11) NOT NULL,
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `language` CHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "password_resets"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `password_resets` (
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permission_groups"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `permission_groups` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permission_role"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `permission_role` (
    `permission_id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(10) UNSIGNED NOT NULL
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `permissions` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `permission_group_id` INTEGER(10) UNSIGNED
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "posts"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `posts` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `author_id` INTEGER(11) NOT NULL,
    `category_id` INTEGER(11),
    `title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `seo_title` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `excerpt` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `body` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slug` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `meta_description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `meta_keywords` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `status` ENUM('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `roles` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "settings"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `settings` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `key` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    `group` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "translations"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `translations` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `table_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `column_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `foreign_key` INTEGER(10) UNSIGNED NOT NULL,
    `locale` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `role_id` INTEGER(11),
    `name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
    `newsletter` INTEGER(11) DEFAULT 0,
    `password` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at` TIMESTAMP,
    `updated_at` TIMESTAMP,
    `status` INTEGER(11) DEFAULT 0,
    `token` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `about` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `skills` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "wallets"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `wallets` (
    `id` INTEGER(11) NOT NULL,
    `read_more` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `affiliate_url` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `name` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `logo` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `alias` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `security` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `anonymity` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `ease_of_use` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `has_attched_card` TINYINT(1) NOT NULL,
    `has_trading_facilities` TINYINT(1) NOT NULL,
    `has_vouchers_and_offers` TINYINT(1) NOT NULL,
    `wallet_features` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `coins` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `platforms` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `source_code_url` VARCHAR(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `validation_type` VARCHAR(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    `featured` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00'
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "data_rows"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `data_rows` (
    `id` INTEGER(10) UNSIGNED NOT NULL,
    `data_type_id` INTEGER(10) UNSIGNED NOT NULL,
    `field` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `display_name` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `browse` TINYINT(1) NOT NULL DEFAULT 1,
    `read` TINYINT(1) NOT NULL DEFAULT 1,
    `edit` TINYINT(1) NOT NULL DEFAULT 1,
    `add` TINYINT(1) NOT NULL DEFAULT 1,
    `delete` TINYINT(1) NOT NULL DEFAULT 1,
    `details` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `order` INTEGER(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `data_rows_data_type_id_foreign` ON `data_rows` (`data_type_id`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `data_rows` ADD CONSTRAINT `data_types_data_rows` 
    FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`);
