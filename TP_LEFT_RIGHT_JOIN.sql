-- CREATE DATABASE empresa;
USE empresa;

-- 1)
DROP TABLE IF EXISTS socios;
DROP TABLE IF EXISTS inscriptos;

-- 2)
 CREATE TABLE socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 
CREATE TABLE inscriptos(
	documento char(8) not null, 
	deporte varchar(15) not null,
	año year,
	matricula char(1), 
	primary key(documento,deporte,año)
);

-- 3)
INSERT INTO socios VALUES('22333444','Abdeslam Espinoza','Colon 234');
INSERT INTO socios VALUES('23333444','Maria Lopez','Sarmiento 465');
INSERT INTO socios VALUES('24333444','Victor Menendez','Caseros 980');
INSERT INTO socios VALUES('25333444','Maria Fatima Acosta','Sucre 349');

INSERT INTO inscriptos VALUES('22333444','natacion','2015','s');
INSERT INTO inscriptos VALUES('22333444','natacion','2016','n');
INSERT INTO inscriptos VALUES('23333444','natacion','2015','s');
INSERT INTO inscriptos VALUES('23333444','tenis','2016','s');
INSERT INTO inscriptos VALUES('23333444','natacion','2016','s');
INSERT INTO inscriptos VALUES('24333444','tenis','2016','n');
INSERT INTO inscriptos VALUES('24333444','basquet','2016','n');

-- 4)
SELECT s.documento,nombre,i.deporte,i.año,i.matricula
  FROM socios AS s
  LEFT JOIN inscriptos AS i
  ON s.documento=i.documento;
  
-- 5)
SELECT s.documento,nombre,i.deporte,i.año,i.matricula
  FROM inscriptos AS i
  RIGHT JOIN socios AS s
  ON s.documento=i.documento;
  
-- 6)
INSERT INTO inscriptos VALUES('26333444','basquet','2016','n');
 
 -- 7)
 SELECT nombre,i.documento,deporte,i.año,i.matricula
  FROM socios AS s
  RIGHT JOIN inscriptos AS i
  ON s.documento=i.documento;
