# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ecommercedb.dez                                 #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-06-23 20:58                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "discount"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `discount` (
    `DiscountID` INTEGER(11) NOT NULL,
    `DiscountPercent` DECIMAL(2,2),
    `Valid` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N',
    PRIMARY KEY (`DiscountID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "item"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `item` (
    `ItemID` INTEGER(11) NOT NULL,
    `Quantity` INTEGER(11) NOT NULL,
    `Price` DECIMAL(9,2) NOT NULL,
    `ItemType` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Seller` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ItemDesc` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `Category` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`ItemID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "person"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `person` (
    `ID` INTEGER(11) NOT NULL,
    `Email` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Named` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `DateofBirth` DATE NOT NULL,
    `Phone` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `DateJoined` DATE NOT NULL,
    `IsEmployee` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N',
    PRIMARY KEY (`ID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer` (
    `CustomerID` INTEGER(11) NOT NULL,
    `Userpass` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `HasMembership` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N',
    PRIMARY KEY (`CustomerID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "employee"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `employee` (
    `ID` INTEGER(11) NOT NULL,
    `EmployeeEmail` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Supervisor` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `Userpass` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`EmployeeEmail`)
)
ENGINE = INNODB;

CREATE INDEX `Supervisor` ON `employee` (`Supervisor`);

CREATE INDEX `ID` ON `employee` (`ID`);

# ---------------------------------------------------------------------- #
# Add table "orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `orders` (
    `OrderNum` INTEGER(11) NOT NULL,
    `CustomerID` INTEGER(11),
    `OrderDate` DATE NOT NULL,
    `Completed` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N',
    `OrderName` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `OrderEmail` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`OrderNum`)
)
ENGINE = INNODB;

CREATE INDEX `CustomerID` ON `orders` (`CustomerID`);

# ---------------------------------------------------------------------- #
# Add table "payment"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `payment` (
    `OrderID` INTEGER(11) NOT NULL,
    `CardName` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardNum` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardComp` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardExp` DATE NOT NULL,
    `Address1` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Address2` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `State` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Country` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Zip` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`OrderID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "reviews"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `reviews` (
    `CustomerID` INTEGER(11) NOT NULL,
    `ItemID` INTEGER(11) NOT NULL,
    `Ratings` INTEGER(11) NOT NULL,
    `Comments` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`CustomerID`, `ItemID`)
)
ENGINE = INNODB;

CREATE INDEX `ItemID` ON `reviews` (`ItemID`);

# ---------------------------------------------------------------------- #
# Add table "shipment"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `shipment` (
    `OrderID` INTEGER(11) NOT NULL,
    `Address1` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Address2` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `State` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Country` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Zip` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Fee` INTEGER(11) NOT NULL,
    `Company` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ShipName` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`OrderID`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "shoppingcart"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `shoppingcart` (
    `CustomerID` INTEGER(11) NOT NULL,
    `ItemID` INTEGER(11) NOT NULL,
    `Quantity` INTEGER(11) NOT NULL,
    PRIMARY KEY (`CustomerID`, `ItemID`)
)
ENGINE = INNODB;

CREATE INDEX `ItemID` ON `shoppingcart` (`ItemID`);

# ---------------------------------------------------------------------- #
# Add table "wishlist"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `wishlist` (
    `CustomerID` INTEGER(11) NOT NULL,
    `ItemID` INTEGER(11) NOT NULL,
    PRIMARY KEY (`CustomerID`, `ItemID`)
)
ENGINE = INNODB;

CREATE INDEX `ItemID` ON `wishlist` (`ItemID`);

# ---------------------------------------------------------------------- #
# Add table "addresses"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `addresses` (
    `CustomerID` INTEGER(11) NOT NULL,
    `Address1` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Address2` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    `State` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Country` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Zip` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`CustomerID`, `Address1`, `State`, `Country`, `Zip`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "cards"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `cards` (
    `CustomerID` INTEGER(11) NOT NULL,
    `CardName` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardNum` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardComp` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `CardExp` DATE NOT NULL,
    PRIMARY KEY (`CustomerID`, `CardName`, `CardNum`, `CardComp`, `CardExp`)
)
ENGINE = INNODB;

# ---------------------------------------------------------------------- #
# Add table "ordereditems"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ordereditems` (
    `OrderID` INTEGER(11) NOT NULL,
    `ItemID` INTEGER(11) NOT NULL,
    `Quantity` INTEGER(11),
    PRIMARY KEY (`OrderID`, `ItemID`)
)
ENGINE = INNODB;

CREATE INDEX `ItemID` ON `ordereditems` (`ItemID`);

# ---------------------------------------------------------------------- #
# Add table "returnment"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `returnment` (
    `OrderID` INTEGER(11) NOT NULL,
    `ItemID` INTEGER(11) NOT NULL,
    `Quantity` INTEGER(11),
    `Comments` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Approval` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    PRIMARY KEY (`OrderID`, `ItemID`)
)
ENGINE = INNODB;

CREATE INDEX `ItemID` ON `returnment` (`ItemID`);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `addresses` ADD CONSTRAINT `addresses_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `cards` ADD CONSTRAINT `cards_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `customer` ADD CONSTRAINT `customer_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `person` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `employee` ADD CONSTRAINT `employee_ibfk_1` 
    FOREIGN KEY (`Supervisor`) REFERENCES `employee` (`EmployeeEmail`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `employee` ADD CONSTRAINT `employee_ibfk_2` 
    FOREIGN KEY (`ID`) REFERENCES `person` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `ordereditems` ADD CONSTRAINT `ordereditems_ibfk_1` 
    FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderNum`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `ordereditems` ADD CONSTRAINT `ordereditems_ibfk_2` 
    FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `payment` ADD CONSTRAINT `payment_ibfk_1` 
    FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderNum`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `returnment` ADD CONSTRAINT `returnment_ibfk_1` 
    FOREIGN KEY (`OrderID`) REFERENCES `ordereditems` (`OrderID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `returnment` ADD CONSTRAINT `returnment_ibfk_2` 
    FOREIGN KEY (`ItemID`) REFERENCES `ordereditems` (`ItemID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `reviews` ADD CONSTRAINT `reviews_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `reviews` ADD CONSTRAINT `reviews_ibfk_2` 
    FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `shipment` ADD CONSTRAINT `shipment_ibfk_1` 
    FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderNum`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `shoppingcart` ADD CONSTRAINT `shoppingcart_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `shoppingcart` ADD CONSTRAINT `shoppingcart_ibfk_2` 
    FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wishlist` ADD CONSTRAINT `wishlist_ibfk_1` 
    FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wishlist` ADD CONSTRAINT `wishlist_ibfk_2` 
    FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE;
