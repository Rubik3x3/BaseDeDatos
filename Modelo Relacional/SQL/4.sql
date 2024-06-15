CREATE TABLE COCHE (
  matricula VARCHAR(20) PRIMARY KEY,
  marca VARCHAR(32),
  modelo VARCHAR(32),
  color VARCHAR(16),
  precio FLOAT
);

CREATE TABLE CLIENTE (
  codigo_interno INTEGER PRIMARY KEY,
  cuit INTEGER,
  nombre VARCHAR(32),
  direccion VARCHAR(32),
  ciudad VARCHAR(32),
  telefono VARCHAR(20)
);

CREATE TABLE REVISION (
  codigo INTEGER PRIMARY KEY,
  cambio_filtro BOOLEAN,
  cambio_aceite BOOLEAN,
  cambio_frenos BOOLEAN
);

ALTER TABLE COCHE
ADD CONSTRAINT fk_coche_cliente
FOREIGN KEY (modelo)
REFERENCES CLIENTE (direccion);

ALTER TABLE COCHE
ADD CONSTRAINT fk_coche_revision
FOREIGN KEY (modelo)
REFERENCES REVISION (cambio_filtro);

