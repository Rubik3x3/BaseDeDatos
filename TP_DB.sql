-- 1)
CREATE DATABASE empresa;
USE empresa;

-- 2)
DROP TABLE IF EXISTS empleados;

-- 3)
CREATE TABLE empleados(
    documento INTEGER UNSIGNED PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    sexo CHAR(1),
    domicilio VARCHAR(30),
    localidad VARCHAR(25),
    telefono INTEGER UNSIGNED NOT NULL,
    fechaingreso DATE NOT NULL,
    fechanacimiento DATE NOT NULL,
    sueldobasico DECIMAL(5,2) NOT NULL
);

-- 4)
INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
VALUES 
    (1, "Pablo Rodriguez", 'M', "Galvan 123", "Salta", '111-222-333', '2021-01-15', '1990-05-20', 55.75),
    (2, "Dionisio Miguel", 'M', "Av. Libertador 456", "Salta", '222-333-444', '2020-02-25', '1985-08-10', 50.50),
    (3, "Soraya Trillo", 'F', "Avenida Rivadavia 789", "Capital Federal", '333-444-555', '2019-03-05', '1988-11-15', 65.50),
    (4, "Itziar Echevarria", 'F', "Calle Corrientes 1010", "Capital Federal", '444-555-666', '2018-04-10', '1992-12-25', 72.25),
    (5, "Eduardo Castañeda", 'M', "Calle Belgrano 2020", "Córdoba", '555-666-777', '2017-05-20', '1986-07-30', 60.00),
    (6, "Ruben Exposito", 'M', "Av. San Martin 3030", "Córdoba", '666-777-888', '2016-06-30', '1991-03-05', 52.50),
    (7, "Montserrat Carpio", 'M', "Avenida Santa Fe 4040", "Mendoza", '777-888-999', '2015-07-15', '1987-01-20', 68.75),
    (8, "Jacinta Tortosa", 'F', "Calle Cabildo 5050", "Mendoza", '888-999-000', '2014-08-25', '1993-06-15', 74.00),
    (9, "Emiliano Ripoll", 'M', "Av. de Mayo 6060", "Misiones", '999-000-111', '2013-09-10', '1992-11-01', 80.50),
    (10, "Almudena Baena", 'F', "Calle 7 de Julio 7070", "Misiones", '000-111-222', '2012-10-20', '1994-04-25', 90.00);

-- 5)
SELECT * FROM empleados ORDER BY documento ASC;

-- 6)
SELECT * FROM empleados ORDER BY sueldobasico DESC;

-- 7)
SELECT COUNT(*) FROM empleados WHERE fechaingreso >= '2015-01-01';

-- 8)
SELECT COUNT(*) FROM empleados WHERE sueldobasico IS NOT NULL;

-- 9)
SELECT SUM(sueldobasico) FROM empleados WHERE fechaingreso > '2018-08-15';

-- 10)
SELECT MAX(sueldobasico) FROM empleados WHERE localidad = "Capital Federal";

-- 11)
SELECT MIN(sueldobasico) FROM empleados;

-- 12)
SELECT AVG(sueldobasico) FROM empleados;

-- 13)
SELECT 
    SUM(CASE WHEN sexo = 'f' THEN 1 ELSE 0 END) AS ramos_rosas,
    SUM(CASE WHEN sexo = 'm' THEN 1 ELSE 0 END) AS corbatas
FROM empleados
WHERE MONTH(fechanacimiento) = 8;

-- 14)
SELECT 
    YEAR(fechaingreso) AS año_ingreso,
    COUNT(*) AS cantidad_empleados
FROM empleados
GROUP BY YEAR(fechaingreso);

-- 15)
UPDATE empleados SET documento = 25399178 WHERE nombre = "Pablo Rodriguez" AND localidad = "Salta";

