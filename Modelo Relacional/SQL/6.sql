CREATE TABLE CLIENTE (
  codigo_cliente INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellido VARCHAR(32),
  direccion VARCHAR(32),
  telefono VARCHAR(20)
);

CREATE TABLE PRODUCTO (
  codigo_producto INTEGER PRIMARY KEY,
  descripcion TEXT,
  precio FLOAT,
  numero_existencias INTEGER
);

CREATE TABLE PROVEEDOR (
  codigo_proveedor INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellido VARCHAR(32),
  telefono VARCHAR(20),
  especialidad VARCHAR(32)
);

ALTER TABLE CLIENTE
ADD CONSTRAINT fk_cliente_producto
FOREIGN KEY (apellido)
REFERENCES PRODUCTO (descripcion);

ALTER TABLE PRODUCTO
ADD CONSTRAINT fk_producto_proveedor
FOREIGN KEY (descripcion)
REFERENCES PROVEEDOR (apellido);

