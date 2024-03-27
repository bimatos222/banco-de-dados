CREATE DATABASE ECOMMERCE;

USE ECOMMERCE;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereço VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    celular VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preço DECIMAL(10, 2) NOT NULL,
    descrição TEXT NOT NULL,
    qnt_em_estoque INT NOT NULL
);

CREATE TABLE pedido (
   id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    data_de_compra DATETIME NOT NULL,
    valor_tt DECIMAL(10, 2) NOT NULL,
    Data_estimada_de_entrega DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE lista_de_itens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ordem_id INT NOT NULL,
    produtos_id INT NOT NULL,
    qnt INT NOT NULL,
    valor_unico DECIMAL(10, 2) NOT NULL,
    valor_tt DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ordem_id) REFERENCES ordem(id),
    FOREIGN KEY (produtos_id) REFERENCES produtos(id)
);
