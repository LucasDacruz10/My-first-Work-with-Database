CREATE DATABASE IF NOT EXISTS meubanco;
USE meubanco;

CREATE TABLE Produtos (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) BINARY NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE Clientes (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(120) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE Pedidos (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Clientes_id INTEGER UNSIGNED NOT NULL,
    DataPedido DATETIME NOT NULL,
    PRIMARY KEY(id),
    INDEX Pedidos_FKIndex1(Clientes_id),
    FOREIGN KEY(Clientes_id)
        REFERENCES Clientes(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE ItensPedido (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    Produtos_id INTEGER UNSIGNED NOT NULL,
    Pedidos_id INTEGER UNSIGNED NOT NULL,
    Quantidade INTEGER UNSIGNED NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    INDEX ItensPedido_FKIndex1(Pedidos_id),
    INDEX ItensPedido_FKIndex2(Produtos_id),
    FOREIGN KEY(Pedidos_id)
        REFERENCES Pedidos(id),
    FOREIGN KEY(Produtos_id)
        REFERENCES Produtos(id)
);


