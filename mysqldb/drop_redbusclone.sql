# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          redbusclone.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:26                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `acn_account_transaction` DROP FOREIGN KEY `acc_account_name_acn_account_transaction`;

ALTER TABLE `agent_ledger` DROP FOREIGN KEY `agent_info_agent_ledger`;

ALTER TABLE `fleet_registration` DROP FOREIGN KEY `employee_type_fleet_registration`;

ALTER TABLE `fleet_registration` DROP FOREIGN KEY `fleet_type_fleet_registration`;

ALTER TABLE `ftn_fitness_period` DROP FOREIGN KEY `fit_fitness_ftn_fitness_period`;

ALTER TABLE `module_permission` DROP FOREIGN KEY `module_module_permission`;

ALTER TABLE `sec_role_permission` DROP FOREIGN KEY `sec_menu_item_sec_role_permission`;

ALTER TABLE `sec_role_permission` DROP FOREIGN KEY `sec_role_tbl_sec_role_permission`;

ALTER TABLE `sec_user_access_tbl` DROP FOREIGN KEY `sec_role_tbl_sec_user_access_tbl`;

ALTER TABLE `tkt_booking` DROP FOREIGN KEY `agent_info_tkt_booking`;

ALTER TABLE `tkt_booking` DROP FOREIGN KEY `tkt_refund_tkt_booking`;

ALTER TABLE `tkt_booking` DROP FOREIGN KEY `trip_route_tkt_booking`;

ALTER TABLE `tkt_referal` DROP FOREIGN KEY `tkt_passenger_tkt_referal`;

ALTER TABLE `trip` DROP FOREIGN KEY `shedule_trip`;

ALTER TABLE `trip_assign` DROP FOREIGN KEY `fleet_registration_trip_assign`;

ALTER TABLE `ws_booking_history` DROP FOREIGN KEY `agent_info_ws_booking_history`;

ALTER TABLE `ws_booking_history` DROP FOREIGN KEY `tkt_refund_ws_booking_history`;

ALTER TABLE `ws_booking_history` DROP FOREIGN KEY `trip_route_ws_booking_history`;

ALTER TABLE `ws_payments` DROP FOREIGN KEY `user_ws_payments`;

# ---------------------------------------------------------------------- #
# Drop table "trip_assign"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trip_assign` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `trip_assign` ALTER COLUMN `sold_ticket` DROP DEFAULT;

ALTER TABLE `trip_assign` ALTER COLUMN `total_income` DROP DEFAULT;

ALTER TABLE `trip_assign` ALTER COLUMN `total_expense` DROP DEFAULT;

ALTER TABLE `trip_assign` ALTER COLUMN `total_fuel` DROP DEFAULT;

ALTER TABLE `trip_assign` ALTER COLUMN `closed_by_id` DROP DEFAULT;

ALTER TABLE `trip_assign` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `trip_assign` DROP PRIMARY KEY;

DROP TABLE `trip_assign`;

# ---------------------------------------------------------------------- #
# Drop table "tkt_booking"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tkt_booking` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tkt_booking` ALTER COLUMN `adult` DROP DEFAULT;

ALTER TABLE `tkt_booking` ALTER COLUMN `child` DROP DEFAULT;

ALTER TABLE `tkt_booking` ALTER COLUMN `special` DROP DEFAULT;

ALTER TABLE `tkt_booking` ALTER COLUMN `booked_by` DROP DEFAULT;

ALTER TABLE `tkt_booking` DROP PRIMARY KEY;

DROP TABLE `tkt_booking`;

# ---------------------------------------------------------------------- #
# Drop table "sec_role_permission"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sec_role_permission` MODIFY `id` BIGINT(20) NOT NULL;

# Drop constraints #

ALTER TABLE `sec_role_permission` DROP PRIMARY KEY;

DROP TABLE `sec_role_permission`;

# ---------------------------------------------------------------------- #
# Drop table "fleet_registration"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fleet_registration` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `fleet_registration` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `fleet_registration` ALTER COLUMN `is_assign` DROP DEFAULT;

ALTER TABLE `fleet_registration` DROP PRIMARY KEY;

DROP TABLE `fleet_registration`;

# ---------------------------------------------------------------------- #
# Drop table "ws_setting"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ws_setting` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ws_setting` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `ws_setting` ALTER COLUMN `bank_commission` DROP DEFAULT;

ALTER TABLE `ws_setting` DROP PRIMARY KEY;

DROP TABLE `ws_setting`;

# ---------------------------------------------------------------------- #
# Drop table "ws_payments"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ws_payments` MODIFY `payment_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ws_payments` DROP PRIMARY KEY;

DROP TABLE `ws_payments`;

# ---------------------------------------------------------------------- #
# Drop table "ws_offer"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ws_offer` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ws_offer` ALTER COLUMN `position` DROP DEFAULT;

ALTER TABLE `ws_offer` DROP PRIMARY KEY;

DROP TABLE `ws_offer`;

# ---------------------------------------------------------------------- #
# Drop table "ws_booking_history"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ws_booking_history` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `ws_booking_history` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `ws_booking_history` DROP PRIMARY KEY;

DROP TABLE `ws_booking_history`;

# ---------------------------------------------------------------------- #
# Drop table "user"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `user` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `user` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `user` ALTER COLUMN `is_admin` DROP DEFAULT;

ALTER TABLE `user` DROP PRIMARY KEY;

DROP TABLE `user`;

# ---------------------------------------------------------------------- #
# Drop table "trip_route"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trip_route` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `trip_route` ALTER COLUMN `children_seat` DROP DEFAULT;

ALTER TABLE `trip_route` ALTER COLUMN `special_seat` DROP DEFAULT;

ALTER TABLE `trip_route` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `trip_route` DROP PRIMARY KEY;

DROP TABLE `trip_route`;

# ---------------------------------------------------------------------- #
# Drop table "trip_location"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trip_location` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `trip_location` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `trip_location` DROP PRIMARY KEY;

DROP TABLE `trip_location`;

# ---------------------------------------------------------------------- #
# Drop table "trip"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `trip` MODIFY `trip_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `trip` ALTER COLUMN `weekend` DROP DEFAULT;

ALTER TABLE `trip` DROP PRIMARY KEY;

DROP TABLE `trip`;

# ---------------------------------------------------------------------- #
# Drop table "tkt_refund"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tkt_refund` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tkt_refund` DROP PRIMARY KEY;

DROP TABLE `tkt_refund`;

# ---------------------------------------------------------------------- #
# Drop table "tkt_referal"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tkt_referal` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tkt_referal` DROP PRIMARY KEY;

DROP TABLE `tkt_referal`;

# ---------------------------------------------------------------------- #
# Drop table "tkt_passenger"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tkt_passenger` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tkt_passenger` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tkt_passenger` DROP PRIMARY KEY;

DROP TABLE `tkt_passenger`;

# ---------------------------------------------------------------------- #
# Drop table "tkt_feedback"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tkt_feedback` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tkt_feedback` ALTER COLUMN `rating` DROP DEFAULT;

ALTER TABLE `tkt_feedback` DROP PRIMARY KEY;

DROP TABLE `tkt_feedback`;

# ---------------------------------------------------------------------- #
# Drop table "ticket_notification"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ticket_notification` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ticket_notification` ALTER COLUMN `is_seen` DROP DEFAULT;

ALTER TABLE `ticket_notification` ALTER COLUMN `admin_seen` DROP DEFAULT;

ALTER TABLE `ticket_notification` ALTER COLUMN `booked_by` DROP DEFAULT;

ALTER TABLE `ticket_notification` DROP PRIMARY KEY;

DROP TABLE `ticket_notification`;

# ---------------------------------------------------------------------- #
# Drop table "synchronizer_setting"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `synchronizer_setting` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `synchronizer_setting` DROP PRIMARY KEY;

DROP TABLE `synchronizer_setting`;

# ---------------------------------------------------------------------- #
# Drop table "shedule"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shedule` MODIFY `shedule_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shedule` DROP PRIMARY KEY;

DROP TABLE `shedule`;

# ---------------------------------------------------------------------- #
# Drop table "setting"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `setting` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `setting` DROP PRIMARY KEY;

DROP TABLE `setting`;

# ---------------------------------------------------------------------- #
# Drop table "sec_user_access_tbl"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sec_user_access_tbl` MODIFY `role_acc_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sec_user_access_tbl` DROP PRIMARY KEY;

DROP TABLE `sec_user_access_tbl`;

# ---------------------------------------------------------------------- #
# Drop table "sec_role_tbl"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sec_role_tbl` MODIFY `role_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sec_role_tbl` ALTER COLUMN `role_status` DROP DEFAULT;

ALTER TABLE `sec_role_tbl` DROP PRIMARY KEY;

DROP TABLE `sec_role_tbl`;

# ---------------------------------------------------------------------- #
# Drop table "sec_menu_item"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sec_menu_item` MODIFY `menu_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sec_menu_item` DROP PRIMARY KEY;

DROP TABLE `sec_menu_item`;

# ---------------------------------------------------------------------- #
# Drop table "pri_price"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `pri_price` MODIFY `price_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `pri_price` ALTER COLUMN `group_price_per_person` DROP DEFAULT;

ALTER TABLE `pri_price` ALTER COLUMN `group_size` DROP DEFAULT;

ALTER TABLE `pri_price` DROP PRIMARY KEY;

DROP TABLE `pri_price`;

# ---------------------------------------------------------------------- #
# Drop table "payment_informations"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment_informations` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payment_informations` DROP PRIMARY KEY;

DROP TABLE `payment_informations`;

# ---------------------------------------------------------------------- #
# Drop table "ofr_offer"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ofr_offer` MODIFY `offer_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ofr_offer` DROP PRIMARY KEY;

DROP TABLE `ofr_offer`;

# ---------------------------------------------------------------------- #
# Drop table "module_permission"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `module_permission` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `module_permission` DROP PRIMARY KEY;

DROP TABLE `module_permission`;

# ---------------------------------------------------------------------- #
# Drop table "module"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `module` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `module` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `module` DROP PRIMARY KEY;

DROP TABLE `module`;

# ---------------------------------------------------------------------- #
# Drop table "message"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `message` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `message` ALTER COLUMN `sender_status` DROP DEFAULT;

ALTER TABLE `message` ALTER COLUMN `receiver_status` DROP DEFAULT;

ALTER TABLE `message` DROP PRIMARY KEY;

DROP TABLE `message`;

# ---------------------------------------------------------------------- #
# Drop table "language"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `language` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `language` DROP PRIMARY KEY;

DROP TABLE `language`;

# ---------------------------------------------------------------------- #
# Drop table "how_to_use"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `how_to_use` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `how_to_use` DROP PRIMARY KEY;

DROP TABLE `how_to_use`;

# ---------------------------------------------------------------------- #
# Drop table "ftn_fitness_period"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `ftn_fitness_period` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `ftn_fitness_period` DROP PRIMARY KEY;

DROP TABLE `ftn_fitness_period`;

# ---------------------------------------------------------------------- #
# Drop table "fleet_type"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fleet_type` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `fleet_type` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `fleet_type` DROP PRIMARY KEY;

DROP TABLE `fleet_type`;

# ---------------------------------------------------------------------- #
# Drop table "fleet_facilities"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fleet_facilities` MODIFY `id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `fleet_facilities` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `fleet_facilities` DROP PRIMARY KEY;

DROP TABLE `fleet_facilities`;

# ---------------------------------------------------------------------- #
# Drop table "fit_fitness"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `fit_fitness` MODIFY `fitness_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `fit_fitness` DROP PRIMARY KEY;

DROP TABLE `fit_fitness`;

# ---------------------------------------------------------------------- #
# Drop table "enquiry"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `enquiry` MODIFY `enquiry_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `enquiry` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `enquiry` DROP PRIMARY KEY;

DROP TABLE `enquiry`;

# ---------------------------------------------------------------------- #
# Drop table "employee_type"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee_type` MODIFY `type_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employee_type` DROP PRIMARY KEY;

DROP TABLE `employee_type`;

# ---------------------------------------------------------------------- #
# Drop table "employee_history"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee_history` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employee_history` ALTER COLUMN `is_assign` DROP DEFAULT;

ALTER TABLE `employee_history` DROP PRIMARY KEY;

DROP TABLE `employee_history`;

# ---------------------------------------------------------------------- #
# Drop table "email_config"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `email_config` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `email_config` DROP PRIMARY KEY;

DROP TABLE `email_config`;

# ---------------------------------------------------------------------- #
# Drop table "booking_downtime"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `booking_downtime` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `booking_downtime` DROP PRIMARY KEY;

DROP TABLE `booking_downtime`;

# ---------------------------------------------------------------------- #
# Drop table "bank_transaction"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_transaction` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bank_transaction` ALTER COLUMN `transaction_date` DROP DEFAULT;

ALTER TABLE `bank_transaction` DROP PRIMARY KEY;

DROP TABLE `bank_transaction`;

# ---------------------------------------------------------------------- #
# Drop table "bank_info"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `bank_info` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `bank_info` DROP PRIMARY KEY;

DROP TABLE `bank_info`;

# ---------------------------------------------------------------------- #
# Drop table "agent_ledger"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `agent_ledger` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `agent_ledger` ALTER COLUMN `debit` DROP DEFAULT;

ALTER TABLE `agent_ledger` ALTER COLUMN `credit` DROP DEFAULT;

ALTER TABLE `agent_ledger` ALTER COLUMN `commission_rate` DROP DEFAULT;

ALTER TABLE `agent_ledger` ALTER COLUMN `total_price` DROP DEFAULT;

ALTER TABLE `agent_ledger` DROP PRIMARY KEY;

DROP TABLE `agent_ledger`;

# ---------------------------------------------------------------------- #
# Drop table "agent_info"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `agent_info` MODIFY `agent_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `agent_info` DROP PRIMARY KEY;

DROP TABLE `agent_info`;

# ---------------------------------------------------------------------- #
# Drop table "acn_account_transaction"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `acn_account_transaction` MODIFY `account_tran_id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `acn_account_transaction` DROP PRIMARY KEY;

DROP TABLE `acn_account_transaction`;

# ---------------------------------------------------------------------- #
# Drop table "acc_account_name"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `acc_account_name` MODIFY `account_id` INTEGER(11) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `acc_account_name` DROP PRIMARY KEY;

DROP TABLE `acc_account_name`;
