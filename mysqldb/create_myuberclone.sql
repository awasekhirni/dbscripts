# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project4.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:05                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "tj_categorie_user"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_categorie_user` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_commission"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_commission` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `value` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `type` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_conducteur"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_conducteur` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `prenom` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `cnib` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mdp` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut_licence` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut_nic` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut_vehicule` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `online` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `login_type` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_licence` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_licence_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_nic` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_nic_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tonotify` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `device_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fcm_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `amount` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_country"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_country` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `code` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_currency"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_currency` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `symbole` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_notification"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_notification` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `titre` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_payment_method"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_payment_method` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_recu"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_recu` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `image` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `image_name` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `montant` INTEGER(11) NOT NULL,
    `duree` VARCHAR(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `distance` INTEGER(11) NOT NULL,
    `id_course` INTEGER(11) NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = MYISAM;

CREATE INDEX `id_course` ON `tj_recu` (`id_course`,`id_conducteur`,`id_user_app`);

# ---------------------------------------------------------------------- #
# Add table "tj_requete"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_requete` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `id_user_app` INTEGER(11) NOT NULL,
    `depart_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `destination_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `place` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `number_poeple` INTEGER(2) NOT NULL,
    `distance` INTEGER(11) NOT NULL,
    `duree` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `montant` INTEGER(11) NOT NULL,
    `trajet` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut_paiement` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `id_payment_method` INTEGER(11) NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `date_retour` DATE NOT NULL,
    `heure_retour` TIME NOT NULL,
    `statut_round` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_user_app` ON `tj_requete` (`id_user_app`);

CREATE INDEX `id_conducteur` ON `tj_requete` (`id_conducteur`);

CREATE INDEX `id_payment_method` ON `tj_requete` (`id_payment_method`);

# ---------------------------------------------------------------------- #
# Add table "tj_settings"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_settings` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `title` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `footer` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_transaction"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_transaction` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `amount` INTEGER(11) NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_type_vehicule"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_type_vehicule` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `prix` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_type_vehicule_rental"                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_type_vehicule_rental` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `prix` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_user"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_user` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `nom_prenom` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `telephone` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mdp` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `id_categorie_user` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_categorie_user` ON `tj_user` (`id_categorie_user`);

# ---------------------------------------------------------------------- #
# Add table "tj_user_app"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_user_app` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `prenom` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `email` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mdp` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `login_type` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `photo_path` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `tonotify` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `device_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `fcm_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `amount` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "tj_vehicule"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_vehicule` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `model` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `color` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `numberplate` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `passenger` INTEGER(2) NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `id_type_vehicule` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_vehicule` ON `tj_vehicule` (`id_conducteur`);

CREATE INDEX `id_conducteur` ON `tj_vehicule` (`id_conducteur`);

CREATE INDEX `id_type_vehicule` ON `tj_vehicule` (`id_type_vehicule`);

# ---------------------------------------------------------------------- #
# Add table "tj_vehicule_rental"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_vehicule_rental` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `prix` INTEGER(11) NOT NULL,
    `nb_place` INTEGER(2) NOT NULL,
    `image` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `id_type_vehicule_rental` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_type_vehicule_rental` ON `tj_vehicule_rental` (`id_type_vehicule_rental`);

# ---------------------------------------------------------------------- #
# Add table "tj_favorite_ride"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_favorite_ride` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `latitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `depart_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `destination_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `distance` INTEGER(11) NOT NULL,
    `statut` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_user_app` ON `tj_favorite_ride` (`id_user_app`);

# ---------------------------------------------------------------------- #
# Add table "tj_location_vehicule"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_location_vehicule` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `nb_jour` INTEGER(11) NOT NULL,
    `date_debut` DATE NOT NULL,
    `date_fin` DATE NOT NULL,
    `contact` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `id_vehicule_rental` INTEGER(11) NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_vehicule_rental` ON `tj_location_vehicule` (`id_vehicule_rental`,`id_user_app`);

# ---------------------------------------------------------------------- #
# Add table "tj_message"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_message` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `id_requete` INTEGER(11) NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `user_cat` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_user_app` ON `tj_message` (`id_user_app`,`id_conducteur`);

CREATE INDEX `id_conducteur` ON `tj_message` (`id_conducteur`);

CREATE INDEX `id_requete` ON `tj_message` (`id_requete`);

# ---------------------------------------------------------------------- #
# Add table "tj_note"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_note` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `niveau` INTEGER(2) NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `id_user_app` INTEGER(11) NOT NULL,
    `statut` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_conducteur` ON `tj_note` (`id_conducteur`,`id_user_app`);

CREATE INDEX `id_user_app` ON `tj_note` (`id_user_app`);

# ---------------------------------------------------------------------- #
# Add table "tj_requete_book"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tj_requete_book` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `id_user_app` INTEGER(11) NOT NULL,
    `depart_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `destination_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_depart` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `latitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `longitude_arrivee` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `place` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `number_poeple` INTEGER(3) NOT NULL,
    `distance` INTEGER(11) NOT NULL,
    `duree` VARCHAR(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `montant` INTEGER(11) NOT NULL,
    `trajet` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `statut_paiement` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `id_conducteur` INTEGER(11) NOT NULL,
    `creer` DATETIME NOT NULL,
    `modifier` DATETIME NOT NULL,
    `date_book` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `nb_day` INTEGER(11) NOT NULL,
    `heure_depart` TIME NOT NULL,
    `cu` INTEGER(11) NOT NULL,
    `id_payment_method` INTEGER(11) NOT NULL,
    `heure_retour` TIME NOT NULL,
    `statut_round` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

CREATE INDEX `id_user_app` ON `tj_requete_book` (`id_user_app`,`id_conducteur`);

CREATE INDEX `id_conducteur` ON `tj_requete_book` (`id_conducteur`);

CREATE INDEX `id_payment_method` ON `tj_requete_book` (`id_payment_method`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `tj_favorite_ride` ADD CONSTRAINT `tj_favorite_ride_ibfk_1` 
    FOREIGN KEY (`id_user_app`) REFERENCES `tj_user_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_location_vehicule` ADD CONSTRAINT `tj_location_vehicule_ibfk_1` 
    FOREIGN KEY (`id_vehicule_rental`) REFERENCES `tj_vehicule_rental` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_message` ADD CONSTRAINT `tj_message_ibfk_1` 
    FOREIGN KEY (`id_user_app`) REFERENCES `tj_user_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_message` ADD CONSTRAINT `tj_message_ibfk_2` 
    FOREIGN KEY (`id_conducteur`) REFERENCES `tj_conducteur` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_message` ADD CONSTRAINT `tj_message_ibfk_3` 
    FOREIGN KEY (`id_requete`) REFERENCES `tj_requete` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_note` ADD CONSTRAINT `tj_note_ibfk_1` 
    FOREIGN KEY (`id_conducteur`) REFERENCES `tj_conducteur` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_note` ADD CONSTRAINT `tj_note_ibfk_2` 
    FOREIGN KEY (`id_user_app`) REFERENCES `tj_user_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_requete` ADD CONSTRAINT `tj_requete_ibfk_1` 
    FOREIGN KEY (`id_conducteur`) REFERENCES `tj_conducteur` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_requete` ADD CONSTRAINT `tj_requete_ibfk_2` 
    FOREIGN KEY (`id_payment_method`) REFERENCES `tj_payment_method` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_requete_book` ADD CONSTRAINT `tj_requete_book_ibfk_1` 
    FOREIGN KEY (`id_conducteur`) REFERENCES `tj_conducteur` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_requete_book` ADD CONSTRAINT `tj_requete_book_ibfk_2` 
    FOREIGN KEY (`id_user_app`) REFERENCES `tj_user_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_requete_book` ADD CONSTRAINT `tj_requete_book_ibfk_3` 
    FOREIGN KEY (`id_payment_method`) REFERENCES `tj_payment_method` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_user` ADD CONSTRAINT `tj_user_ibfk_1` 
    FOREIGN KEY (`id_categorie_user`) REFERENCES `tj_categorie_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_vehicule` ADD CONSTRAINT `tj_vehicule_ibfk_1` 
    FOREIGN KEY (`id_conducteur`) REFERENCES `tj_conducteur` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_vehicule` ADD CONSTRAINT `tj_vehicule_ibfk_2` 
    FOREIGN KEY (`id_type_vehicule`) REFERENCES `tj_type_vehicule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tj_vehicule_rental` ADD CONSTRAINT `tj_vehicule_rental_ibfk_1` 
    FOREIGN KEY (`id_type_vehicule_rental`) REFERENCES `tj_type_vehicule_rental` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
