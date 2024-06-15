CREATE TABLE COCHE_NUEVO (
  matricula_nuevo VARCHAR(32) PRIMARY KEY,
  modelo_nuevo VARCHAR(32),
  marca_nuevo VARCHAR(32),
  color_nuevo VARCHAR(16),
  numero_unidades INT
);

CREATE TABLE CLIENTE (
  dni_cliente INT PRIMARY KEY,
  nombre_cliente VARCHAR(32),
  apellido_cliente VARCHAR(32),
  direccion VARCHAR(32),
  telefono VARCHAR(20)
);

CREATE TABLE COCHE_USADO (
  matricula_usado VARCHAR(32) PRIMARY KEY,
  modelo_usado VARCHAR(32),
  marca_usado VARCHAR(32),
  color_usado VARCHAR(32),
  kilometraje INT
);

CREATE TABLE REPARACION (
  codigo_reparacion INT PRIMARY KEY,
  horas_duracion INT,
  fecha_reparacion TIMESTAMP
);

CREATE TABLE MECANICO (
  dni_mecanico INT PRIMARY KEY,
  nombre_mecanico VARCHAR(32),
  fecha_contratacion TIMESTAMP,
  salario FLOAT
);

ALTER TABLE CLIENTE
ADD FOREIGN KEY (apellido_cliente) REFERENCES COCHE_NUEVO(marca_nuevo),
ADD FOREIGN KEY (apellido_cliente) REFERENCES COCHE_USADO(marca_usado);

ALTER TABLE REPARACION
ADD FOREIGN KEY (horas_duracion) REFERENCES MECANICO(nombre_mecanico),
ADD FOREIGN KEY (horas_duracion) REFERENCES COCHE_USADO(marca_usado);

