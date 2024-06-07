DROP DATABASE IF EXISTS primer_db;

CREATE DATABASE primer_db;

USE primer_db;

CREATE TABLE productos (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO productos (nombre)
VALUES ("MANZANA");

INSERT INTO productos (nombre)
VALUES("PERA");

INSERT INTO productos (nombre)
VALUES("UVA");

ALTER TABLE productos
ADD COLUMN PRECIO INT DEFAULT 0;

UPDATE productos
set precio = 50
where nombre= "MANZANA";

UPDATE productos
set precio = 20
where nombre = "UVA";


UPDATE productos
set precio = 70
where nombre = "PERA";

ALTER TABLE productos
ADD COLUMN oferta BOOLEAN DEFAULT false;0