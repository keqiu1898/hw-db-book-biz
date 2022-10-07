-- --------------------------------------
--  Ke Qiu, Part 5 
-- --------------------------------------


DROP DATABASE IF EXISTS `book industry`;
CREATE DATABASE IF NOT EXISTS `book industry`; 
USE `book industry`;
SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  Entities and Their Properties
-- --------------------------------------
-- --------------------------------------
--  TABLE Authors
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID` 		int NOT NULL AUTO_INCREMENT, 
    `FirstName` 		varchar (100) NULL,
    `LastName` varchar (100) NULL,
	`Gender` 	varchar (100) NULL,
  	PRIMARY KEY (`AuthorID`),	
    INDEX `FirstName` (`FirstName` ASC),
	INDEX `LastName` (`LastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;



-- --------------------------------------
--  TABLE Publishers
-- --------------------------------------

CREATE TABLE `Publishers` (
    `PublisherID` 		int NOT NULL AUTO_INCREMENT, 
	`PublisherName` 		varchar (100) NOT NULL,
	`ZipCode` 		varchar (100) NULL,
  	PRIMARY KEY (`PublisherID`),
	INDEX `PublisherName` (`PublisherName` ASC),
	INDEX `ZipCode` (`ZipCode` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;





-- --------------------------------------
--  TABLE Books
-- --------------------------------------
CREATE TABLE `Books` (
    `ISBN` 		varchar (100) NOT NULL,
	`BookName` 		varchar (100) NULL, 
	`PublisherID` 				int NULL AUTO_INCREMENT, 
		
  	PRIMARY KEY (`ISBN`),
	FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,	
    INDEX `ISBN` (`ISBN` ASC),
	INDEX `BookName` (`BookName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;



-- --------------------------------------
--  TABLE Genres
-- --------------------------------------
CREATE TABLE `Genres` (
    `GenreID` 		int NOT NULL AUTO_INCREMENT, 
	`Genre` 			varchar (100) NULL,		
    	
    PRIMARY KEY (`GenreID`),	
    INDEX `Genre` (`Genre` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;






-- --------------------------------------
--  TABLE Editors
-- --------------------------------------

CREATE TABLE `Editors` (
    `EditorID` 		int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (100) NOT NULL,
    `LastName` 		varchar (100) NOT NULL,
	`Gender` 		varchar (100) NULL,
  	PRIMARY KEY (`EditorID`),	
	INDEX `LastName` (`LastName` ASC),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `Gender` (`Gender` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;








-- --------------------------------------
--  TABLE Customers
-- --------------------------------------

CREATE TABLE `Customers` (
	`CustomerID` 		int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (100) NULL ,
	`LastName` 			varchar (100) NULL ,
	`Email` 			varchar (30) NULL ,
	`Phone` 		    varchar (24) NULL ,	
	`City` 				varchar (15) NULL ,
	`Region` 			varchar (15) NULL ,
	`Country` 			varchar (15) NULL ,    
  	PRIMARY KEY (`CustomerID`),	
	INDEX `CustomerID` (`CustomerID` ASC),
	INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC),
	INDEX `Phone` (`Phone` ASC),
    INDEX `Email` (`Email` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;



-- --------------------------------------
--  TABLE Orders
-- --------------------------------------

CREATE TABLE `Orders` (
	`OrderID` 		int NOT NULL AUTO_INCREMENT,
	`Price` 			float NULL,	
	`OrderDate`   date NULL ,	
    `CustomerID`   int NULL,

  	PRIMARY KEY (`OrderID`),	
	INDEX `OrderID` (`OrderID` ASC),
    INDEX `OrderDate` (`OrderDate` ASC),
    INDEX `Price` (`Price` ASC),
	FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION    
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;




-- --------------------------------------
--  TABLE BooksAuthors: N-N
-- --------------------------------------
CREATE TABLE `BooksAuthors` (
	`AuthorID` 		int NOT NULL AUTO_INCREMENT,
    `ISBN` 				varchar (100) NOT NULL,
	`Royalty` 		float NULL,		   
	FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	INDEX `Royalty` (`Royalty` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;







-- --------------------------------------
--  TABLE BooksEditors
-- --------------------------------------
CREATE TABLE `BooksEditors` (
	`EditorID` 		int NOT NULL AUTO_INCREMENT,
	`ISBN` 				varchar (100) NOT NULL,
	

	FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
     
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;







-- --------------------------------------
--  Table BooksOrders: N-N
-- --------------------------------------

CREATE TABLE `BooksOrders` (
	`OrderID` 		int NOT NULL AUTO_INCREMENT,
	`ISBN` 				varchar (100) NOT NULL,
	

	FOREIGN KEY (`OrderID`) REFERENCES `Orders`(`OrderID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,   
	FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
     
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;




-- --------------------------------------
--  TABLE BooksGenres: N-N
-- --------------------------------------
CREATE TABLE `BooksGenres` (
	`ISBN` 				varchar (100) NOT NULL,
    `GenreID` 			Int NOT NULL,
	   
	FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (`GenreID`) REFERENCES `Genres` (`GenreID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
     
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;



 