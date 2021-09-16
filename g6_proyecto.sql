CREATE DATABASE if NOT EXISTS g6_proyecto;

USE g6_proyecto;

DROP TABLE if EXISTS tipoRestaurante;
DROP TABLE if EXISTS restaurante_producto;
DROP TABLE if EXISTS restaurante;
DROP TABLE if EXISTS producto;


CREATE TABLE if NOT EXISTS restaurante(
idRestaurante INT PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(30) NOT NULL
);


CREATE TABLE if NOT EXISTS tipoRestaurante(
idTipoRestaurante INT PRIMARY KEY,
nombreTpRestaurante VARCHAR(25) NOT NULL,
idRestaurante INT,
CONSTRAINT fk_restaurante_tp FOREIGN KEY(idRestaurante) REFERENCES restaurante(idRestaurante)
);


CREATE TABLE if NOT EXISTS producto(
idProducto INT PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
categoria VARCHAR(25) NOT NULL
);


CREATE TABLE if NOT EXISTS restaurante_producto(
id INT PRIMARY KEY,
precioProducto INT NOT NULL,
descripcionProdcuto VARCHAR(100) NOT NULL,
idRestaurante INT,
idProducto INT,
CONSTRAINT fk_restaurante_rp FOREIGN KEY(idRestaurante) REFERENCES restaurante(idRestaurante),
CONSTRAINT fk_prodcuto_rp FOREIGN KEY(idProducto) REFERENCES producto(idProducto)
);

