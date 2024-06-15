CREATE TABLE HOTEL (
  codigo_hotel INT PRIMARY KEY,
  nombre_hotel VARCHAR(32),
  direccion VARCHAR(32),
  telefono VARCHAR(20),
  año_contruccion TIMESTAMP
);

CREATE TABLE CATEGORIA (
  codigo_categoria INT PRIMARY KEY,
  iva VARCHAR(32),
  descripcion VARCHAR(32)
);

CREATE TABLE HABITACION_HOTEL (
  codigo_habitacion INT PRIMARY KEY,
  tipo_habitacion VARCHAR(32)
);

CREATE TABLE PARTICULAR (
  codigo_particular INT PRIMARY KEY,
  nombre_particular VARCHAR(32),
  telefono_particular VARCHAR(20),
  direccion_agencia VARCHAR(32)
);

CREATE TABLE AGENCIA_VIAJE (
  codigo_agencia INT PRIMARY KEY,
  nombre_agencia VARCHAR(32),
  telefono_agencia VARCHAR(20),
  direccion_agencia VARCHAR(32)
);

CREATE TABLE RESERVA (
  codigo_reserva INT PRIMARY KEY,
  precio FLOAT,
  fecha_inicio TIMESTAMP,
  fecha_fin TIMESTAMP
);

ALTER TABLE RESERVA
ADD FOREIGN KEY (precio) REFERENCES AGENCIA_VIAJE(nombre_agencia),
ADD FOREIGN KEY (precio) REFERENCES PARTICULAR(nombre_particular);

ALTER TABLE HABITACION_HOTEL
ADD FOREIGN KEY (codigo_habitacion) REFERENCES HOTEL(direccion);

ALTER TABLE CATEGORIA
ADD FOREIGN KEY (codigo_categoria) REFERENCES HOTEL(direccion);

ALTER TABLE HOTEL
ADD FOREIGN KEY (direccion) REFERENCES RESERVA(precio);

