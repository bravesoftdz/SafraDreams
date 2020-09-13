-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema safradreams
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `safradreams` DEFAULT CHARACTER SET utf8 ;
USE `safradreams` ;

-- -----------------------------------------------------
-- Table `safradreams`.`Sonho`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `safradreams`.`Sonho` ;

CREATE TABLE IF NOT EXISTS `safradreams`.`Sonho` (
  `idSonho` INT NOT NULL AUTO_INCREMENT,
  `SonhoNome` VARCHAR(45) NULL,
  `SonhoSaldoTotal` VARCHAR(45) NULL,
  `SonhoRendimento` VARCHAR(45) NULL,
  `SonhoPercent` VARCHAR(45) NULL,
  `SonhoMeta` VARCHAR(45) NULL,
  `SonhoAplicacao` VARCHAR(45) NULL,
  `SonhoSaque` VARCHAR(45) NULL,
  `SonhoVencimento` VARCHAR(45) NULL,
  PRIMARY KEY (`idSonho`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `safradreams`.`SonhoLista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `safradreams`.`SonhoLista` ;

CREATE TABLE IF NOT EXISTS `safradreams`.`SonhoLista` (
  `idSonhoLista` INT NOT NULL AUTO_INCREMENT,
  `idCliente` VARCHAR(45) NOT NULL,
  `idSonho` INT NOT NULL,
  `SonhoListaSaldo` VARCHAR(45) NULL,
  PRIMARY KEY (`idSonhoLista`),
  INDEX `fk_SonhoLista_Sonho1_idx` (`idSonho` ASC) VISIBLE,
  CONSTRAINT `fk_SonhoLista_Sonho1`
    FOREIGN KEY (`idSonho`)
    REFERENCES `safradreams`.`Sonho` (`idSonho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `safradreams`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `safradreams`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `safradreams`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `ClienteNome` VARCHAR(45) NULL,
  `ClienteSenha` VARCHAR(45) NULL,
  `ClienteTelefone` VARCHAR(45) NULL,
  `ClienteRg` VARCHAR(45) NULL,
  `ClienteEnd` VARCHAR(45) NULL,
  `ClienteEmail` VARCHAR(45) NULL,
  `idSonhoLista` INT NOT NULL,
  PRIMARY KEY (`idCliente`, `idSonhoLista`),
  INDEX `fk_Cliente_SonhoLista1_idx` (`idSonhoLista` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_SonhoLista1`
    FOREIGN KEY (`idSonhoLista`)
    REFERENCES `safradreams`.`SonhoLista` (`idSonhoLista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `safradreams`.`Saldo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `safradreams`.`Saldo` ;

CREATE TABLE IF NOT EXISTS `safradreams`.`Saldo` (
  `idSaldo` INT NOT NULL AUTO_INCREMENT,
  `SaldoTotal` DOUBLE NULL,
  `idCliente` INT NOT NULL,
  `SaldoRendimento` VARCHAR(45) NULL,
  `idSonho` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSaldo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `safradreams`.`Extrato`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `safradreams`.`Extrato` ;

CREATE TABLE IF NOT EXISTS `safradreams`.`Extrato` (
  `idExtrato` INT NOT NULL AUTO_INCREMENT,
  `ExtratoData` VARCHAR(45) NULL,
  `ExtratoHora` VARCHAR(45) NULL,
  `ExtratoMovimentacao` VARCHAR(45) NULL,
  `ExtratoTags` VARCHAR(45) NULL,
  PRIMARY KEY (`idExtrato`),
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idExtrato`)
    REFERENCES `safradreams`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
