DROP DATABASE IF EXISTS databaseRicercatori;
CREATE DATABASE databaseRicercatori;
USE databaseRicercatori;

create table Ricercatore(
    ID SMALLINT(6) PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    Cognome VARCHAR(30) NOT NULL,
    Dipartimento SMALLINT(6) REFERENCES Dipartimento(ID)
);

create table Dipartimento(
    ID SMALLINT(6) PRIMARY KEY,
    Indirizzo VARCHAR(50),
    City VARCHAR(50) REFERENCES Regione(ID)
);
CREATE TABLE Regione(
    ID VARCHAR(15),
    Regione VARCHAR(25)
);