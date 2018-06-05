-- MySQL Script generated by MySQL Workbench
-- Ter 05 Jun 2018 08:18:32 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema syscomentario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema syscomentario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `syscomentario` DEFAULT CHARACTER SET utf8 ;
USE `syscomentario` ;

-- -----------------------------------------------------
-- Table `syscomentario`.`postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `syscomentario`.`postagem` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `subtitulo` VARCHAR(45) NOT NULL,
  `post` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `link` VARCHAR(45) NOT NULL,
  `data` DATETIME NOT NULL,
  PRIMARY KEY (`cod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `syscomentario`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `syscomentario`.`usuario` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `permissao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `syscomentario`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `syscomentario`.`comentario` (
  `cod` INT(6) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `mensagem` VARCHAR(500) NOT NULL,
  `comentario_cod` INT(6) NULL,
  `postagem_cod` INT NOT NULL,
  `usuario_cod` INT NOT NULL,
  PRIMARY KEY (`cod`),
  INDEX `fk_comentario_comentario_idx` (`comentario_cod` ASC),
  INDEX `fk_comentario_postagem1_idx` (`postagem_cod` ASC),
  INDEX `fk_comentario_usuario1_idx` (`usuario_cod` ASC),
  CONSTRAINT `fk_comentario_comentario`
    FOREIGN KEY (`comentario_cod`)
    REFERENCES `syscomentario`.`comentario` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_postagem1`
    FOREIGN KEY (`postagem_cod`)
    REFERENCES `syscomentario`.`postagem` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`usuario_cod`)
    REFERENCES `syscomentario`.`usuario` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
