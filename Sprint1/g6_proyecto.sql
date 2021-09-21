CREATE DATABASE if NOT EXISTS g6_proyecto;

USE g6_proyecto;


DROP TABLE if EXISTS restaurante_producto;
DROP TABLE if EXISTS producto_usuario;
DROP TABLE if EXISTS restaurante_categoria;
DROP TABLE if EXISTS restaurante;
DROP TABLE if EXISTS producto;
DROP TABLE if EXISTS usuartio;
DROP TABLE if EXISTS categoria;



CREATE TABLE if NOT EXISTS restaurante(
idRestaurante INT PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(30) NOT NULL
);


CREATE TABLE if NOT EXISTS categoria(
idCategoria INT PRIMARY KEY,
nombreCategoria VARCHAR(25) NOT NULL
);

CREATE TABLE if NOT EXISTS restaurante_categoria(
idRC INT PRIMARY KEY,
idRestaurante INT,
idCategoria INT,
CONSTRAINT fk_rest_cate FOREIGN KEY(idRestaurante) REFERENCES restaurante(idRestaurante),
CONSTRAINT fk_cate_rest FOREIGN KEY(idCategoria) REFERENCES categoria(idCategoria)
);


CREATE TABLE if NOT EXISTS producto(
idProducto INT PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
categoria VARCHAR(25) NOT NULL,
idCategoria INT,
CONSTRAINT fk_cate_prod FOREIGN KEY(idCategoria) REFERENCES categoria(idCategoria)
);

CREATE TABLE if NOT EXISTS usuario(
idUsuario INT PRIMARY KEY,
tipoIdentificacion VARCHAR(25) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono INT NOT NULL,
email VARCHAR(50) NOT NULL,
direccion VARCHAR(30) NOT null
);

CREATE TABLE if NOT EXISTS restaurante_producto(
id INT PRIMARY KEY,
precioProducto INT NOT NULL,
descripcionProdcuto VARCHAR(100) NOT NULL,
idRestaurante INT,
idProducto INT,
CONSTRAINT fk_rest_prod FOREIGN KEY(idRestaurante) REFERENCES restaurante(idRestaurante),
CONSTRAINT fk_prod_rest FOREIGN KEY(idProducto) REFERENCES producto(idProducto)
);

CREATE TABLE if NOT EXISTS producto_usuario(
id INT PRIMARY KEY,
idProducto INT,
idUsuario INT,
CONSTRAINT fk_prod_usa FOREIGN KEY(idProducto) REFERENCES producto(idProducto),
CONSTRAINT fk_usua_prod FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario)
);
