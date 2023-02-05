-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cafesystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cafesystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cafesystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cafesystem` ;

-- -----------------------------------------------------
-- Table `cafesystem`.`bill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafesystem`.`bill` (
  `id` INT NOT NULL,
  `contactnumber` VARCHAR(255) NULL DEFAULT NULL,
  `createdby` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `paymentmethod` VARCHAR(255) NULL DEFAULT NULL,
  `productdetails` JSON NULL DEFAULT NULL,
  `total` INT NULL DEFAULT NULL,
  `uuid` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cafesystem`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafesystem`.`category` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cafesystem`.`hibernate_sequence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafesystem`.`hibernate_sequence` (
  `next_val` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cafesystem`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafesystem`.`product` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `category_fk` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK275nu1ncohhfur6qhxiwrm3go` (`category_fk` ASC) VISIBLE,
  CONSTRAINT `FK275nu1ncohhfur6qhxiwrm3go`
    FOREIGN KEY (`category_fk`)
    REFERENCES `cafesystem`.`category` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cafesystem`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafesystem`.`user` (
  `id` INT NOT NULL,
  `contact_number` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `role` VARCHAR(255) NULL DEFAULT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
