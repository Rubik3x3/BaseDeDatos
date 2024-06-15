CREATE TABLE ALUMNO (
  dni_alumno INT PRIMARY KEY,
  nombre_alumno VARCHAR(32),
  apellidos_alumno VARCHAR(32),
  direccion_alumno VARCHAR(32),
  fecha_nacimiento_alumno TIMESTAMP,
  codigo_postal_alumno INT,
  telefono_alumno VARCHAR(20)
);

CREATE TABLE PROFESOR (
  dni_profesor INT PRIMARY KEY,
  nombre_profesor VARCHAR(32),
  apellidos_profesor VARCHAR(32),
  direccion_profesor VARCHAR(32),
  fecha_nacimiento_profesor TIMESTAMP,
  codigo_postal_profesor INT,
  telefono_profesor VARCHAR(20)
);

CREATE TABLE ASIGNATURA (
  codigo_asignatura INT PRIMARY KEY,
  nombre VARCHAR(32),
  horas_por_semana INT
);

CREATE TABLE CURSO (
  codigo_curso INT PRIMARY KEY,
  nombre VARCHAR(32)
);

CREATE TABLE AULA (
  codigo_aula INT PRIMARY KEY,
  piso VARCHAR(32),
  numero_pupitres INT
);

ALTER TABLE ASIGNATURA
ADD FOREIGN KEY (nombre) REFERENCES PROFESOR(direccion_profesor),
ADD FOREIGN KEY (nombre) REFERENCES CURSO(nombre),
ADD FOREIGN KEY (nombre) REFERENCES AULA(piso);

ALTER TABLE PROFESOR
ADD FOREIGN KEY (direccion_profesor) REFERENCES CURSO(codigo_curso);

ALTER TABLE ALUMNO
ADD FOREIGN KEY (direccion_alumno) REFERENCES ASIGNATURA(nombre);

