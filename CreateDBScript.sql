USE sys;

DROP DATABASE IF EXISTS ChallongeII;
Create database if not exists ChallongeII;

Use ChallongeII;

Create table if not exists Pays(
IdPays int NOT NULL,
NomPays varchar(50) NOT NULL,
Drapeau varchar(100),
Primary key (IdPays)
);

Create table if not exists Game(
IdGame int NOT NULL,
Nom varchar(50) NOT NULL,
DateSortie varchar(50),
TypeJeu varchar(50),
DescriptionJeu varchar(1000),
Logo varchar(100),
PRIMARY KEY(idGame)
);

CREATE TABLE IF NOT EXISTS Utilisateur (
	IdJoueur INT,
	Username VARCHAR(50),
	Password VARCHAR(100),
	Courriel VARCHAR(50),
	Prenom VARCHAR(50),
	Nom VARCHAR(50),
	Ville VARCHAR(50),
	Presentation TEXT,
	Avatar VARCHAR(50),
	IdPays INT,
	IdGame INT,
	DateJoined VARCHAR(20),
    PRIMARY KEY (IdJoueur)
    -- FOREIGN KEY (IdGame) REFERENCES Game (IdGame),
    -- FOREIGN KEY (IdPays) REFERENCES Pays (IdPays)
);

-- Create table if not exists Utilisateur(
-- IdJoueur int NOT NULL,
-- Username varchar(20) NOT NULL UNIQUE,
-- Password varchar(100) NOT NULL,
-- Prenom varchar(50),
-- Nom varchar(50),
-- Telephone varchar(20),
-- Courriel varchar(75),
-- Ville varchar(200),  --remplace adresse
-- Presentation TEXT,  --remplace varchar(1000)
-- Avatar varchar(100),
-- Pays varchar(40), --remplace idPays
-- IdGame int,   --pourquoi?
-- DateJoined Date, --pas sur que ca marche
-- PRIMARY KEY (IdJoueur),
-- FOREIGN KEY (IdGame) REFERENCES Game (IdGame),
-- FOREIGN KEY (IdPays) REFERENCES Pays (IdPays)
-- );


Create table if not exists Equipe(
IdEquipe int NOT NULL,
NomEquipe varchar(100) NOT NULL,
Presentation varchar(1000),
Logo varchar(100),
IdOwner int NOT NULL,
IdPays int,
IdGame int,
PRIMARY KEY (IdEquipe),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdPays) REFERENCES Pays (IdPays),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);


CREATE TABLE IF NOT EXISTS Tournoi(
IdTournoi int NOT NULL,
nomTournoi varchar(50),
dateDebut varchar(50),
minEquipe int,
maxEquipe int,
minJoueur int,
maxJoueur int,
IdGame int,
IdOwner int NOT NULL,
PRIMARY KEY (IdTournoi),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);

CREATE TABLE IF NOT EXISTS MembresEquipe(
IdJoueur int NOT NULL,
IdEquipe int NOT NULL,
DateJoined varchar(50) NOT NULL,
DateLeft varchar(50),
PRIMARY KEY(IdJoueur, IdEquipe),
FOREIGN KEY (IdEquipe) REFERENCES Equipe (IdEquipe),
FOREIGN KEY (IdJoueur) REFERENCES Utilisateur (IdJoueur)
);

CREATE TABLE IF NOT EXISTS Inscription(
IdEquipe int NOT NULL,
IdTournoi int NOT NULL,
PRIMARY KEY (IdEquipe, IdTournoi),
FOREIGN KEY (IdEquipe) REFERENCES Equipe (IdEquipe),
FOREIGN KEY (IdTournoi) REFERENCES Tournoi (IdTournoi)
);
