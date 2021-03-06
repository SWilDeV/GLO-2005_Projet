#Database
from flask import Flask, request, jsonify
from flask_cors import CORS
import pymysql, pymysql.cursors
from flask_bcrypt import Bcrypt
import sys
from datetime import date
from dotenv import load_dotenv
load_dotenv()
import os

class Database:
    def __init__(self):
        db=os.environ.get('DB')
        self.con = pymysql.connect(host='localhost',user=os.environ.get('USER'), password=os.environ.get('PASSWORD'),db=os.environ.get('DB'))
        self.cur=self.con.cursor(pymysql.cursors.DictCursor)


    def list_Users(self):
        self.cur.execute("SELECT IdJoueur, Username, Prenom, Nom, Ville, Presentation, Courriel, NomPays, DateJoined FROM Utilisateur LEFT JOIN Pays ON Pays.IdPays = Utilisateur.IdPays")
        result = self.cur.fetchall()
        return result

    def find_User_by_ID(self, IDUser):
        try:
            sql ="SELECT IdJoueur, Username, Prenom, Nom, Ville, Presentation, Courriel, NomPays, DateJoined FROM Utilisateur LEFT JOIN Pays ON Pays.IdPays = Utilisateur.IdPays WHERE Utilisateur.IdJoueur = %s"
            self.cur.execute(sql,(IDUser))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with find_User_by_ID")
            return "error with find_User_by_ID"
        else:
            result = self.cur.fetchone()
            if result ==None:
                return "User not found"
            else:
                return result

    def getUserByUserName(self, Username):
        try:
            sql ="SELECT IdJoueur, Username,Password, Prenom,Avatar, Nom, Ville, Presentation, Courriel,NomPays, DateJoined FROM Utilisateur LEFT JOIN Pays ON Pays.IdPays WHERE Utilisateur.Username = %s"
            self.cur.execute(sql,(Username))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getUserByUserName")
            return "error with getUserByUserName"
        else:
            result = self.cur.fetchone()
            return result

    def getTeamsByUsers(self, idUser):
        try:
            sql ="SELECT E.*, G.nom AS nomJeu, P.NomPays FROM Equipe E LEFT JOIN Pays P ON E.idPays = P.IdPays LEFT JOIN Game G ON E.idGame = G.IdGame JOIN MembresEquipe ME ON ME.idEquipe = E.idEquipe WHERE ME.idJoueur = %s AND ME.DateLeft IS NULL"
            self.cur.execute(sql,(idUser))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTeamsByUsers")
            return "error with getTeamsByUsers"
        else:
            result = self.cur.fetchall()
            return result

    def getUpcomingMatchesByUsers(self, idUser):
        try:
            sql ="SELECT P.*, E1.nomEquipe AS nomEquipe1, E2.nomEquipe as nomEquipe2, EG.nomEquipe as nomGagnant, T.nomTournoi FROM Partie P LEFT JOIN Tournoi T ON T.IdTournoi = P.idTournoi LEFT JOIN Equipe E1 ON P.IdEquipe1 = E1.IdEquipe LEFT JOIN Equipe E2 ON P.IdEquipe2 = E2.IdEquipe LEFT JOIN Equipe EG ON P.IdGagnant = EG.IdEquipe INNER JOIN Equipe E ON P.idEquipe1 = E.idEquipe OR P.idEquipe2 = E.idEquipe JOIN MembresEquipe ME ON ME.idEquipe = E.idEquipe WHERE ME.idJoueur = %s AND ME.dateLeft IS NULL ORDER BY P.dateMatch"
            self.cur.execute(sql,(idUser))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getUpcomingMatchesByUsers")
            return "error with getUpcomingMatchesByUsers"
        else:
            result = self.cur.fetchmany(5)
            return result

    def getUserTournament(self, idUser):
        try:
            sql ="SELECT Tournoi.*, Game.nom as nomJeu FROM Tournoi LEFT JOIN Game ON Game.IdGame = Tournoi.IdGame INNER JOIN Inscription I ON I.IdTournoi = Tournoi.IdTournoi INNER JOIN MembresEquipe ME ON ME.IdEquipe = I.IdEquipe WHERE ME.IdJoueur = %s"
            self.cur.execute(sql,(idUser))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getUserTournament")
            return "error with getUserTournament"
        else:
            result = self.cur.fetchall()
            return result

    def register_User(self,Username,Password,Courriel,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined):
        try:
            sql = "insert into Utilisateur (Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            self.cur.execute(sql, (Username, Password, Courriel, FirstName, LastName, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined))
            
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("problem with register_User")
        else:
            print("User added") 
            User = self.getUserByUserName(Username)
            return User

    def editUser(self,FirstName,LastName,Ville,IdJoueur,Presentation,IdPays):
        try:
            sql = "UPDATE Utilisateur SET Prenom = %s, Nom = %s, Ville = %s, Presentation = %s, IdPays = %s WHERE IdJoueur = %s"
            self.cur.execute(sql, (FirstName, LastName, Ville, Presentation, IdPays,IdJoueur))

            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("problem with editUser")
        else:
            print("User edited") 
            User = self.find_User_by_ID(IdJoueur)
            return User
    
    def getAllTournaments(self):
        self.cur.execute("SELECT IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, Tournoi.Logo, nom AS nomJeu FROM Tournoi LEFT JOIN Game ON Game.IdGame = Tournoi.IdGame")
        result = self.cur.fetchall()
        return result

    def getTournamentById(self, IdTournoi):
        try:
            sql ="SELECT Tournoi.*, Game.nom as nomJeu FROM Tournoi LEFT JOIN Game ON Game.IdGame = Tournoi.IdGame WHERE Tournoi.idTournoi = %s"
            self.cur.execute(sql,(IdTournoi))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTournamentById")
            return "error with getTournamentById"
        else:
            result = self.cur.fetchone()
            if result ==None:
                return "Tournament not found"
            else:
                return result

    def getTournamentByName(self, nomTournoi):
        try:
            sql ="SELECT Tournoi.*, Game.nom as nomJeu FROM Tournoi LEFT JOIN Game ON Game.IdGame = Tournoi.IdGame WHERE Tournoi.nomTournoi = %s"
            self.cur.execute(sql,(nomTournoi))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTournamentByName")
            return "error with getTournamentByName"
        else:
            result = self.cur.fetchone()
            if result ==None:
                return "Tournament not found"
            else:
                return result
    
    def getTeamsByTournament(self, IdTournoi):
        try:
            sql ="SELECT Equipe.idEquipe, Equipe.nomEquipe, Equipe.logo FROM Equipe INNER JOIN Inscription ON Inscription.IdEquipe = Equipe.idEquipe WHERE Inscription.idTournoi = %s"
            self.cur.execute(sql,(IdTournoi))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTeamsByTournament")
            return "error with getTeamsByTournament"
        else:
            result = self.cur.fetchall()
            return result

    def getMatchesByTournament(self, IdTournoi):
        try:
            sql ="SELECT P.*, E1.nomEquipe AS nomEquipe1, E2.nomEquipe as nomEquipe2, EG.nomEquipe as nomGagnant FROM Partie P LEFT JOIN Equipe E1 ON P.IdEquipe1 = E1.IdEquipe LEFT JOIN Equipe E2 ON P.IdEquipe2 = E2.IdEquipe LEFT JOIN Equipe EG ON P.IdGagnant = EG.IdEquipe WHERE P.idTournoi = %s"
            self.cur.execute(sql,(IdTournoi))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getMatchesByTournament")
            return "error with getMatchesByTournament"
        else:
            result = self.cur.fetchall()
            return result

    def editTournament(self, IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner):
        try:
            sql ="UPDATE Tournoi SET nomTournoi = %s, dateDebut = %s, minEquipe = %s, maxEquipe = %s, minJoueur = %s, maxJoueur = %s, idGame = %s, idOwner = %s WHERE idTournoi = %s"
            self.cur.execute(sql, (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner, IdTournoi))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with editTournament")
            return "error with editTournament"
        else:
            print("Tournament edited") 
            Tournoi = self.getTournamentById(IdTournoi)
            return Tournoi

    def CreateTournament(self, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner):
        try:
            sql ="INSERT INTO Tournoi (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
            self.cur.execute(sql, (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with CreateTournament")
            return "error with CreateTournament"
        else:
            print("Tournament Created")  
            Tournoi = self.getTournamentByName(nomTournoi)
            return Tournoi
    
    def getAllEquipes(self):
        self.cur.execute("SELECT IdEquipe, nomEquipe, Equipe.Logo, IdOwner, nom AS nomJeu FROM Equipe LEFT JOIN Game ON Game.IdGame = Equipe.IdGame ORDER BY nomEquipe")
        result = self.cur.fetchall()
        return result

    def getTeamById(self, IdEquipe):
        try:
            sql ="SELECT Equipe.*, Game.nom AS nomJeu, Pays.NomPays FROM Equipe LEFT JOIN Game ON Game.IdGame = Equipe.IdGame LEFT JOIN Pays ON Pays.IdPays = Equipe.IdPays WHERE Equipe.IdEquipe = %s"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTeamById")
            return "error with getTeamById"
        else:
            result = self.cur.fetchone()
            if result ==None:
                return "Team not found"
            else:
                return result

    def getTeamByName(self, NomEquipe):
        try:
            sql ="SELECT Equipe.*, Game.nom AS nomJeu FROM Equipe LEFT JOIN Game ON Game.IdGame = Equipe.IdGame WHERE Equipe.NomEquipe = %s"
            self.cur.execute(sql,(NomEquipe))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTeamByName")
            return "error with getTeamByName"
        else:
            result = self.cur.fetchone()
            if result ==None:
                return "Team not found"
            else:
                return result

    def getPlayersByTeam(self, IdEquipe):
        try:
            sql ="SELECT U.*, P.nomPays, G.nom AS nomJeu FROM Utilisateur U LEFT JOIN Pays P ON P.IdPays = U.IdPays LEFT JOIN Game G ON G.idGame = U.idGame INNER JOIN MembresEquipe M ON M.IdJoueur = U.IdJoueur WHERE M.IdEquipe = %s AND M.DateLeft IS NULL"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getPlayersByTeam")
            return "error with getPlayersByTeam"
        else:
            result = self.cur.fetchall()
            return result
    
    def getTournamentsByTeam(self, IdEquipe):
        try:
            sql ="SELECT T.*, G.nom AS nomJeu FROM Tournoi T LEFT JOIN Game G ON G.idGame = T.idGame INNER JOIN Inscription I ON I.IdTournoi = T.IdTournoi WHERE I.IdEquipe = %s"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getTournamentsByTeam")
            return "error with getTournamentsByTeam"
        else:
            result = self.cur.fetchall()
            return result

    def getUpcomingMatchesByTeam(self, IdEquipe):
        try:
            sql = "SELECT P.*, E1.nomEquipe AS nomEquipe1, E2.nomEquipe as nomEquipe2, EG.nomEquipe as nomGagnant, T.nomTournoi FROM Partie P LEFT JOIN Tournoi T ON T.IdTournoi = P.idTournoi LEFT JOIN Equipe E1 ON P.IdEquipe1 = E1.IdEquipe LEFT JOIN Equipe E2 ON P.IdEquipe2 = E2.IdEquipe LEFT JOIN Equipe EG ON P.IdGagnant = EG.IdEquipe WHERE (IdEquipe1 = %s OR IdEquipe2 = %s) ORDER BY dateMatch"
            self.cur.execute(sql,(IdEquipe, IdEquipe))
        except:
            print("Oops!", sys.exc_info(), "occurred.")
            print("error with getUpcomingMatchesByTeam")
            return "error with getUpcomingMatchesByTeam"
        else:
            result = self.cur.fetchall()
            return result

    def EditEquipe(self, IdEquipe, NomEquipe, Presentation, Logo, IdPays, IdGame):
        try:
            sql ="UPDATE Equipe SET NomEquipe = %s, Presentation = %s, Logo = %s, IdPays = %s, IdGame = %s WHERE IdEquipe = %s"
            self.cur.execute(sql, (NomEquipe, Presentation, Logo, IdPays, IdGame, IdEquipe))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with editEquipe")
            return "error with editEquipe"
        else:
            print("Team edited") 
            equipe = self.getTeamById(IdEquipe)
            return equipe

    def CreateEquipe(self, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame):
        try:
            sql ="INSERT INTO Equipe (NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) VALUES (%s, %s, %s, %s, %s, %s)"
            self.cur.execute(sql, (NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with CreateEquipe")
            return "error with CreateEquipe"
        else:
            print("Team Created")  
            Equipe = self.getTeamByName(NomEquipe)
            return Equipe

    def getGameById(self, idGame):
        try:
            sql ="SELECT P.*, E1.nomEquipe AS nomEquipe1, E2.nomEquipe as nomEquipe2, EG.nomEquipe as nomGagnant FROM Partie P LEFT JOIN Equipe E1 ON P.IdEquipe1 = E1.IdEquipe LEFT JOIN Equipe E2 ON P.IdEquipe2 = E2.IdEquipe LEFT JOIN Equipe EG ON P.IdGagnant = EG.IdEquipe Where IdMatch = %s"
            self.cur.execute(sql, (idGame))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with getGameById")
            return "error with getGameById"
        else:
            print("Team Created")  
            Game = self.cur.fetchall()
            return Game

    def CreateGame(self, dateMatch, heureMatch, idEquipe1, idEquipe2, idTournoi):
        try:
            sql = "INSERT INTO Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, idTournoi) VALUES (%s, %s, %s, %s, %s)"
            self.cur.execute(sql, (dateMatch, heureMatch, idEquipe1, idEquipe2, idTournoi))
            self.con.commit()
        except self.con.Error as e:
            print(e)
            return("Erreur avec la cr??ation de la partie: {}".format(e))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with CreateGame")
            return "error with CreateGame"
        else:
            print("Game Created")  
            return "Game Created"
    
    def EditGame(self, IdMatch, dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi):
        try:
            sql = "UPDATE Partie SET dateMatch = %s, heureMatch = %s, idEquipe1 = %s, idEquipe2 = %s, scoreEquipe1 = %s, scoreEquipe2 = %s, idTournoi = %s WHERE IdMatch = %s"
            self.cur.execute(sql, (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, IdMatch))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with EditGame")
            return "error with EditGame"
        else:
            print("Game Created")  
            Equipe = self.getGameById(IdMatch)
            return Equipe

    def Inscription(self, IdTournoi, IdEquipe):
        try:
            sql = "INSERT INTO Inscription (IdEquipe, IdTournoi) VALUES (%s, %s)"
            self.cur.execute(sql, (IdEquipe, IdTournoi))
            self.con.commit()
        except self.con.Error as e:
            print(e)
            return("Erreur avec l'inscription: {}".format(e))
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with Inscription")
            return "error with Inscription"
        else:
            print("Inscription effectu??e")  
            return "Inscription effectu??e"
        
    def addTeamMember(self, IdJoueur, IdEquipe, DateJoined):
        try:
            sql = "INSERT INTO MembresEquipe (IdJoueur, IdEquipe, DateJoined) VALUES (%s, %s, %s)"
            self.cur.execute(sql, (IdJoueur, IdEquipe, DateJoined))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with addTeamMember")
            return "error with addTeamMember"
        else:
            print("Inscription effectu??e")  
            return "Inscription effectu??e"
    
    def deleteTournament(self, IdTournoi):
        try:
            sql = "DELETE FROM Tournoi WHERE IdTournoi = %s"
            self.cur.execute(sql, (IdTournoi))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with deleteTournament")
            return "error with deleteTournament"
        else:
            print("Suppression effectu??e")  
            return "Suppression effectu??e"

    def deleteTeam(self, IdEquipe):
        try:
            sql = "DELETE FROM Equipe WHERE IdEquipe = %s"
            self.cur.execute(sql, (IdEquipe))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with deleteTeam")
            return "error with deleteTeam"
        else:
            print("Suppression effectu??e")  
            return "Suppression effectu??e"

    def deleteMatch(self, IdMatch):
        try:
            sql = "DELETE FROM Partie WHERE IdMatch = %s"
            self.cur.execute(sql, (IdMatch))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with deleteMatch")
            return "error with deleteMatch"
        else:
            print("Suppression effectu??e")  
            return "Suppression effectu??e"

    def leaveTeam(self, IdTeam, IdJoueur, Date):
        try:
            sql = "UPDATE MembresEquipe SET DateLeft = %s WHERE IdEquipe = %s AND IdJoueur = %s"
            self.cur.execute(sql, (Date, IdTeam, IdJoueur))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with leaveTeam")
            return "error with leaveTeam"
        else:
            print("Le joueur a bien quitt?? l'??quipe")  
            return "Le joueur a bien quitt?? l'??quipe"
        
    def desinscrire(self, IdTeam, IdTournoi):
        try:
            sql = "DELETE FROM Inscription WHERE IdEquipe = %s AND IdTournoi = %s"
            self.cur.execute(sql, (IdTeam, IdTournoi))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[1], "occurred.")
            print("error with desinscrire")
            return "error with desinscrire"
        else:
            print("L'??quipe a ??t?? d??sinscrite")  
            return "L'??quipe a ??t?? d??sinscrite"