DROP DATABASE IF EXISTS databaseCase;
CREATE DATABASE databaseCase;
USE databaseCase;

CREATE TABLE propietari(
    Codice_fiscale VARCHAR(16) PRIMARY KEY NOT NULL,
    Nome VARCHAR(20),
    Cognome VARCHAR(20)
);
CREATE TABLE casa(
    ID_casa INT(6) PRIMARY KEY NOT NULL,
    Codice_fiscale VARCHAR(16) NOT NULL,
    FOREIGN KEY (Codice_fiscale) REFERENCES propietari.Codice_fiscale
);
