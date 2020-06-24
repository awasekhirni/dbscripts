# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          bloodbank.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 18:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_donor` DROP FOREIGN KEY `tbl_agent_tbl_donor`;

ALTER TABLE `tbl_donor` DROP FOREIGN KEY `tbl_blood_group_tbl_donor`;

ALTER TABLE `tbl_donor` DROP FOREIGN KEY `tbl_religion_tbl_donor`;

ALTER TABLE `tbl_faq` DROP FOREIGN KEY `tbl_category_tbl_faq`;

ALTER TABLE `tbl_faq` DROP FOREIGN KEY `tbl_faq_category_tbl_faq`;

ALTER TABLE `tbl_news` DROP FOREIGN KEY `tbl_category_tbl_news`;

ALTER TABLE `tbl_payment` DROP FOREIGN KEY `tbl_agent_tbl_payment`;

ALTER TABLE `tbl_payment` DROP FOREIGN KEY `tbl_pricing_plan_tbl_payment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_payment"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_payment` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_payment` DROP PRIMARY KEY;

DROP TABLE `tbl_payment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_faq"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_faq` MODIFY `faq_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_faq` DROP PRIMARY KEY;

DROP TABLE `tbl_faq`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_donor"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_donor` MODIFY `donor_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_donor` DROP PRIMARY KEY;

DROP TABLE `tbl_donor`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_user"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_user` MODIFY `id` INTEGER(10) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_user` DROP PRIMARY KEY;

DROP TABLE `tbl_user`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_testimonial"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_testimonial` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_testimonial` DROP PRIMARY KEY;

DROP TABLE `tbl_testimonial`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_subscriber"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_subscriber` MODIFY `subs_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_subscriber` DROP PRIMARY KEY;

DROP TABLE `tbl_subscriber`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_social"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_social` MODIFY `social_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_social` DROP PRIMARY KEY;

DROP TABLE `tbl_social`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_settings"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_settings` DROP PRIMARY KEY;

DROP TABLE `tbl_settings`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_religion"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_religion` MODIFY `religion_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_religion` DROP PRIMARY KEY;

DROP TABLE `tbl_religion`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_pricing_plan"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_pricing_plan` MODIFY `pricing_plan_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_pricing_plan` DROP PRIMARY KEY;

DROP TABLE `tbl_pricing_plan`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_partner"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_partner` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_partner` DROP PRIMARY KEY;

DROP TABLE `tbl_partner`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_page"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_page` MODIFY `page_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_page` DROP PRIMARY KEY;

DROP TABLE `tbl_page`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_news"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_news` MODIFY `news_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_news` DROP PRIMARY KEY;

DROP TABLE `tbl_news`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_menu"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_menu` MODIFY `menu_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_menu` DROP PRIMARY KEY;

DROP TABLE `tbl_menu`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_file"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_file` MODIFY `file_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_file` DROP PRIMARY KEY;

DROP TABLE `tbl_file`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_faq_category"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_faq_category` MODIFY `faq_category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_faq_category` DROP PRIMARY KEY;

DROP TABLE `tbl_faq_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_comment"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_comment` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_comment` DROP PRIMARY KEY;

DROP TABLE `tbl_comment`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_category"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_category` MODIFY `category_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_category` DROP PRIMARY KEY;

DROP TABLE `tbl_category`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_blood_group"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_blood_group` MODIFY `blood_group_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_blood_group` DROP PRIMARY KEY;

DROP TABLE `tbl_blood_group`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_agent"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_agent` MODIFY `agent_id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_agent` DROP PRIMARY KEY;

DROP TABLE `tbl_agent`;
