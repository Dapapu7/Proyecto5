-- Mostramos todas las bases de datos --
show databases;
-- Borramos la base de datos --
drop database if exists pokemonLeague;
-- Creamos una base de datos y la mostramos -- 
create database pokemonLeague;
show databases;
-- Usamos una base de datos --
use pokemonLeague;
-- Borramos tablas --
-- drop table if exists Move_T;
-- drop table if exists Pokemon;
-- drop table if exists Battle_T;
-- drop table if exists Stadium_T;
-- drop table if exists Trainer;
-- drop table if exists Moveset;
-- drop table if exists BattleRecord_T;
-- Creamos las tablas -- 
create table Move_T(
moveID integer unsigned,
move_name varchar(255),
type_movement varchar (255)
);
create table Pokemon(
pokemonID integer unsigned,
name_pokemon varchar (255),
type_pokemon varchar (255),
subtype_pokemon varchar (255),
ability varchar (255),
nature varchar (255),
gender varchar (255),
trainerID integer unsigned
);
create table Stadium_T(
stadiumID integer unsigned,
name_stadium varchar (255),
city varchar (255),
region varchar (255)
);
create table Battle_T(
battleID integer unsigned,
trainer_AID integer unsigned,
trainer_BID integer unsigned,
stadiumID integer unsigned
);
create table Trainer(
trainerID integer unsigned,
name_trainer varchar (255),
gender varchar (255),
home_region varchar (255)
);
create table Moveset(
movesetID integer unsigned,
pokemonID integer unsigned,
moveID integer unsigned
);
create table BattleRecord_T(
recordID integer unsigned,
wins integer unsigned,
losses integer unsigned,
win_losses_ratio double,
trainerID integer unsigned
);
-- Describimos cada tabla --
describe Move_T;
describe Pokemon;
describe Battle_T;
describe Stadium_T;
describe Trainer;
describe Moveset;
describe BattleRecord_T;
-- Insertamos los datos --
       -- Datos en Move_T --
insert into Move_T (moveID, move_name, type_movement) values (1, 'Arañazo', 'Normal');
insert into Move_T (moveID, move_name, type_movement) values (2, 'Pistola agua', 'Agua');
insert into Move_T (moveID, move_name, type_movement) values (3, 'Garra dragón', 'Dragón');
insert into Move_T (moveID, move_name, type_movement) values (4, 'Trueno', 'Eléctrico');
insert into Move_T (moveID, move_name, type_movement) values (5, 'Mordisco', 'Siniestro');
		-- Pokemon --
insert into Pokemon (pokemonID, name_pokemon, type_pokemon, subtype_pokemon, ability, nature, gender, trainerID) values (1, 'Bulbasaur', 'Planta', 'Veneno', 'Espesura', 'Firme', 'M', 1);
insert into Pokemon (pokemonID, name_pokemon, type_pokemon, subtype_pokemon, ability, nature, gender, trainerID) values (2, 'Charmander', 'Fuego', null, 'Mar llamaas', 'Alocada', 'H', 2);
insert into Pokemon (pokemonID, name_pokemon, type_pokemon, subtype_pokemon, ability, nature, gender, trainerID) values (3, 'Squirtle', 'Agua', null, 'Torrente', 'Osada', 'M', 3);
insert into Pokemon (pokemonID, name_pokemon, type_pokemon, subtype_pokemon, ability, nature, gender, trainerID) values (4, 'Jigglypuff', 'Normal', 'Hada', 'Gran Encanto', 'Agitada', 'H', 4);
insert into Pokemon (pokemonID, name_pokemon, type_pokemon, subtype_pokemon, ability, nature, gender, trainerID) values (5, 'Onix', 'Roca', 'Tierra', 'Robustez', 'Cauta', 'No definido', 5);
		-- Battle_T --
insert into Battle_T (battleID, trainer_AID, trainer_BID, stadiumID) values (1, 1, 2, 1);
insert into Battle_T (battleID, trainer_AID, trainer_BID, stadiumID) values (2, 3, 5, 2);
insert into Battle_T (battleID, trainer_AID, trainer_BID, stadiumID) values (3, 2, 4, 3);
insert into Battle_T (battleID, trainer_AID, trainer_BID, stadiumID) values (4, 1, 3, 4);
insert into Battle_T (battleID, trainer_AID, trainer_BID, stadiumID) values (5, 3, 4, 5);
		-- Stadium_T --
insert into Stadium_T (stadiumID, name_stadium, city, region) values (1, 'Gimnasio Veilstone', 'Ciudad Rocavelo', 'Teselia');
insert into Stadium_T (stadiumID, name_stadium, city, region) values (2, 'Gimnasio de Kanto', 'Ciudad Rocavelo', 'Kanto');
insert into Stadium_T (stadiumID, name_stadium, city, region) values (3, 'Gimnasio Brock', 'Ciudad Plateada', 'Johto');
insert into Stadium_T (stadiumID, name_stadium, city, region) values (4, 'Gimnasio Misty', 'Ciudad Celeste', 'Galar');
insert into Stadium_T (stadiumID, name_stadium, city, region) values (5, 'Gimnasio Pegaso', 'Ciudad Malva', 'Sinnoh');
		-- Trainer --
insert into Trainer (trainerID, name_trainer, gender, home_region) values (1, 'Ash', 'H', 'Kanto');
insert into Trainer (trainerID, name_trainer, gender, home_region) values (2, 'Brock', 'H', 'Kalos');
insert into Trainer (trainerID, name_trainer, gender, home_region) values (3, 'Misty', 'M', 'Johto');
insert into Trainer (trainerID, name_trainer, gender, home_region) values (4, 'Iris', 'M', 'Unova');
insert into Trainer (trainerID, name_trainer, gender, home_region) values (5, 'Max', 'H', 'Hoenn');
		-- Moveset --
insert into Moveset (movesetID, pokemonID, moveID) values (1, 2, 3);
insert into Moveset (movesetID, pokemonID, moveID) values (2, 1, 5);
insert into Moveset (movesetID, pokemonID, moveID) values (3, 4, 2);
insert into Moveset (movesetID, pokemonID, moveID) values (4, 5, 1);
insert into Moveset (movesetID, pokemonID, moveID) values (5, 3, 4);
		-- BattleRecord_T --
insert into BattleRecord_T (recordID, wins, losses, win_losses_ratio, trainerID) values (1, 3, 1, 33.3, 5);
insert into BattleRecord_T (recordID, wins, losses, win_losses_ratio, trainerID) values (2, 10, 0, 100, 1);
insert into BattleRecord_T (recordID, wins, losses, win_losses_ratio, trainerID) values (3, 5, 9, 55.5, 3);
insert into BattleRecord_T (recordID, wins, losses,win_losses_ratio, trainerID) values (4, 0, 10, 0, 2);
insert into BattleRecord_T (recordID, wins, losses, win_losses_ratio, trainerID) values (5, 23, 17, 43.2, 4);
-- Seleccionamos todos --
select * from Move_T;
select * from Pokemon;
select * from Battle_T;
select * from Stadium_T;
select * from Trainer;
select * from Moveset;
select * from BattleRecord_T;
-- Seleccionamos todos los pokemons de tipo agua --
select * from Pokemon where type_pokemon = 'agua';
-- Seleccionamos el id del entrenador y el número de batallas perdidas y ganadas de cada uno --
select wins,losses,trainerID from BattleRecord_T;
-- Seleccionamos aquellos entrenadores que no han perdido nunca --
select * from BattleRecord_T where losses = 0;
-- Seleccionamos los entrenadores cuyo género es mujer --
select * from Trainer where gender = 'M';

