USE empresa;
DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados(
	documento integer unsigned primary key,
    nombre varchar(30) not null,
    sexo char(1),
    domicilio varchar(30),
    localidad varchar(25),
    telefono integer unsigned not null,
    fechaingreso date not null,
    fechanacimiento date not null,
    sueldobasico dec(5,2) unsigned not null
);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (1, "Pablo Rodriguez", 'm', "Galvan","Salta", 22, '2015-12-17','2015-12-17',50.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (2, "Pablo Rodriguez", 'm', "Galvan","Salta", 22, '2015-12-17','2015-12-17',40.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (3, "Pablo Rodriguez", 'm', "Galvan","Capital Federal", 22, '2010-12-17','1980-12-17',30.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (4, "Pablo Rodriguez", 'm', "Galvan","Capital Federal", 22, '2010-12-17','1980-12-17',70.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (5, "Pablo Rodriguez", 'm', "Galvan","Córdoba", 22, '2010-12-17','1980-12-17',100.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (6, "Pablo Rodriguez", 'm', "Galvan","Córdoba", 22, '2010-12-17','1980-12-17',20.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (7, "Pablo Rodriguez", 'm', "Galvan","Mendoza", 22, '2010-12-17','1980-12-17',50.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (8, "Pablo Rodriguez", 'm', "Galvan","Mendoza", 22, '2010-12-17','1980-12-17',80.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (9, "Pablo Rodriguez", 'm', "Galvan","Misiones", 22, '2010-12-17','1980-12-17',95.50);

INSERT INTO empleados (documento, nombre, sexo, domicilio, localidad, telefono, fechaingreso, fechanacimiento, sueldobasico) 
values (10, "Pablo Rodriguez", 'm', "Galvan","Misiones", 22, '2010-12-17','1980-12-17',35.50);

SELECT * FROM empleados order by documento asc;
SELECT * FROM empleados order by sueldobasico desc;
