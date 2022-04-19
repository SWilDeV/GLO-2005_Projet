USE MadaTournoi;

DELIMITER //
CREATE TRIGGER gagnantMatch
BEFORE UPDATE ON Partie
FOR EACH ROW
BEGIN

IF NEW.scoreEquipe1 > NEW.scoreEquipe2 THEN 
SET NEW.idGagnant = NEW.idEquipe1;
END IF;

IF NEW.scoreEquipe1 < NEW.scoreEquipe2 THEN
SET NEW.idGagnant = NEW.idEquipe2;
END IF;

END;//


CREATE TRIGGER validationInscription
BEFORE INSERT ON Inscription
FOR EACH ROW
BEGIN

DECLARE idJoueur int;
DECLARE lecture_complete integer DEFAULT FALSE; 

DECLARE curseur CURSOR FOR
SELECT M.idJoueur
FROM MembresEquipe M
WHERE M.idEquipe = NEW.idEquipe
AND M.DateLeft IS NULL;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET lecture_complete = TRUE;

OPEN curseur;
FETCH curseur INTO idJoueur;


-- Valider qu'un joueur n'est pas inscrit dans une autre équipe du même tournoi
lecteur: WHILE lecture_complete = FALSE DO

IF idJoueur IN (SELECT M.idJoueur
FROM MembresEquipe M
INNER JOIN Inscription I ON (I.IdEquipe = M.idEquipe)
WHERE I.IdTournoi = NEW.idTournoi
AND M.DateLeft IS NULL)
THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un des joueurs fait déjà partie d\'une autre équipe du même tournoi';
END IF;

FETCH curseur INTO idJoueur;
END WHILE lecteur;
CLOSE curseur;


-- Valider que le nombre maximal d'équipe n'a pas déjà été atteint
IF (SELECT COUNT(*) FROM Inscription I WHERE I.idTournoi = NEW.idTournoi) >= (SELECT T.maxEquipe FROM Tournoi T WHERE T.idTournoi = NEW.idTournoi) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ce tournoi a déjà atteint le nombre maximal d\'équipes';
END IF;

-- Valider que le nombre de joueur de l'équipe est dans les restrictions du tournoi 
IF (SELECT COUNT(*) FROM MembresEquipe M WHERE NEW.IdEquipe = M.idEquipe) > (SELECT T.maxJoueur FROM Tournoi T WHERE T.idTournoi = NEW.idTournoi)
OR (SELECT COUNT(*) FROM MembresEquipe M WHERE NEW.IdEquipe = M.idEquipe) < (SELECT T.minJoueur FROM Tournoi T WHERE T.idTournoi = NEW.idTournoi) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'L\'équipe a un nombre de joueurs invalide';
END IF;


END;//

CREATE TRIGGER deleteEquipe
BEFORE DELETE ON Equipe
FOR EACH ROW
BEGIN
DELETE FROM Inscription WHERE IdEquipe = OLD.IdEquipe;
DELETE FROM MembresEquipe WHERE IdEquipe = OLD.IdEquipe;
DELETE FROM Partie WHERE IdEquipe1 = OLD.IdEquipe OR IdEquipe2 = OLD.IdEquipe;
END;//

CREATE TRIGGER deleteTournoi
BEFORE DELETE ON Tournoi
FOR EACH ROW
BEGIN
DELETE FROM Inscription WHERE IdTournoi = OLD.IdTournoi;
DELETE FROM Partie WHERE IdTournoi= OLD.IdTournoi;
END;//

CREATE TRIGGER dateMatch
BEFORE INSERT ON Partie
FOR EACH ROW
BEGIN
DECLARE dateDebut varchar(50);
SET dateDebut = (Select dateDebut FROM Tournoi WHERE IdTournoi = NEW.IdTournoi);
IF (STR_TO_DATE(NEW.dateMatch, "%Y-%c-%d") < STR_TO_DATE(dateDebut, "%Y-%c-%d")) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La date du match ne peut pas être avant le début du tournoi';
END IF;
END;//



DELIMITER ;