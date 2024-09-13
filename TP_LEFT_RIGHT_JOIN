-- CREATE DATABASE empresa;
USE empresa;

-- 1)
DROP TABLE IF EXISTS socios;
DROP TABLE IF EXISTS inscriptos;

-- 2)
 create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 
create table inscriptos(
	documento char(8) not null, 
	deporte varchar(15) not null,
	año year,
	matricula char(1), 
	primary key(documento,deporte,año)
);

-- 3)
insert into socios values('22333444','Juan Perez','Colon 234');
insert into socios values('23333444','Maria Lopez','Sarmiento 465');
insert into socios values('24333444','Antonio Juarez','Caseros 980');
insert into socios values('25333444','Marcelo Pereyra','Sucre 349');

insert into inscriptos values ('22333444','natacion','2015','s');
insert into inscriptos values ('22333444','natacion','2016','n');
insert into inscriptos values ('23333444','natacion','2015','s');
insert into inscriptos values ('23333444','tenis','2016','s');
insert into inscriptos values ('23333444','natacion','2016','s');
insert into inscriptos values ('24333444','tenis','2016','n');
insert into inscriptos values ('24333444','basquet','2016','n');

-- 4)
select s.documento,nombre,i.deporte,i.año,i.matricula
  from socios as s
  left join inscriptos as i
  on s.documento=i.documento;
  
-- 5)
select s.documento,nombre,i.deporte,i.año,i.matricula
  from inscriptos as i
  right join socios as s
  on s.documento=i.documento;
  
-- 6)
insert into inscriptos values ('26333444','basquet','2016','n');
 
-- 7)
select nombre,i.documento,deporte,i.año,i.matricula
  from socios as s
  right join inscriptos as i
  on s.documento=i.documento;
