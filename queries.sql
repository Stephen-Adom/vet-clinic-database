/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animal WHERE name LIKE '%mon';

SELECT name from animal WHERE date_of_birth  >= '2016-01-01' AND date_of_birth <= '2019-12-31';

SELECT name FROM animal WHERE neutered = true AND escape_attempts < 3;

SELECT date_of_birth FROM animal WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animal WHERE weight_kg > 10.5;

SELECT * from animal WHERE name != 'Gabumon';

SELECT * from animal WHERE neutered = true;

SELECT * FROM animal WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;

DELETE FROM animal WHERE date_of_birth > '2022-01-01';

SAVEPOINT delete_from_date;

UPDATE animal SET weight_kg = weight_kg * -1;

SAVEPOINT update_weight_by_1;

ROLLBACK TO delete_from_date;

UPDATE animal SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;


SELECT COUNT(id) AS total_animals FROM animal;

SELECT COUNT(id) AS total_animals FROM animal WHERE escape_attempts = 0;

SELECT ROUND(AVG(weight_kg), 2) AS avg_weight FROM animal;

SELECT neutered, MAX(escape_attempts) AS most_escape FROM animal GROUP BY neutered;

SELECT MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animal GROUP BY species;

SELECT species, ROUND(AVG(escape_attempts), 2) AS avg_attempt FROM animal WHERE date_of_birth BETWEEN DATE '1990-01-01' AND '2000-12-31' GROUP BY species;
