# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          pointofsaledb.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-24 11:22                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "barcode"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `barcode` (
    `Barcode` BIGINT(20)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "businessinformation"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `businessinformation` (
    `CompanyName` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `LegalName` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PhoneNo` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Email` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `WebSite` VARCHAR(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Slogan` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer` (
    `CUST_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `CustomerName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PhoneNo` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `OpeningDate` DATE,
    `Balance` FLOAT,
    `PhotoFileName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`CUST_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee` (
    `EMP_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `EmployeeName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Designation` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PhoneNo` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `OpeningDate` DATE,
    `Balance` FLOAT,
    `PhotoFileName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`EMP_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employeepayment"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `employeepayment` (
    `EMP_PAY_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `EMP_ID` INTEGER(11),
    `PaidDate` DATE,
    `Description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PaidAmount` FLOAT,
    PRIMARY KEY (`EMP_PAY_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expenditureaccount"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `expenditureaccount` (
    `EXP_AC_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ExpenditureAccount` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`EXP_AC_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "expense"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `expense` (
    `Expense_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `EXP_AC_ID` INTEGER(11),
    `PaidDate` DATE,
    `Description` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Amount` FLOAT,
    PRIMARY KEY (`Expense_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "history_store"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `history_store` (
    `timemark` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `table_name` TINYTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pk_date_src` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `pk_date_dest` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `record_state` INTEGER(11) NOT NULL,
    PRIMARY KEY (`table_name`, `pk_date_dest`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "itemgroup"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `itemgroup` (
    `GROUP_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `GROUP_NAME` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`GROUP_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "printbarcode"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `printbarcode` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `COMPANY_NAME` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `BARCODE_1` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PRODUCT_NAME_1` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PRICE_1` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `BARCODE_2` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PRODUCT_NAME_2` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PRICE_2` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`id`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shelf"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `shelf` (
    `SHELF_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `SHELF_NAME` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`SHELF_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "supplier"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `supplier` (
    `SUPP_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `SupplierName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Address` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `PhoneNo` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `OpeningDate` DATE,
    `Balance` FLOAT,
    `PhotoFileName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`SUPP_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `users` (
    `USER_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `FullName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `UserName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Privilege` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `RegDate` DATE,
    `Password` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Can_Add` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Can_Edit` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Can_Delete` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Can_Print` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`USER_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "vat"                                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `vat` (
    `Vat` FLOAT
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "warehouse"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `warehouse` (
    `WarehouseID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `WarehouseName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `WarehouseAddress` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`WarehouseID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "attendance"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `attendance` (
    `EMP_ID` INTEGER(11),
    `AttendanceDate` DATE,
    `Present` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Absent` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Remarks` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "iteminformation"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `iteminformation` (
    `ITEM_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ItemName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `UnitOfMeasure` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Batch` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `GROUP_ID` INTEGER(11),
    `Barcode` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Cost` FLOAT,
    `Price` FLOAT,
    `ReorderPoint` FLOAT,
    `VAT_Applicable` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `WarehouseID` INTEGER(11),
    `PhotoFileName` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`ITEM_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchaseinfo"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchaseinfo` (
    `PUCHSE_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `PurchaseDate` DATE,
    `ItemPrice` FLOAT,
    `Discount` FLOAT,
    `GrandTotal` FLOAT,
    `Due` FLOAT,
    `SUPP_ID` INTEGER(11),
    `CardPay` FLOAT,
    `CashPay` FLOAT,
    `USER_ID` INTEGER(11),
    PRIMARY KEY (`PUCHSE_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchasereturn"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchasereturn` (
    `ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `PUCHSE_ID` INTEGER(11),
    `ITEM_ID` INTEGER(11),
    `WarehouseID` INTEGER(11),
    `QTY` FLOAT,
    `TotalPrice` FLOAT,
    PRIMARY KEY (`ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchasereturninfo"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchasereturninfo` (
    `PUCHSE_ID` INTEGER(11),
    `PurchaseReturnDate` DATE,
    `PurchaseReturnTime` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `EntreBy` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Total` FLOAT,
    `CardPay` FLOAT,
    `CashPay` FLOAT,
    `SUPP_ID` INTEGER(11),
    `USER_ID` INTEGER(11)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "salesinfo"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `salesinfo` (
    `SALES_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `USER_ID` INTEGER(11),
    `CUST_ID` INTEGER(11),
    `SalesDate` DATE,
    `SalesTime` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `ItemPrice` FLOAT,
    `VAT` FLOAT,
    `Discount` FLOAT,
    `GrandTotal` FLOAT,
    `EntreBy` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `CashPay` FLOAT,
    `CardPay` FLOAT,
    `Due` FLOAT,
    `Comment` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Terminal` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `TrnsNo` VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `ShippingName` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `ShippingAddress` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `ShippingContact` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`SALES_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "stock"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `stock` (
    `STOCK_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `ITEM_ID` INTEGER(11),
    `Quantity` FLOAT,
    `ExpiryDate` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `WarehouseID` INTEGER(11),
    `SHELF_ID` INTEGER(11),
    `Expiry` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`STOCK_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "stocktransfer"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `stocktransfer` (
    `TRNS_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `TransferDate` DATE,
    `ITEM_ID` INTEGER(11),
    `FromWarehouseID` INTEGER(11),
    `ToWarehouseID` INTEGER(11),
    `Quantity` FLOAT,
    `Reason` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`TRNS_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "badstock"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `badstock` (
    `BDS_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `WarehouseID` INTEGER(11),
    `ITEM_ID` INTEGER(11),
    `Quantity` FLOAT,
    `SoldDate` DATE,
    `Reason` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`BDS_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "payment"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment` (
    `PAYM_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `PUCHSE_ID` INTEGER(11),
    `SUPP_ID` INTEGER(11),
    `EntryDate` DATE,
    `EnteredBy` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Cash` FLOAT,
    `Card` FLOAT,
    PRIMARY KEY (`PAYM_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "purchase"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `purchase` (
    `ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `PUCHSE_ID` INTEGER(11),
    `ITEM_ID` INTEGER(11),
    `WarehouseID` INTEGER(11),
    `QTY` FLOAT,
    `TotalPrice` FLOAT,
    `ExpDate` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Stock` VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `SoldDate` FLOAT,
    PRIMARY KEY (`ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "sales"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `sales` (
    `ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `SALES_ID` INTEGER(11),
    `Sales_Date` DATE,
    `ITEM_ID` INTEGER(11),
    `QTY` FLOAT,
    `Price` FLOAT,
    `TotalPrice` FLOAT,
    `Cost` FLOAT,
    `TotalCost` FLOAT,
    `Vat` FLOAT,
    `TotalVat` FLOAT,
    `ExprDate` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Terminal` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "salesretrninfo"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `salesretrninfo` (
    `SALES_ID` INTEGER(11),
    `SalesReturnDate` DATE,
    `SalesReturnTime` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Total` FLOAT,
    `EntreBy` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `CashPay` FLOAT,
    `CardPay` FLOAT,
    `CUST_ID` INTEGER(11)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "salesreturn"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `salesreturn` (
    `ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `SALES_ID` INTEGER(11),
    `SalesReturn_Date` DATE,
    `ITEM_ID` INTEGER(11),
    `QTY` FLOAT,
    `Price` FLOAT,
    `TotalPrice` FLOAT,
    `Cost` FLOAT,
    `TotalCost` FLOAT,
    `Vat` FLOAT,
    `TotalVat` FLOAT,
    `ExprDate` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    PRIMARY KEY (`ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "collection"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `collection` (
    `COLL_ID` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `SALES_ID` INTEGER(11),
    `CUST_ID` INTEGER(11),
    `EntryDate` DATE,
    `EnteredBy` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `Cash` FLOAT,
    `Card` FLOAT,
    PRIMARY KEY (`COLL_ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `attendance` ADD CONSTRAINT `employee_attendance` 
    FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`);

ALTER TABLE `badstock` ADD CONSTRAINT `iteminformation_badstock` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `badstock` ADD CONSTRAINT `warehouse_badstock` 
    FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

ALTER TABLE `collection` ADD CONSTRAINT `customer_collection` 
    FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

ALTER TABLE `collection` ADD CONSTRAINT `sales_collection` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `sales` (`ID`);

ALTER TABLE `collection` ADD CONSTRAINT `salesinfo_collection` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `salesinfo` (`SALES_ID`);

ALTER TABLE `employeepayment` ADD CONSTRAINT `employee_employeepayment` 
    FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`);

ALTER TABLE `expense` ADD CONSTRAINT `expenditureaccount_expense` 
    FOREIGN KEY (`EXP_AC_ID`) REFERENCES `expenditureaccount` (`EXP_AC_ID`);

ALTER TABLE `iteminformation` ADD CONSTRAINT `itemgroup_iteminformation` 
    FOREIGN KEY (`GROUP_ID`) REFERENCES `itemgroup` (`GROUP_ID`);

ALTER TABLE `iteminformation` ADD CONSTRAINT `warehouse_iteminformation` 
    FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

ALTER TABLE `payment` ADD CONSTRAINT `purchaseinfo_payment` 
    FOREIGN KEY (`PUCHSE_ID`) REFERENCES `purchaseinfo` (`PUCHSE_ID`);

ALTER TABLE `payment` ADD CONSTRAINT `supplier_payment` 
    FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`);

ALTER TABLE `purchase` ADD CONSTRAINT `iteminformation_purchase` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `purchase` ADD CONSTRAINT `purchaseinfo_purchase` 
    FOREIGN KEY (`PUCHSE_ID`) REFERENCES `purchaseinfo` (`PUCHSE_ID`);

ALTER TABLE `purchase` ADD CONSTRAINT `warehouse_purchase` 
    FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

ALTER TABLE `purchaseinfo` ADD CONSTRAINT `supplier_purchaseinfo` 
    FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`);

ALTER TABLE `purchaseinfo` ADD CONSTRAINT `users_purchaseinfo` 
    FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

ALTER TABLE `purchasereturn` ADD CONSTRAINT `iteminformation_purchasereturn` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `purchasereturn` ADD CONSTRAINT `purchaseinfo_purchasereturn` 
    FOREIGN KEY (`PUCHSE_ID`) REFERENCES `purchaseinfo` (`PUCHSE_ID`);

ALTER TABLE `purchasereturn` ADD CONSTRAINT `warehouse_purchasereturn` 
    FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

ALTER TABLE `purchasereturninfo` ADD CONSTRAINT `purchaseinfo_purchasereturninfo` 
    FOREIGN KEY (`PUCHSE_ID`) REFERENCES `purchaseinfo` (`PUCHSE_ID`);

ALTER TABLE `purchasereturninfo` ADD CONSTRAINT `supplier_purchasereturninfo` 
    FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`);

ALTER TABLE `purchasereturninfo` ADD CONSTRAINT `users_purchasereturninfo` 
    FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

ALTER TABLE `sales` ADD CONSTRAINT `iteminformation_sales` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `sales` ADD CONSTRAINT `salesinfo_sales` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `salesinfo` (`SALES_ID`);

ALTER TABLE `salesinfo` ADD CONSTRAINT `customer_salesinfo` 
    FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

ALTER TABLE `salesinfo` ADD CONSTRAINT `users_salesinfo` 
    FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

ALTER TABLE `salesretrninfo` ADD CONSTRAINT `customer_salesretrninfo` 
    FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

ALTER TABLE `salesretrninfo` ADD CONSTRAINT `sales_salesretrninfo` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `sales` (`ID`);

ALTER TABLE `salesretrninfo` ADD CONSTRAINT `salesinfo_salesretrninfo` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `salesinfo` (`SALES_ID`);

ALTER TABLE `salesreturn` ADD CONSTRAINT `iteminformation_salesreturn` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `salesreturn` ADD CONSTRAINT `sales_salesreturn` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `sales` (`ID`);

ALTER TABLE `salesreturn` ADD CONSTRAINT `salesinfo_salesreturn` 
    FOREIGN KEY (`SALES_ID`) REFERENCES `salesinfo` (`SALES_ID`);

ALTER TABLE `stock` ADD CONSTRAINT `iteminformation_stock` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `stock` ADD CONSTRAINT `shelf_stock` 
    FOREIGN KEY (`SHELF_ID`) REFERENCES `shelf` (`SHELF_ID`);

ALTER TABLE `stock` ADD CONSTRAINT `warehouse_stock` 
    FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

ALTER TABLE `stocktransfer` ADD CONSTRAINT `iteminformation_stocktransfer` 
    FOREIGN KEY (`ITEM_ID`) REFERENCES `iteminformation` (`ITEM_ID`);

ALTER TABLE `stocktransfer` ADD CONSTRAINT `warehouse_stocktransfer` 
    FOREIGN KEY (`FromWarehouseID`) REFERENCES `warehouse` (`WarehouseID`);
