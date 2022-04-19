USE sys;

DROP DATABASE IF EXISTS MadaTournoi;
Create database if not exists MadaTournoi;

Use MadaTournoi;

Create table if not exists Pays(
IdPays int NOT NULL auto_increment,
NomPays varchar(50) NOT NULL,
Drapeau varchar(100),
Primary key (IdPays)
);

Create table if not exists Game(
IdGame int NOT NULL auto_increment,
Nom varchar(50) NOT NULL,
DateSortie varchar(50),
TypeJeu varchar(50),
DescriptionJeu varchar(1000),
Logo varchar(100),
PRIMARY KEY(idGame)
);


CREATE TABLE IF NOT EXISTS Utilisateur (
	IdJoueur INT auto_increment,
	Username VARCHAR(50) UNIQUE,
	Password VARCHAR(100),
	Courriel VARCHAR(50) UNIQUE,
	Prenom VARCHAR(50),
	Nom VARCHAR(50),
	Ville VARCHAR(50),
	Presentation TEXT,
	Avatar VARCHAR(50),
	IdPays INT,
	IdGame INT,
	DateJoined VARCHAR(20),
    PRIMARY KEY (IdJoueur),
    FOREIGN KEY (IdGame) REFERENCES Game (IdGame),
    FOREIGN KEY (IdPays) REFERENCES Pays (IdPays)
);


Create table if not exists Equipe(
IdEquipe int NOT NULL auto_increment,
NomEquipe varchar(100) NOT NULL UNIQUE,
Presentation varchar(1000),
Logo varchar(1000),
IdOwner int NOT NULL,
IdPays int,
IdGame int,
PRIMARY KEY (IdEquipe),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdPays) REFERENCES Pays (IdPays),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);


CREATE TABLE IF NOT EXISTS Tournoi(
IdTournoi int NOT NULL auto_increment,
nomTournoi varchar(50),
dateDebut varchar(50),
minEquipe int,
maxEquipe int,
minJoueur int,
maxJoueur int,
IdGame int,
IdOwner int NOT NULL,
Logo varchar(1000),
PRIMARY KEY (IdTournoi),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);

CREATE TABLE IF NOT EXISTS Partie(
IdMatch int NOT NULL auto_increment,
dateMatch varchar(50),
heureMatch varchar(10),
idEquipe1 int,
idEquipe2 int,
scoreEquipe1 int,
scoreEquipe2 int,
idTournoi int,
idGagnant int,
PRIMARY KEY (IdMatch),
FOREIGN KEY (IdEquipe1) REFERENCES Equipe (IdEquipe),
FOREIGN KEY (IdEquipe2) REFERENCES Equipe (IdEquipe),
FOREIGN KEY (IdTournoi) REFERENCES Tournoi (IdTournoi)
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
