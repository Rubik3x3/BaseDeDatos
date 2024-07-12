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
    (1, "Pablo Rodriguez", 'm', "Galvan", "Salta", 22, '2015-12-17', '2015-12-17', 50.50),
    (2, "Pablo Hernandez", 'm', "Galvan", "Salta", 22, '2015-12-17', '2015-12-17', 40.50),
    (3, "Pablo Rodriguez", 'm', "Galvan", "Capital Federal", 22, '2010-12-17', '1980-12-17', 30.50),
    (4, "Pablo Rodriguez", 'm', "Galvan", "Capital Federal", 22, '2010-12-17', '1980-12-17', 70.50),
    (5, "Pablo Rodriguez", 'm', "Galvan", "Córdoba", 22, '2010-12-17', '1980-12-17', 100.50),
    (6, "Pablo Rodriguez", 'm', "Galvan", "Córdoba", 22, '2010-12-17', '1980-12-17', 20.50),
    (7, "Pablo Rodriguez", 'm', "Galvan", "Mendoza", 22, '2010-12-17', '1980-12-17', 50.50),
    (8, "Pablo Rodriguez", 'm', "Galvan", "Mendoza", 22, '2020-12-17', '1980-12-17', 80.50),
    (9, "Pablo Rodriguez", 'm', "Galvan", "Misiones", 22, '2010-12-17', '1980-12-17', 95.50),
    (10, "Pablo Rodriguez", 'm', "Galvan", "Misiones", 22, '2023-12-17', '1980-12-17', 35.50);

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

