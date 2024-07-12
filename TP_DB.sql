CREATE DATABASE empresa;
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
values (22, "Pablo Rodriguez", 'm', "Galvan","Salta", 22, '2015-12-17','2015-12-17',200.50);
