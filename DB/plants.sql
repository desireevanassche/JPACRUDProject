-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema plantdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `plantdb` ;

-- -----------------------------------------------------
-- Schema plantdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `plantdb` DEFAULT CHARACTER SET utf8 ;
USE `plantdb` ;

-- -----------------------------------------------------
-- Table `plant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plant` ;

CREATE TABLE IF NOT EXISTS `plant` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `botanical_name` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  `light_requirement` VARCHAR(45) NULL,
  `height_inches` INT NULL,
  `pot_size` INT NULL,
  `price` DECIMAL(45) NULL,
  `care_level` VARCHAR(45) NULL,
  `humidity_requirement` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS plant@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'plant'@'localhost' IDENTIFIED BY 'plant';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'plant'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantdb`;
INSERT INTO `plant` (`Id`, `name`, `botanical_name`, `type`, `light_requirement`, `height_inches`, `pot_size`, `price`, `care_level`, `humidity_requirement`) VALUES (1, 'Snake Plant', 'Dracaena trifasciata', 'Succulent', 'Low Light - Bright Indirect', 36, 6, NULL, 'Beginner', 'Low');
INSERT INTO `plant` (`Id`, `name`, `botanical_name`, `type`, `light_requirement`, `height_inches`, `pot_size`, `price`, `care_level`, `humidity_requirement`) VALUES (2, 'Golden Pothos', 'Epipremnum Aureum', 'Vine', 'Bright Indirect ', NULL, 6, NULL, NULL, 'Moderate');
INSERT INTO `plant` (`Id`, `name`, `botanical_name`, `type`, `light_requirement`, `height_inches`, `pot_size`, `price`, `care_level`, `humidity_requirement`) VALUES (3, 'ZZ Plant', 'Zamioculcas Zamiifolia', 'Succulent', 'Low- Bright Indirect ', NULL, 6, 16.98, 'Beginner', 'Low');

COMMIT;

