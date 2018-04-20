#----	Création de la base de données Green'Tech -----

DROP DATABASE IF EXISTS greentech;

CREATE DATABASE greentech;

USE greentech;
#----- Création des tables -----

DROP TABLE IF EXISTS company;

CREATE TABLE company(
	IdCompany int,
	SIREN VARCHAR(20) NOT NULL,
	RaisonSocial VARCHAR(20),
	Tel VARCHAR(10),
	Mail VARCHAR(50),
	web VARCHAR(50),
	Description VARCHAR(255),
	Latitude DECIMAL(9,6),
	Longitude DECIMAL(9,6),
	Constraint PK_Company PRIMARY KEY(IdCompany)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS categorie;

CREATE TABLE categorie(
	IdCatego int,
	Title VARCHAR(100),
	Description VARCHAR(255),
	Constraint PK_Catego PRIMARY KEY(IdCatego)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS commentaire;

CREATE TABLE commentaire(
	IdComm int,
	Note int,
	Commentaires VARCHAR(255),
	Constraint PK_Comm PRIMARY KEY(IdComm)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS company_catego;

CREATE TABLE company_catego(
  Catego int,
  Company int,
  CONSTRAINT FK_catego FOREIGN KEY (Catego) REFERENCES categorie(IdCatego),
  CONSTRAINT FK_company FOREIGN KEY (Company) REFERENCES company(IdCompany)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS company_commentaire;

CREATE TABLE company_commentaire(
  Comment int,
  CompanyId int,
  CONSTRAINT FK_comm FOREIGN KEY (Comment) REFERENCES commentaire(IdComm),
  CONSTRAINT FK_companyCom FOREIGN KEY (CompanyId) REFERENCES company(IdCompany)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `company` (`IdCompany`, `SIREN`, `RaisonSocial`, `Tel`, `Mail`, `web`, `Description`, `Latitude`, `Longitude`) VALUES
(1, '5834846541', 'La Plume du Phoenix', '0613449556', 'mickael.carpene@gmail.com', 'www.laplumeduphoenix.com', 'Bla bla bla', '50.373893', '3.554130');