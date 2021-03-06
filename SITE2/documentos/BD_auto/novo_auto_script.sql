-- MySQL Script generated by MySQL Workbench
-- Ter 20 Mar 2018 08:27:56 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bd_auto1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_auto1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_auto1` DEFAULT CHARACTER SET utf8 ;
USE `bd_auto1` ;

-- -----------------------------------------------------
-- Table `bd_auto1`.`montadora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`montadora` (
  `idmontadora` INT(11) NOT NULL,
  `nome_montadora` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`idmontadora`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_czech_ci;


-- -----------------------------------------------------
-- Table `bd_auto1`.`tip_veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`tip_veiculo` (
  `id_tip_veiculo` INT NOT NULL,
  `tip_veiculo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tip_veiculo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_auto1`.`versao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`versao` (
  `id_versao` INT NOT NULL AUTO_INCREMENT,
  `versao` VARCHAR(45) NULL,
  PRIMARY KEY (`id_versao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_auto1`.`ano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`ano` (
  `id_ano` INT NOT NULL AUTO_INCREMENT,
  `ano` VARCHAR(45) NULL,
  `versao_id_versao` INT NOT NULL,
  PRIMARY KEY (`id_ano`),
  INDEX `fk_ano_versao1_idx` (`versao_id_versao` ASC),
  CONSTRAINT `fk_ano_versao1`
    FOREIGN KEY (`versao_id_versao`)
    REFERENCES `bd_auto1`.`versao` (`id_versao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_auto1`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`modelo` (
  `idmodelo` INT NOT NULL AUTO_INCREMENT,
  `nomemodelo` VARCHAR(45) NULL,
  `ano_id_ano` INT NOT NULL,
  PRIMARY KEY (`idmodelo`),
  INDEX `fk_modelo_ano1_idx` (`ano_id_ano` ASC),
  CONSTRAINT `fk_modelo_ano1`
    FOREIGN KEY (`ano_id_ano`)
    REFERENCES `bd_auto1`.`ano` (`id_ano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_auto1`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`veiculo` (
  `idcarro` INT(11) NOT NULL,
  `carro` VARCHAR(45) NULL DEFAULT NULL,
  `idmontadora` INT(11) NOT NULL,
  `potencia` VARCHAR(45) NULL,
  `portas` VARCHAR(45) NULL,
  `preco` VARCHAR(45) NULL,
  `altura` VARCHAR(45) NULL,
  `comprimento` VARCHAR(45) NULL,
  `cambio` VARCHAR(45) NULL,
  `velocidade` VARCHAR(45) NULL,
  `tanque_combustivel` VARCHAR(45) NULL,
  `tip_combustivel` VARCHAR(45) NULL,
  `porta_malas` VARCHAR(45) NULL,
  `tip_direcao` VARCHAR(45) NULL,
  `consumo_urb` VARCHAR(45) NULL,
  `consumo_rod` VARCHAR(45) NULL,
  `marcha` VARCHAR(45) NULL,
  `tip_tracao` VARCHAR(45) NULL,
  `porte` VARCHAR(45) NULL,
  `ocupantes` VARCHAR(45) NULL,
  `tip_freio` VARCHAR(45) NULL,
  `id_tip_veiculo` INT NOT NULL,
  `idmodelo` INT NOT NULL,
  `veiculocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idcarro`),
  INDEX `fk_carro_MONTADORA_idx` (`idmontadora` ASC),
  INDEX `fk_veiculo_tip_veiculo1_idx` (`id_tip_veiculo` ASC),
  INDEX `fk_veiculo_modelo1_idx` (`idmodelo` ASC),
  CONSTRAINT `fk_carro_MONTADORA`
    FOREIGN KEY (`idmontadora`)
    REFERENCES `bd_auto1`.`montadora` (`idmontadora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_tip_veiculo1`
    FOREIGN KEY (`id_tip_veiculo`)
    REFERENCES `bd_auto1`.`tip_veiculo` (`id_tip_veiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_modelo1`
    FOREIGN KEY (`idmodelo`)
    REFERENCES `bd_auto1`.`modelo` (`idmodelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_auto1`.`tip_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`tip_user` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_auto1`.`comparacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`comparacao` (
  `idcomparacao` INT(11) NOT NULL AUTO_INCREMENT,
  `idcarro` INT(11) NOT NULL,
  PRIMARY KEY (`idcomparacao`),
  INDEX `fk_comparacao_carro1_idx` (`idcarro` ASC),
  CONSTRAINT `fk_comparacao_carro1`
    FOREIGN KEY (`idcarro`)
    REFERENCES `bd_auto1`.`veiculo` (`idcarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_auto1`.`favoritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`favoritos` (
  `idfavoritos` INT(11) NOT NULL AUTO_INCREMENT,
  `data` DATE NULL DEFAULT NULL,
  `id_user` VARCHAR(45) NULL DEFAULT NULL,
  `idcomparacao` INT(11) NOT NULL,
  PRIMARY KEY (`idfavoritos`),
  INDEX `fk_favoritos_comparacao1_idx` (`idcomparacao` ASC),
  CONSTRAINT `fk_favoritos_comparacao1`
    FOREIGN KEY (`idcomparacao`)
    REFERENCES `bd_auto1`.`comparacao` (`idcomparacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_auto1`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`usuario` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(10) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `tip_user_id_user` INT(11) NOT NULL,
  `tipo_user` VARCHAR(45) NULL DEFAULT NULL,
  `idcarro` INT(11) NOT NULL,
  `idfavoritos` INT(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_usuario_tip_user1_idx` (`tip_user_id_user` ASC),
  INDEX `fk_usuario_carro1_idx` (`idcarro` ASC),
  INDEX `fk_usuario_favoritos1_idx` (`idfavoritos` ASC),
  CONSTRAINT `fk_usuario_tip_user1`
    FOREIGN KEY (`tip_user_id_user`)
    REFERENCES `bd_auto1`.`tip_user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_carro1`
    FOREIGN KEY (`idcarro`)
    REFERENCES `bd_auto1`.`veiculo` (`idcarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_favoritos1`
    FOREIGN KEY (`idfavoritos`)
    REFERENCES `bd_auto1`.`favoritos` (`idfavoritos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_auto1`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_auto1`.`comentario` (
  `idcomentario` INT(11) NOT NULL AUTO_INCREMENT,
  `data` DATE NULL DEFAULT NULL,
  `texto` TEXT NULL DEFAULT NULL,
  `idcarro` INT(11) NOT NULL,
  `id_user` INT(11) NOT NULL,
  PRIMARY KEY (`idcomentario`),
  INDEX `fk_comentario_carro1_idx` (`idcarro` ASC),
  INDEX `fk_comentario_usuario1_idx` (`id_user` ASC),
  CONSTRAINT `fk_comentario_carro1`
    FOREIGN KEY (`idcarro`)
    REFERENCES `bd_auto1`.`veiculo` (`idcarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`id_user`)
    REFERENCES `bd_auto1`.`usuario` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
