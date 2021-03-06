CREATE DATABASE PROJETO_FINAL_PW3;

USE PROJETO_FINAL_PW3;

CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL UNIQUE,
 userName VARCHAR(100) NOT NULL UNIQUE,
 senha VARCHAR(50) NOT NULL,
 tipo VARCHAR(20) NOT NULL,
 ativo BOOL NOT NULL DEFAULT TRUE,
 cpf VARCHAR(14) NOT NULL UNIQUE);
 
 CREATE TABLE Produto(
 idProduto INT PRIMARY KEY AUTO_INCREMENT,
 descricao VARCHAR (200) NOT NULL,
 preco DOUBLE NOT NULL);
 
 CREATE TABLE Estoque(
 idProduto INT NOT NULL UNIQUE,
 quantidade INT NOT NULL,
 CONSTRAINT FK_idProduto
 FOREIGN KEY (idProduto)
 REFERENCES Produto (idProduto));
 
 CREATE TABLE Venda(
 idVenda INT PRIMARY KEY AUTO_INCREMENT,
 idProdutoVendido INT NOT NULL UNIQUE,
 quantidade INT NOT NULL,
 precoUnitario DOUBLE NOT NULL,
 precoFinal DOUBLE NOT NULL,
 dataVenda date NOT NULL,
 cpf VARCHAR(14) NULL UNIQUE,
 CONSTRAINT FK_idProdutoVendido
 FOREIGN KEY (idProdutoVendido)
 REFERENCES Produto (idProduto));
