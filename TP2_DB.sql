CREATE DATABASE empresa;
USE empresa;

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados (
    documento INTEGER UNSIGNED PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    sexo CHAR(1),
    domicilio VARCHAR(30),
    localidad VARCHAR(25),
    telefono VARCHAR(20) NOT NULL,
    fechaingreso DATE NOT NULL,
    fechanacimiento DATE NOT NULL,
    sueldobasico DECIMAL(5,2) NOT NULL
);

-- 1)
INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
VALUES
    (1, 'Pablo Rodriguez', 'M', 'Galvan 123', 'Córdoba', '111-222-333', '2011-01-15', '1980-05-20', 55.75),
    (2, 'Dionisio Miguel', 'M', 'Av. Libertador 456', 'Córdoba', '222-333-444', '2012-02-25', '1985-08-10', 50.50),
    (3, 'Soraya Trillo', 'F', 'Avenida Rivadavia 789', 'Capital Federal', '333-444-555', '2013-03-05', '1990-11-15', 65.50),
    (4, 'Itziar Echevarria', 'F', 'Calle Corrientes 1010', 'Capital Federal', '444-555-666', '2014-04-10', '1992-12-25', 72.25),
    (5, 'Eduardo Castañeda', 'M', 'Calle Belgrano 2020', 'Capital Federal', '555-666-777', '2015-05-20', '1988-07-30', 60.00),
    (6, 'Ruben Exposito', 'M', 'Av. San Martin 3030', 'Córdoba', '666-777-888', '2016-06-30', '1983-03-05', 52.50),
    (7, 'Montserrat Carpio', 'M', 'Avenida Santa Fe 4040', 'Córdoba', '777-888-999', '2017-07-15', '1987-01-20', 68.75),
    (8, 'Jacinta Tortosa', 'F', 'Calle Cabildo 5050', 'Salta', '888-999-000', '2018-08-25', '1985-06-15', 74.00),
    (9, 'Emiliano Ripoll', 'M', 'Av. de Mayo 6060', 'Salta', '999-000-111', '2019-09-10', '1990-11-01', 80.50),
    (10, 'Franco Talarico', 'M', 'Calle 7 de Julio 7070', 'Salta', '000-111-222', '2020-10-20', '1995-04-25', 90.00),
    (11, 'Gloria Maria Valle', 'F', 'Calle 7 de Julio 7070', 'Mendoza', '000-111-222', '2021-10-20', '1998-04-25', 90.00),
    (12, 'Rufino Contreras', 'M', 'Calle 7 de Julio 7070', 'Mendoza', '000-111-222', '2020-11-20', '1997-04-25', 90.00),
    (13, 'Maria Araceli de-La-Rosa', 'F', 'Calle 7 de Julio 7070', 'Mendoza', '000-111-222', '2019-12-20', '1996-04-25', 90.00),
    (14, 'Feliciana Vicoa', 'F', 'Calle 7 de Julio 7070', 'Mendoza', '000-111-222', '2018-06-20', '1995-04-25', 90.00),
    (15, 'Ibon Zaragoza', 'M', 'Calle 7 de Julio 7070', 'Mendoza', '000-111-222', '2017-03-20', '1994-04-25', 90.00);

-- 2)
SELECT localidad AS Ciudad, COUNT(*) AS Cantidad_Empleados
FROM empleados
GROUP BY localidad;

-- 3)
SELECT localidad AS Ciudad, SUM(sueldobasico) AS Suma_Sueldo_Basico
FROM empleados
GROUP BY localidad;

-- 4)
SELECT localidad AS Ciudad, COUNT(*) AS Cantidad_Empleados
FROM empleados
GROUP BY localidad
HAVING COUNT(*) > 3;

-- 5)
SELECT localidad AS Ciudad, AVG(sueldobasico) AS Promedio_Sueldo_Basico
FROM empleados
GROUP BY localidad
HAVING AVG(sueldobasico) > 100;

-- 6)
SELECT CONCAT('Hola', ' Buenos dias ?') AS Cadena_Concatenada;

-- 7)
SELECT CONCAT('Cordoba', '-', 'Santa Fe', '-', 'Mendoza') AS Provincias_Concatenadas;

-- 8)
-- 8.1)
SELECT LENGTH('Hola buenos dias') AS Longitud;

-- 8.2
SELECT LPAD('Hola buenos dias', 20, '*') AS Cadena_Rellenada_IZQ;

-- 8.3)
SELECT RPAD('Hola buenos dias', 20, '*') AS Cadena_Rellenada_DER;

-- 8.4)
SELECT SUBSTRING('Hola buenos dias', LOCATE('dias', 'Hola buenos dias'), LENGTH('dias')) AS Subcadena;

-- 9)
-- 9.1)
SELECT RTRIM(' HOLA ESTUDiante ') AS Sin_Espacios_Derecha;

-- 9.2)
SELECT LTRIM(' HOLA ESTUDiante ') AS Sin_Espacios_Izquierda;

-- 9.3)
SELECT REPLACE(' HOLA ESTUDiante ', 'ESTUDiante', '*') AS Reemplazo;

-- 9.4)
SELECT LOWER(' HOLA ESTUDiante ') AS Minusculas;

-- 9.5)
SELECT UPPER(' HOLA ESTUDiante ') AS Mayusculas;

-- 10)
-- 10.1)
ALTER TABLE empleados
ADD COLUMN cantidad INT UNSIGNED NOT NULL;

-- 10.2)
ALTER TABLE empleados
MODIFY COLUMN cantidad DECIMAL(7,2) NOT NULL;

-- 10.3)
ALTER TABLE empleados
CHANGE COLUMN cantidad cantidad_total DECIMAL(10,2) NOT NULL;

-- 10.4)
ALTER TABLE empleados
DROP COLUMN cantidad_total;

-- 10.5)
ALTER TABLE empleados
RENAME TO empleados_norte;
