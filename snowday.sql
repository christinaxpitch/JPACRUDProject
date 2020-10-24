-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema snowdaydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `snowdaydb` ;

-- -----------------------------------------------------
-- Schema snowdaydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `snowdaydb` DEFAULT CHARACTER SET utf8 ;
USE `snowdaydb` ;

-- -----------------------------------------------------
-- Table `mountains`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mountains` ;

CREATE TABLE IF NOT EXISTS `mountains` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO snowdayuser@localhost;
 DROP USER snowdayuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'snowdayuser'@'localhost' IDENTIFIED BY 'snowdayuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'snowdayuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mountains`
-- -----------------------------------------------------
START TRANSACTION;
USE `snowdaydb`;
INSERT INTO `mountains` (`id`, `name`) VALUES (1, 'Arapahoe Basin');

COMMIT;
