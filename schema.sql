/* Database schema to keep the structure of entire database. */

CREATE TABLE animal (id BIGSERIAL PRIMARY KEY, name VARCHAR(50), date_of_birth DATE, escape_attempts INT, neutered BOOL, weight_kg DECIMAL);

ALTER TABLE animal ADD COLUMN species VARCHAR(100);

CREATE TABLE owner (id BIGSERIAL PRIMARY KEY, full_name VARCHAR(150), age INT);

CREATE TABLE species (id BIGSERIAL PRIMARY KEY, name VARCHAR(150));

ALTER TABLE animal DROP COLUMN IF EXISTS species;

ALTER TABLE animal ADD COLUMN species_id INT;

ALTER TABLE animal ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animal ADD COLUMN owner_id INT;

ALTER TABLE animal ADD CONSTRAINT fk_owner FOREIGN KEY(owner_id) REFERENCES owner(id);