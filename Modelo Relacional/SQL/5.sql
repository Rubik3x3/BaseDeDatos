CREATE TABLE PACIENTE (
  codigo_paciente INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellido VARCHAR(32),
  direccion VARCHAR(32),
  localidad VARCHAR(32),
  provincia VARCHAR(32),
  codigo_postal INTEGER,
  telefono VARCHAR(20),
  fecha_nacimiento TIMESTAMP
);

CREATE TABLE INGRESO (
  codigo_ingreso INTEGER PRIMARY KEY,
  numero_habitacion INTEGER,
  cama VARCHAR(16),
  fecha_ingreso TIMESTAMP
);

CREATE TABLE MEDICO (
  codigo_medico INTEGER PRIMARY KEY,
  nombre VARCHAR(32),
  apellido VARCHAR(32),
  telefono VARCHAR(20),
  especialidad VARCHAR(32)
);

ALTER TABLE PACIENTE
ADD CONSTRAINT fk_paciente_ingreso
FOREIGN KEY (localidad)
REFERENCES INGRESO (numero_habitacion);

ALTER TABLE INGRESO
ADD CONSTRAINT fk_ingreso_medico
FOREIGN KEY (numero_habitacion)
REFERENCES MEDICO (apellido);

