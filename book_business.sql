-- --------------------------------------
--  ASSUMPTIONS
-- ALL EDITORS ARE US-BASED
-- --------------------------------------
DROP DATABASE IF EXISTS `Book_Business`;
CREATE DATABASE IF NOT EXISTS `Book_Business`; 
USE `Book_Business`;
SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  TABLE AUTHOR
-- --------------------------------------
CREATE TABLE `Authors` (
	`AuthorID` 			int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (20) NOT NULL ,
	`LastName` 			varchar (20) NOT NULL ,
    `Country` 			varchar (20) NOT NULL ,
  	PRIMARY KEY (`AuthorID`),	
	INDEX `AuthorID` (`AuthorID` ASC),
	INDEX `LastName` (`LastName` ASC),
	INDEX `FirstName` (`FirstName` ASC)	
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE EDITORS
-- --------------------------------------
CREATE TABLE `Editors` (
    `EditorID`              int NOT NULL AUTO_INCREMENT,
    `EditorName`          	varchar (60) NULL,
    `City`   				varchar (30) NULL,
    `State`   				varchar (30) NULL,
    PRIMARY KEY (`EditorID`), 
    INDEX `EditorID` (`EditorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE PUBLISHERS
-- --------------------------------------
CREATE TABLE `Publishers` (
    `PublisherID`            int NOT NULL AUTO_INCREMENT,
    `PublisherName`          varchar (60) NULL,
    `City`   				 varchar (30) NULL,
    `Region`   				 varchar (30) NULL,
    `Country`                varchar (30) NULL,
    PRIMARY KEY (`PublisherID`), 
    INDEX `PublisherID` (`PublisherID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BOOKS
-- --------------------------------------
CREATE TABLE `Books` (
	`BookID` 		    int NOT NULL AUTO_INCREMENT,
	`BookTitle` 		varchar (40) NOT NULL,
    `Genre` 		    varchar (20) NULL,
	`PublisherID` 		int NULL ,
	`PublicationYear` 	int(4) NULL,
    `Price`				DECIMAL(10,2) NULL,
  	PRIMARY KEY (`BookID`),	
	FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION, 
	INDEX `BookID` (`BookID` ASC),
	INDEX `BookTitle` (`BookTitle` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE CUSTOMERS
-- --------------------------------------
CREATE TABLE `Customers` (
    `CustomerID`        int NOT NULL AUTO_INCREMENT,
    `CustomerName` 		varchar (40) NOT NULL,
    PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE ORDERS
-- --------------------------------------
CREATE TABLE `Orders` (
    `OrderID` 			int NOT NULL AUTO_INCREMENT,
    `CustomerID`        int NOT NULL,
    PRIMARY KEY (`OrderID`),
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION    
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BOOKAUTHORS
-- --------------------------------------
CREATE TABLE `BookAuthors` (
    `BookID`          int NOT NULL,
    `AuthorID`           int NOT NULL,
    `Royalty`         decimal(2,2) NULL,
    PRIMARY KEY (`BookID`,`AuthorID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BOOKEDITORS
-- --------------------------------------
CREATE TABLE `BookEditors` (
    `BookID`          int NOT NULL,
    `EditorID`           int NOT NULL,
    PRIMARY KEY (`BookID`,`EditorID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE ORDERDETAILS
-- --------------------------------------
CREATE TABLE `OrderDetails` (
    `OrderID`          int NOT NULL,
    `BookID`           int NOT NULL,
    `Quantity`         int NULL,
    `OrderDate`         datetime NOT NULL UNIQUE,
    PRIMARY KEY (`OrderID`,`BookID`),
    FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;