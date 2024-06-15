CREATE TABLE CAMIONERO (
  dni INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  salario FLOAT,
  direccion VARCHAR(32),
  telefono VARCHAR(20),
  lugar_residencia VARCHAR(32)
);

CREATE TABLE CAMION (
  matricula VARCHAR(20) PRIMARY KEY,
  modelo VARCHAR(32),
  tipo VARCHAR(32),
  potencia FLOAT
);

CREATE TABLE PAQUETE (
  codigo_paquete INTEGER PRIMARY KEY,
  descripcion TEXT,
  destinatario VARCHAR(32),
  direccion_destinatario VARCHAR(32)
);

CREATE TABLE PROVINCIA (
  codigo_provincia INTEGER PRIMARY KEY,
  nombre VARCHAR(32)
);

ALTER TABLE CAMIONERO
ADD CONSTRAINT fk_camionero_camion
FOREIGN KEY (direccion)
REFERENCES CAMION (modelo);

ALTER TABLE CAMION
ADD CONSTRAINT fk_camion_paquete
FOREIGN KEY (modelo)
REFERENCES PAQUETE (descripcion);

ALTER TABLE PAQUETE
ADD CONSTRAINT fk_paquete_provincia
FOREIGN KEY (descripcion)
REFERENCES PROVINCIA (codigo_provincia);

