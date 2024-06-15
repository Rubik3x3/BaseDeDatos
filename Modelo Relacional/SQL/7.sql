CREATE TABLE AUTOR (
    codigo_autor INT,
    nombre_autor VARCHAR(32),
    PRIMARY KEY (codigo_autor)
);

CREATE TABLE LIBRO (
    isbn INT,
    titulo VARCHAR(32),
    codigo INT,
    editorial VARCHAR(32),
    numero_paginas INT,
    PRIMARY KEY (isbn),
    FOREIGN KEY (codigo) REFERENCES AUTOR (codigo_autor)
);

CREATE TABLE EJEMPLAR (
    codigo_ejemplar INT,
    localizacion VARCHAR(32),
    PRIMARY KEY (codigo_ejemplar),
    FOREIGN KEY (codigo_ejemplar) REFERENCES LIBRO (codigo)
);

CREATE TABLE PRESTAMO (
    codigo_prestamo INT,
    fecha_prestamo TIMESTAMP,
    fecha_devolucion TIMESTAMP,
    PRIMARY KEY (codigo_prestamo)
);

CREATE TABLE USUARIO (
    codigo_usuario INT,
    nombre_usuario VARCHAR(32),
    telefono VARCHAR(32),
    direccion VARCHAR(32),
    PRIMARY KEY (codigo_usuario)
);

ALTER TABLE EJEMPLAR ADD FOREIGN KEY (codigo_ejemplar) REFERENCES USUARIO (nombre_usuario);
ALTER TABLE PRESTAMO ADD FOREIGN KEY (fecha_prestamo) REFERENCES USUARIO (nombre_usuario);

