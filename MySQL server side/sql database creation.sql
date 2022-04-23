-- -----------------------------------------------------
-- Schema napa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `napa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `napa` ;

-- -----------------------------------------------------
-- Table `napa`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `napa`.`country` ;

CREATE TABLE IF NOT EXISTS `napa`.`country` (
  `country_id` INT NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `napa`.`port`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `napa`.`port` ;

CREATE TABLE IF NOT EXISTS `napa`.`port` (
  `port_id` INT NOT NULL AUTO_INCREMENT,
  `port_name` VARCHAR(50) NOT NULL,
  `port_country_id` INT NOT NULL,
  PRIMARY KEY (`port_id`),
  INDEX `fk_Port_Country_idx` (`port_country_id` ASC) VISIBLE,
  CONSTRAINT `fk_Port_Country`
    FOREIGN KEY (`port_country_id`)
    REFERENCES `napa`.`country` (`country_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `napa`.`ship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `napa`.`ship` ;

CREATE TABLE IF NOT EXISTS `napa`.`ship` (
  `ship_id` INT NOT NULL AUTO_INCREMENT,
  `ship_name` VARCHAR(45) NOT NULL,
  `ship_speed_max` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ship_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `napa`.`test`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `napa`.`test` ;

CREATE TABLE IF NOT EXISTS `napa`.`test` (
  `id_test` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `napa`.`voyage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `napa`.`voyage` ;

CREATE TABLE IF NOT EXISTS `napa`.`voyage` (
  `voyage_ship_id` INT NOT NULL,
  `voyage_departure_port` INT NOT NULL,
  `voyage_start` DATE NOT NULL,
  `voyage_arrival_port` INT NOT NULL,
  `voyage_end` DATE NOT NULL,
  INDEX `fk_Voyage_Port1_idx` (`voyage_departure_port` ASC) VISIBLE,
  INDEX `fk_Voyage_Port2_idx` (`voyage_arrival_port` ASC) VISIBLE,
  INDEX `fk_voyage_ship1_idx` (`voyage_ship_id` ASC) VISIBLE,
  CONSTRAINT `fk_Voyage_Port1`
    FOREIGN KEY (`voyage_departure_port`)
    REFERENCES `napa`.`port` (`port_id`),
  CONSTRAINT `fk_Voyage_Port2`
    FOREIGN KEY (`voyage_arrival_port`)
    REFERENCES `napa`.`port` (`port_id`),
  CONSTRAINT `fk_voyage_ship1`
    FOREIGN KEY (`voyage_ship_id`)
    REFERENCES `napa`.`ship` (`ship_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;