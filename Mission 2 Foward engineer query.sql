-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema M&G
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema M&G
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `M&G` DEFAULT CHARACTER SET utf8 ;
USE `M&G` ;

-- -----------------------------------------------------
-- Table `M&G`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `M&G`.`Clients` (
  `ClientID` INT NOT NULL AUTO_INCREMENT,
  `FullName` VARCHAR(255) NOT NULL,
  `ContactNumber` INT NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ClientID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `M&G`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `M&G`.`Products` (
  `ProductID` INT NOT NULL,
  `ProductsName` VARCHAR(255) NOT NULL,
  `BuyPrice` DECIMAL(10,2) NOT NULL,
  `SellPrice` DECIMAL(10,2) NOT NULL,
  `AmountInStock` INT NOT NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `M&G`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `M&G`.`Orders` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATE NULL,
  `ClientID` INT NULL,
  `ProductID` INT NULL,
  `Quantity` INT NULL,
  `TotalCost` DECIMAL(10,2) NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `productid_fk_idx` (`ProductID` ASC) VISIBLE,
  INDEX `clientid_fk_idx` (`ClientID` ASC) VISIBLE,
  CONSTRAINT `productid_fk`
    FOREIGN KEY (`ProductID`)
    REFERENCES `M&G`.`Products` (`ProductID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `clientid_fk`
    FOREIGN KEY (`ClientID`)
    REFERENCES `M&G`.`Clients` (`ClientID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `M&G`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `M&G`.`Address` (
  `AddressID` INT NOT NULL,
  `Street` VARCHAR(255) NOT NULL,
  `Zipcode` VARCHAR(255) NULL,
  `State` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`AddressID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `M&G`.`Delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `M&G`.`Delivery` (
  `DeliveryID` INT NOT NULL,
  `DeliveryDate` DATE NOT NULL,
  `DeliveryStatus` VARCHAR(255) NULL,
  `AddressID` INT NULL,
  `Comment` VARCHAR(255) NULL,
  `OrderID` INT NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  INDEX `address_fk_idx` (`AddressID` ASC) VISIBLE,
  INDEX `orderid_fk_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `address_fk`
    FOREIGN KEY (`AddressID`)
    REFERENCES `M&G`.`Address` (`AddressID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `orderid_fk`
    FOREIGN KEY (`OrderID`)
    REFERENCES `M&G`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
