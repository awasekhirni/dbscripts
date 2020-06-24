# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project4.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:05                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tj_favorite_ride` DROP FOREIGN KEY `tj_favorite_ride_ibfk_1`;

ALTER TABLE `tj_location_vehicule` DROP FOREIGN KEY `tj_location_vehicule_ibfk_1`;

ALTER TABLE `tj_message` DROP FOREIGN KEY `tj_message_ibfk_1`;

ALTER TABLE `tj_message` DROP FOREIGN KEY `tj_message_ibfk_2`;

ALTER TABLE `tj_message` DROP FOREIGN KEY `tj_message_ibfk_3`;

ALTER TABLE `tj_note` DROP FOREIGN KEY `tj_note_ibfk_1`;

ALTER TABLE `tj_note` DROP FOREIGN KEY `tj_note_ibfk_2`;

ALTER TABLE `tj_requete` DROP FOREIGN KEY `tj_requete_ibfk_1`;

ALTER TABLE `tj_requete` DROP FOREIGN KEY `tj_requete_ibfk_2`;

ALTER TABLE `tj_requete_book` DROP FOREIGN KEY `tj_requete_book_ibfk_1`;

ALTER TABLE `tj_requete_book` DROP FOREIGN KEY `tj_requete_book_ibfk_2`;

ALTER TABLE `tj_requete_book` DROP FOREIGN KEY `tj_requete_book_ibfk_3`;

ALTER TABLE `tj_user` DROP FOREIGN KEY `tj_user_ibfk_1`;

ALTER TABLE `tj_vehicule` DROP FOREIGN KEY `tj_vehicule_ibfk_1`;

ALTER TABLE `tj_vehicule` DROP FOREIGN KEY `tj_vehicule_ibfk_2`;

ALTER TABLE `tj_vehicule_rental` DROP FOREIGN KEY `tj_vehicule_rental_ibfk_1`;

# ---------------------------------------------------------------------- #
# Drop table "tj_requete_book"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_requete_book` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_requete_book` DROP PRIMARY KEY;

DROP TABLE `tj_requete_book`;

# ---------------------------------------------------------------------- #
# Drop table "tj_note"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_note` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_note` DROP PRIMARY KEY;

DROP TABLE `tj_note`;

# ---------------------------------------------------------------------- #
# Drop table "tj_message"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_message` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_message` DROP PRIMARY KEY;

DROP TABLE `tj_message`;

# ---------------------------------------------------------------------- #
# Drop table "tj_location_vehicule"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_location_vehicule` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_location_vehicule` DROP PRIMARY KEY;

DROP TABLE `tj_location_vehicule`;

# ---------------------------------------------------------------------- #
# Drop table "tj_favorite_ride"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_favorite_ride` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_favorite_ride` DROP PRIMARY KEY;

DROP TABLE `tj_favorite_ride`;

# ---------------------------------------------------------------------- #
# Drop table "tj_vehicule_rental"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_vehicule_rental` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_vehicule_rental` DROP PRIMARY KEY;

DROP TABLE `tj_vehicule_rental`;

# ---------------------------------------------------------------------- #
# Drop table "tj_vehicule"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_vehicule` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_vehicule` DROP PRIMARY KEY;

DROP TABLE `tj_vehicule`;

# ---------------------------------------------------------------------- #
# Drop table "tj_user_app"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_user_app` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_user_app` DROP PRIMARY KEY;

DROP TABLE `tj_user_app`;

# ---------------------------------------------------------------------- #
# Drop table "tj_user"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_user` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_user` DROP PRIMARY KEY;

DROP TABLE `tj_user`;

# ---------------------------------------------------------------------- #
# Drop table "tj_type_vehicule_rental"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_type_vehicule_rental` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_type_vehicule_rental` DROP PRIMARY KEY;

DROP TABLE `tj_type_vehicule_rental`;

# ---------------------------------------------------------------------- #
# Drop table "tj_type_vehicule"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_type_vehicule` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_type_vehicule` DROP PRIMARY KEY;

DROP TABLE `tj_type_vehicule`;

# ---------------------------------------------------------------------- #
# Drop table "tj_transaction"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_transaction` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_transaction` DROP PRIMARY KEY;

DROP TABLE `tj_transaction`;

# ---------------------------------------------------------------------- #
# Drop table "tj_settings"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_settings` DROP PRIMARY KEY;

DROP TABLE `tj_settings`;

# ---------------------------------------------------------------------- #
# Drop table "tj_requete"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_requete` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_requete` DROP PRIMARY KEY;

DROP TABLE `tj_requete`;

# ---------------------------------------------------------------------- #
# Drop table "tj_recu"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_recu` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_recu` DROP PRIMARY KEY;

DROP TABLE `tj_recu`;

# ---------------------------------------------------------------------- #
# Drop table "tj_payment_method"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_payment_method` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_payment_method` DROP PRIMARY KEY;

DROP TABLE `tj_payment_method`;

# ---------------------------------------------------------------------- #
# Drop table "tj_notification"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_notification` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_notification` DROP PRIMARY KEY;

DROP TABLE `tj_notification`;

# ---------------------------------------------------------------------- #
# Drop table "tj_currency"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_currency` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_currency` DROP PRIMARY KEY;

DROP TABLE `tj_currency`;

# ---------------------------------------------------------------------- #
# Drop table "tj_country"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_country` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_country` DROP PRIMARY KEY;

DROP TABLE `tj_country`;

# ---------------------------------------------------------------------- #
# Drop table "tj_conducteur"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_conducteur` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_conducteur` DROP PRIMARY KEY;

DROP TABLE `tj_conducteur`;

# ---------------------------------------------------------------------- #
# Drop table "tj_commission"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_commission` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_commission` DROP PRIMARY KEY;

DROP TABLE `tj_commission`;

# ---------------------------------------------------------------------- #
# Drop table "tj_categorie_user"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tj_categorie_user` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tj_categorie_user` DROP PRIMARY KEY;

DROP TABLE `tj_categorie_user`;
