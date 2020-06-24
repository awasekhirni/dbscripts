# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          pointofsaledb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-24 11:22                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `attendance` DROP FOREIGN KEY `employee_attendance`;

ALTER TABLE `badstock` DROP FOREIGN KEY `iteminformation_badstock`;

ALTER TABLE `badstock` DROP FOREIGN KEY `warehouse_badstock`;

ALTER TABLE `collection` DROP FOREIGN KEY `customer_collection`;

ALTER TABLE `collection` DROP FOREIGN KEY `sales_collection`;

ALTER TABLE `collection` DROP FOREIGN KEY `salesinfo_collection`;

ALTER TABLE `employeepayment` DROP FOREIGN KEY `employee_employeepayment`;

ALTER TABLE `expense` DROP FOREIGN KEY `expenditureaccount_expense`;

ALTER TABLE `iteminformation` DROP FOREIGN KEY `itemgroup_iteminformation`;

ALTER TABLE `iteminformation` DROP FOREIGN KEY `warehouse_iteminformation`;

ALTER TABLE `payment` DROP FOREIGN KEY `purchaseinfo_payment`;

ALTER TABLE `payment` DROP FOREIGN KEY `supplier_payment`;

ALTER TABLE `purchase` DROP FOREIGN KEY `iteminformation_purchase`;

ALTER TABLE `purchase` DROP FOREIGN KEY `purchaseinfo_purchase`;

ALTER TABLE `purchase` DROP FOREIGN KEY `warehouse_purchase`;

ALTER TABLE `purchaseinfo` DROP FOREIGN KEY `supplier_purchaseinfo`;

ALTER TABLE `purchaseinfo` DROP FOREIGN KEY `users_purchaseinfo`;

ALTER TABLE `purchasereturn` DROP FOREIGN KEY `iteminformation_purchasereturn`;

ALTER TABLE `purchasereturn` DROP FOREIGN KEY `purchaseinfo_purchasereturn`;

ALTER TABLE `purchasereturn` DROP FOREIGN KEY `warehouse_purchasereturn`;

ALTER TABLE `purchasereturninfo` DROP FOREIGN KEY `purchaseinfo_purchasereturninfo`;

ALTER TABLE `purchasereturninfo` DROP FOREIGN KEY `supplier_purchasereturninfo`;

ALTER TABLE `purchasereturninfo` DROP FOREIGN KEY `users_purchasereturninfo`;

ALTER TABLE `sales` DROP FOREIGN KEY `iteminformation_sales`;

ALTER TABLE `sales` DROP FOREIGN KEY `salesinfo_sales`;

ALTER TABLE `salesinfo` DROP FOREIGN KEY `customer_salesinfo`;

ALTER TABLE `salesinfo` DROP FOREIGN KEY `users_salesinfo`;

ALTER TABLE `salesretrninfo` DROP FOREIGN KEY `customer_salesretrninfo`;

ALTER TABLE `salesretrninfo` DROP FOREIGN KEY `sales_salesretrninfo`;

ALTER TABLE `salesretrninfo` DROP FOREIGN KEY `salesinfo_salesretrninfo`;

ALTER TABLE `salesreturn` DROP FOREIGN KEY `iteminformation_salesreturn`;

ALTER TABLE `salesreturn` DROP FOREIGN KEY `sales_salesreturn`;

ALTER TABLE `salesreturn` DROP FOREIGN KEY `salesinfo_salesreturn`;

ALTER TABLE `stock` DROP FOREIGN KEY `iteminformation_stock`;

ALTER TABLE `stock` DROP FOREIGN KEY `shelf_stock`;

ALTER TABLE `stock` DROP FOREIGN KEY `warehouse_stock`;

ALTER TABLE `stocktransfer` DROP FOREIGN KEY `iteminformation_stocktransfer`;

ALTER TABLE `stocktransfer` DROP FOREIGN KEY `warehouse_stocktransfer`;

# ---------------------------------------------------------------------- #
# Drop table "collection"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `collection` MODIFY `COLL_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `collection` DROP PRIMARY KEY;

DROP TABLE `collection`;

# ---------------------------------------------------------------------- #
# Drop table "salesreturn"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `salesreturn` MODIFY `ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `salesreturn` DROP PRIMARY KEY;

DROP TABLE `salesreturn`;

# ---------------------------------------------------------------------- #
# Drop table "salesretrninfo"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `salesretrninfo`;

# ---------------------------------------------------------------------- #
# Drop table "sales"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `sales` MODIFY `ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `sales` DROP PRIMARY KEY;

DROP TABLE `sales`;

# ---------------------------------------------------------------------- #
# Drop table "purchase"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchase` MODIFY `ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `purchase` DROP PRIMARY KEY;

DROP TABLE `purchase`;

# ---------------------------------------------------------------------- #
# Drop table "payment"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `payment` MODIFY `PAYM_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `payment` DROP PRIMARY KEY;

DROP TABLE `payment`;

# ---------------------------------------------------------------------- #
# Drop table "badstock"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `badstock` MODIFY `BDS_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `badstock` DROP PRIMARY KEY;

DROP TABLE `badstock`;

# ---------------------------------------------------------------------- #
# Drop table "stocktransfer"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stocktransfer` MODIFY `TRNS_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `stocktransfer` DROP PRIMARY KEY;

DROP TABLE `stocktransfer`;

# ---------------------------------------------------------------------- #
# Drop table "stock"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `stock` MODIFY `STOCK_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `stock` DROP PRIMARY KEY;

DROP TABLE `stock`;

# ---------------------------------------------------------------------- #
# Drop table "salesinfo"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `salesinfo` MODIFY `SALES_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `salesinfo` DROP PRIMARY KEY;

DROP TABLE `salesinfo`;

# ---------------------------------------------------------------------- #
# Drop table "purchasereturninfo"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `purchasereturninfo`;

# ---------------------------------------------------------------------- #
# Drop table "purchasereturn"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchasereturn` MODIFY `ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `purchasereturn` DROP PRIMARY KEY;

DROP TABLE `purchasereturn`;

# ---------------------------------------------------------------------- #
# Drop table "purchaseinfo"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `purchaseinfo` MODIFY `PUCHSE_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `purchaseinfo` DROP PRIMARY KEY;

DROP TABLE `purchaseinfo`;

# ---------------------------------------------------------------------- #
# Drop table "iteminformation"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `iteminformation` MODIFY `ITEM_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `iteminformation` DROP PRIMARY KEY;

DROP TABLE `iteminformation`;

# ---------------------------------------------------------------------- #
# Drop table "attendance"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `attendance`;

# ---------------------------------------------------------------------- #
# Drop table "warehouse"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `warehouse` MODIFY `WarehouseID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `warehouse` DROP PRIMARY KEY;

DROP TABLE `warehouse`;

# ---------------------------------------------------------------------- #
# Drop table "vat"                                                       #
# ---------------------------------------------------------------------- #

DROP TABLE `vat`;

# ---------------------------------------------------------------------- #
# Drop table "users"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `users` MODIFY `USER_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `users` DROP PRIMARY KEY;

DROP TABLE `users`;

# ---------------------------------------------------------------------- #
# Drop table "supplier"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `supplier` MODIFY `SUPP_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `supplier` DROP PRIMARY KEY;

DROP TABLE `supplier`;

# ---------------------------------------------------------------------- #
# Drop table "shelf"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `shelf` MODIFY `SHELF_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `shelf` DROP PRIMARY KEY;

DROP TABLE `shelf`;

# ---------------------------------------------------------------------- #
# Drop table "printbarcode"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `printbarcode` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `printbarcode` DROP PRIMARY KEY;

DROP TABLE `printbarcode`;

# ---------------------------------------------------------------------- #
# Drop table "itemgroup"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `itemgroup` MODIFY `GROUP_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `itemgroup` DROP PRIMARY KEY;

DROP TABLE `itemgroup`;

# ---------------------------------------------------------------------- #
# Drop table "history_store"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `history_store` ALTER COLUMN `timemark` DROP DEFAULT;

ALTER TABLE `history_store` DROP PRIMARY KEY;

DROP TABLE `history_store`;

# ---------------------------------------------------------------------- #
# Drop table "expense"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expense` MODIFY `Expense_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expense` DROP PRIMARY KEY;

DROP TABLE `expense`;

# ---------------------------------------------------------------------- #
# Drop table "expenditureaccount"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `expenditureaccount` MODIFY `EXP_AC_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `expenditureaccount` DROP PRIMARY KEY;

DROP TABLE `expenditureaccount`;

# ---------------------------------------------------------------------- #
# Drop table "employeepayment"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employeepayment` MODIFY `EMP_PAY_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employeepayment` DROP PRIMARY KEY;

DROP TABLE `employeepayment`;

# ---------------------------------------------------------------------- #
# Drop table "employee"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `employee` MODIFY `EMP_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `employee` DROP PRIMARY KEY;

DROP TABLE `employee`;

# ---------------------------------------------------------------------- #
# Drop table "customer"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `customer` MODIFY `CUST_ID` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `customer` DROP PRIMARY KEY;

DROP TABLE `customer`;

# ---------------------------------------------------------------------- #
# Drop table "businessinformation"                                       #
# ---------------------------------------------------------------------- #

DROP TABLE `businessinformation`;

# ---------------------------------------------------------------------- #
# Drop table "barcode"                                                   #
# ---------------------------------------------------------------------- #

DROP TABLE `barcode`;
