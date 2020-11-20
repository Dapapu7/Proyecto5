drop database if exists clase;   -- Borrar la base de datos
create database clase;  -- Crear la base de datos 
show databases;  -- Mostrar la base de datos 
use clase;   -- Decir al SGBD qué voy a usar esa base de datos
-- Borrar tablas --
drop table if exists alumnos;
drop table if exists profesores;
-- Crear tablas --
create table alumnos(
nombre varchar(20),
apellidos varchar(30)
);
create table profesores(
nombre varchar(20),
asignaturas varchar(20)
);
-- Mostrar la descripcion --
describe alumnos;
describe profesores;
-- Poblar las tablas --
insert into alumnos (nombre, apellidos) values ('David', 'Pavo');
insert into alumnos (nombre, apellidos) values ('Claudia', 'Cortés');
insert into alumnos (nombre, apellidos) values ('Andres', 'Villani');
insert into alumnos (nombre, apellidos) values ('Daniel', 'Gil');
insert into alumnos (nombre, apellidos) values ('Chema', 'Parras');

insert into profesores (nombre, asignaturas) values ('Olga', 'BBDD');
insert into profesores (nombre, asignaturas) values ('Rodrigo', 'Programación');
insert into profesores (nombre, asignaturas) values ('Sergio', 'Sistemas Informáticos');
insert into profesores (nombre, asignaturas) values ('Anna Cristina', 'Inglés');
insert into profesores (nombre, asignaturas) values ('Reyes', 'Empresa');
-- Mostrar los registros -- 
select nombre,apellidos from alumnos;
select nombre from alumnos where nombre <> 'David';

select * from profesores;
select asignaturas from profesores;

select asignaturas from profesores where nombre = 'Olga';
select nombre from profesores where nombre <> 'Olga';
