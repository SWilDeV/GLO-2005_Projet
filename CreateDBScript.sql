USE sys;

DROP DATABASE IF EXISTS ChallongeII;
Create database if not exists ChallongeII;

Use ChallongeII;

Create table if not exists Pays(
IdPays int NOT NULL,
NomPays varchar(50) NOT NULL,
Drapeau varchar(100) NOT NULL,
Primary key (IdPays)
);

Create table if not exists Game(
idGame int NOT NULL,
Nom varchar(50) NOT NULL,
DateSortie int,
TypeJeu varchar(50),
DescriptionJeu varchar(1000),
Logo varchar(100),
PRIMARY KEY(idGame)
);

Create table if not exists Utilisateur(
IdJoueur int NOT NULL,
Username varchar(20) NOT NULL UNIQUE,
-- password
Prenom varchar(50),
Nom varchar(50),
Telephone varchar(20),
Courriel varchar(75),
Adresse varchar(200),
Presentation varchar(1000),
Avatar varchar(100),
idPays int,
IdGame int,
PRIMARY KEY (IdJoueur),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame),
FOREIGN KEY (IdPays) REFERENCES Pays (IdPays)
);

Create table if not exists Equipe(
IdEquipe int NOT NULL,
NomEquipe varchar(100) NOT NULL,
Presentation varchar(1000),
Logo varchar(100),
IdOwner int NOT NULL,
IdPays int,
idGame int,
PRIMARY KEY (IdEquipe),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdPays) REFERENCES Pays (IdPays),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);

CREATE TABLE IF NOT EXISTS Tournoi(
IdTournoi int NOT NULL,
minEquipe int,
maxEquipe int,
minJoueur int,
maxJoueur int,
typeTournoi int,
IdGame int,
IdOwner int NOT NULL,
PRIMARY KEY (IdTournoi),
FOREIGN KEY (IdOwner) REFERENCES Utilisateur (IdJoueur),
FOREIGN KEY (IdGame) REFERENCES Game (IdGame)
);

CREATE TABLE IF NOT EXISTS MembresEquipe(
IdJoueur int NOT NULL,
IdEquipe int NOT NULL,
DateJoined datetime NOT NULL,
DateLeft datetime,
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




