CREATE TABLE PROFESOR (
  dni INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  direccion VARCHAR(32),
  telefono VARCHAR(20)
);

CREATE TABLE MODULO (
  codigo_modulo INTEGER PRIMARY KEY,
  nombre VARCHAR(32)
);

CREATE TABLE ALUMNO (
  numero_expediente INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellidos VARCHAR(32),
  fecha_nacimiento TIMESTAMP
);

ALTER TABLE PROFESOR
ADD CONSTRAINT fk_profesor_modulo
FOREIGN KEY (nombre)
REFERENCES MODULO (codigo_modulo);

ALTER TABLE MODULO
ADD CONSTRAINT fk_modulo_alumno
FOREIGN KEY (codigo_modulo)
REFERENCES ALUMNO (nombre);

