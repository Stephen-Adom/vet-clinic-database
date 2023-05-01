/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animal WHERE name LIKE '%mon';

SELECT name from animal WHERE date_of_birth  >= '2016-01-01' AND date_of_birth <= '2019-01-01';

SELECT name FROM animal WHERE neutered = true AND escape_attempts < 3;

SELECT date_of_birth FROM animal WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animal WHERE weight_kg > 10.5;

SELECT * from animal WHERE name != 'Gabumon';

SELECT * from animal WHERE neutered = true;

SELECT * FROM animal WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;