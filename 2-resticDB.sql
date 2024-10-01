-- Criação do banco de dados "resticDB"
CREATE DATABASE IF NOT EXISTS `resticDB` DEFAULT CHARACTER SET utf8 ;
USE `resticDB` ;

-- Criação da tabela “Cliente”
CREATE TABLE IF NOT EXISTS `resticDB`.`Cliente` (
  `Id_Cliente` INT NOT NULL,
  `nome` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `numero_contato` VARCHAR(45) NULL,
  `data_nascimento` DATE NULL,
  PRIMARY KEY (`Id_Cliente`)
  ) ENGINE = InnoDB;

-- Criação da tabela “Pedido”
CREATE TABLE IF NOT EXISTS `resticDB`.`Pedido` (
  `Id_Pedido` INT NOT NULL,
  `status` VARCHAR(45) NULL,
  `Cliente_Id_Cliente` INT NOT NULL,
  PRIMARY KEY (`Id_Pedido`, `Cliente_Id_Cliente`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_Id_Cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_Id_Cliente`)
    REFERENCES `resticDB`.`Cliente` (`Id_Cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- Criação da tabela “Produto”
CREATE TABLE IF NOT EXISTS `resticDB`.`Produto` (
  `Id_Produto` INT NOT NULL,
  `nome` VARCHAR(100) NULL,
  `tipo` VARCHAR(45) NULL,
  `valor` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_Produto`)
  ) ENGINE = InnoDB;


-- Criação da tabela “Pedido_tem_Produto”
CREATE TABLE IF NOT EXISTS `resticDB`.`Pedido_tem_Produto` (
  `Pedido_Id_Pedido` INT NOT NULL,
  `Produto_Id_Produto` INT NOT NULL,
  `quantidade` INT NULL,
  PRIMARY KEY (`Pedido_Id_Pedido`, `Produto_Id_Produto`),
  INDEX `fk_Pedido_tem_Produto_Produto1_idx` (`Produto_Id_Produto` ASC) VISIBLE,
  INDEX `fk_Pedido_tem_Produto_Pedido1_idx` (`Pedido_Id_Pedido` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_tem_Produto_Pedido1`
    FOREIGN KEY (`Pedido_Id_Pedido`)
    REFERENCES `resticDB`.`Pedido` (`Id_Pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_tem_Produto_Produto1`
    FOREIGN KEY (`Produto_Id_Produto`)
    REFERENCES `resticDB`.`Produto` (`Id_Produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    ) ENGINE = InnoDB;
