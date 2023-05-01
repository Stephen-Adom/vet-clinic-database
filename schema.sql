/* Database schema to keep the structure of entire database. */

CREATE TABLE animal (id BIGSERIAL PRIMARY KEY, name VARCHAR(50), date_of_birth DATE, escape_attempts INT, neutered BOOL, weight_kg DECIMAL);