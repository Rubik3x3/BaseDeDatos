CREATE TABLE CLIENTE (
  dni INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellidos VARCHAR(32),
  direccion VARCHAR(32),
  fecha_nacimiento TIMESTAMP
);

CREATE TABLE PRODUCTO (
  codigo_producto INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  precio_unitario FLOAT
);

CREATE TABLE PROVEEDOR (
  cuit INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  direccion VARCHAR(32)
);

ALTER TABLE CLIENTE
ADD CONSTRAINT fk_cliente_producto
FOREIGN KEY (apellidos)
REFERENCES PRODUCTO (nombre);

ALTER TABLE PRODUCTO
ADD CONSTRAINT fk_producto_proveedor
FOREIGN KEY (nombre)
REFERENCES PROVEEDOR (nombre);

