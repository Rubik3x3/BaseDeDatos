CREATE TABLE GOL (
    numero_goles INT,
    minuto_gol INT,
    descripcion_gol VARCHAR(32),
    PRIMARY KEY (numero_goles)
);

CREATE TABLE PARTIDO (
    codigo_partido INT,
    fecha TIMESTAMP,
    goles_local INT,
    goles_visitante INT,
    PRIMARY KEY (codigo_partido)
);

CREATE TABLE JUGADOR (
    codigo_jugador INT,
    nombre_jugador VARCHAR(32),
    fecha_nacimiento_jugador TIMESTAMP,
    posicion INT,
    PRIMARY KEY (codigo_jugador)
);

CREATE TABLE PRESIDENTE (
    dni INT,
    nombre_presidente VARCHAR(32),
    fecha_nacimiento_presidente TIMESTAMP,
    equipo VARCHAR(32),
    año_eleccion TIMESTAMP,
    PRIMARY KEY (dni)
);

CREATE TABLE EQUIPO (
    codigo_equipo INT,
    nombre_equipo VARCHAR(32),
    nombre_estadio VARCHAR(32),
    año_fundacion TIMESTAMP,
    ciudad VARCHAR(32),
    PRIMARY KEY (codigo_equipo)
);

ALTER TABLE GOL ADD FOREIGN KEY (numero_goles) REFERENCES PARTIDO (codigo_partido);
ALTER TABLE GOL ADD FOREIGN KEY (numero_goles) REFERENCES JUGADOR (codigo_jugador);
ALTER TABLE JUGADOR ADD FOREIGN KEY (nombre_jugador) REFERENCES EQUIPO (nombre_estadio);
ALTER TABLE EQUIPO ADD FOREIGN KEY (nombre_estadio) REFERENCES PRESIDENTE (fecha_nacimiento_presidente);

