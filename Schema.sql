/*
CREATE DATABASE SQLUG_2020;

USE SQLUG_2020;
*/

CREATE TABLE dbo.Transaktioner (
    �r              tinyint NOT NULL,
    Verifikationsnr int NOT NULL,
    Radnr           tinyint NOT NULL,
    Datum           date NOT NULL,
    Konto           smallint NOT NULL,
    Kst             varchar(8) NULL,
    Belopp          numeric(16, 2) NOT NULL,
    CONSTRAINT PK_Transaktioner PRIMARY KEY CLUSTERED (�r, Verifikationsnr, Radnr)
);

CREATE TABLE dbo.Saldon (
    �r              tinyint NOT NULL,
    Konto           smallint NOT NULL,
    Kst             varchar(8) NULL,
    Saldo           numeric(16, 2) NOT NULL,
);

CREATE UNIQUE CLUSTERED INDEX PK_Saldon ON dbo.Saldon (�r, Konto, Kst);
