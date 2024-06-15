CREATE TABLE DEPARTAMENTO (
  codigo_departamento INT PRIMARY KEY,
  nombre_departamento VARCHAR(32),
  presupuesto_anual FLOAT
);

CREATE TABLE CENTRO_TRABAJO (
  codigo_centro INT PRIMARY KEY,
  nombre_centro VARCHAR(32),
  poblacion INT,
  direccion VARCHAR(32)
);

CREATE TABLE EMPLEADO (
  cuil INT PRIMARY KEY,
  nombre_empleado VARCHAR(32),
  fecha_alta_empresa TIMESTAMP,
  numero_hijos INT,
  salario FLOAT
);

CREATE TABLE HABILIDAD_EMPLEADO (
  codigo_habilidad INT PRIMARY KEY,
  descripcion VARCHAR(32)
);

CREATE TABLE HIJO_EMPLEADO (
  codigo_hijo INT PRIMARY KEY,
  nombre VARCHAR(32),
  fecha_nacimiento TIMESTAMP
);

ALTER TABLE DEPARTAMENTO
ADD FOREIGN KEY (nombre_departamento) REFERENCES EMPLEADO(fecha_alta_empresa);

ALTER TABLE CENTRO_TRABAJO
ADD FOREIGN KEY (nombre_centro) REFERENCES DEPARTAMENTO(nombre_departamento);

ALTER TABLE HIJO_EMPLEADO
ADD FOREIGN KEY (nombre) REFERENCES EMPLEADO(fecha_alta_empresa);

ALTER TABLE EMPLEADO
ADD FOREIGN KEY (fecha_alta_empresa) REFERENCES HABILIDAD_EMPLEADO(codigo_habilidad);

