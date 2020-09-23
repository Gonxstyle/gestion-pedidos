DROP DATABASE IF EXISTS gestion;

CREATE DATABASE gestion;

USE gestion;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios
(
    id_usuario INT (3) UNSIGNED ZEROFILL AUTO_INCREMENT,
    nombre_usuario VARCHAR (99),
    email_usuario  VARCHAR (99),
    primary key (id_usuario)
);

DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos
(
    id_pedido INT (3) UNSIGNED ZEROFILL AUTO_INCREMENT,
    usuario_pedido /*id_usuario*/ INT (3) UNSIGNED ZEROFILL,
    fecha_pedido TIMESTAMP,
    confirmar_pedido CHAR (2) default 'no',
    primary key (id_pedido)
);

DROP TABLE IF EXISTS productos;
CREATE TABLE productos
(
    id_producto INT (3) UNSIGNED ZEROFILL AUTO_INCREMENT,
    nombre_producto VARCHAR (99),
    precio_producto DECIMAL (6,2) UNSIGNED,
    primary key (id_producto)
);

DROP TABLE IF EXISTS detalles_pedidos;
CREATE TABLE detalles_pedidos
(
    id_detalle INT (3) UNSIGNED AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad_detalles INT UNSIGNED ZEROFILL NOT NULL,
    primary key (id_detalle)
);