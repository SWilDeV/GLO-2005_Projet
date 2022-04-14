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
        self.cur.execute("SELECT IdJoueur, Username, Prenom, Nom, Ville, Presentation, Courriel,IdPays, DateJoined FROM Utilisateur")
        result = self.cur.fetchall()
        return result

    def find_User_by_ID(self, IDUser):
        try:
            sql ="SELECT IdJoueur, Username, Prenom, Nom, Ville, Presentation, Courriel,IdPays, DateJoined FROM Utilisateur WHERE Utilisateur.IdJoueur = %s"
            self.cur.execute(sql,(IDUser))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
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
            sql ="SELECT IdJoueur, Username,Password, Prenom,Avatar, Nom, Ville, Presentation, Courriel,IdPays, DateJoined FROM Utilisateur WHERE Utilisateur.Username = %s"
            self.cur.execute(sql,(Username))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getUserByUserName")
            return "error with getUserByUserName"
        else:
            result = self.cur.fetchone()
            return result

    def getTeamsByUsers(self, idUser):
        try:
            sql ="SELECT E.* FROM Equipe E JOIN MembresEquipe ME ON ME.idEquipe = E.idEquipe WHERE ME.idJoueur = %s"
            self.cur.execute(sql,(idUser))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getTeamsByUsers")
            return "error with getTeamsByUsers"
        else:
            result = self.cur.fetchall()
            return result

    def getUpcomingMatchesByUsers(self, idUser):
        try:
            sql ="SELECT P.* FROM Partie P INNER JOIN Equipe E ON P.idEquipe1 = E.idEquipe OR P.idEquipe2 = E.idEquipe JOIN MembresEquipe ME ON ME.idEquipe = E.idEquipe WHERE ME.idJoueur = %s AND ME.dateLeft IS NULL AND P.scoreEquipe1 IS NULL ORDER BY P.dateMatch"
            self.cur.execute(sql,(idUser))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getUpcomingMatchesByUsers")
            return "error with getUpcomingMatchesByUsers"
        else:
            result = self.cur.fetchmany(5)
            return result

    def register_User(self,Username,Password,Courriel,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined):
        try:
            sql = "insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            self.cur.execute(sql, (IdJoueur, Username, Password, Courriel, FirstName, LastName, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined))

            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("problem with register_User")
        else:
            print("User added") 
            User = self.find_User_by_ID(IdJoueur)
            return User

    def editUser(self,Username, Password, Courriel,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame):
        try:
            sql = "UPDATE Utilisateur SET Username = %s, Password = %s, Courriel = %s, Prenom = %s, Nom = %s, Ville = %s, Presentation = %s, Avatar = %s, IdPays = %s, IdGame = %s WHERE IdJoueur = %s"
            self.cur.execute(sql, (Username, Password, Courriel, FirstName, LastName, Ville, Presentation, Avatar, IdPays, IdGame,IdJoueur))

            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("problem with editUser")
        else:
            print("User edited") 
            User = self.find_User_by_ID(IdJoueur)
            return User
    
    def getAllTournaments(self):
        self.cur.execute("SELECT IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame FROM Tournoi")
        result = self.cur.fetchall()
        return result

    def getTournamentById(self, IdTournoi):
        try:
            sql ="SELECT * FROM Tournoi WHERE Tournoi.idTournoi = %s"
            self.cur.execute(sql,(IdTournoi))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
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
            sql ="SELECT * FROM Tournoi WHERE Tournoi.nomTournoi = %s"
            self.cur.execute(sql,(nomTournoi))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
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
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getTeamsByTournament")
            return "error with getTeamsByTournament"
        else:
            result = self.cur.fetchall()
            return result

    def getMatchesByTournament(self, IdTournoi):
        try:
            sql ="SELECT * FROM Partie WHERE Partie.idTournoi = %s"
            self.cur.execute(sql,(IdTournoi))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getMatchesByTournament")
            return "error with getMatchesByTournament"
        else:
            result = self.cur.fetchall()
            return result

    def editTournament(self, IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner):
        try:
            sql ="UPDATE tournoi SET nomTournoi = %s, dateDebut = %s, minEquipe = %s, maxEquipe = %s, minJoueur = %s, maxJoueur = %s, idGame = %s, idOwner = %s WHERE idTournoi = %s"
            self.cur.execute(sql, (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner, IdTournoi))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with editTournament")
            return "error with editTournament"
        else:
            print("Tournament edited") 
            Tournoi = self.getTournamentById(IdTournoi)
            return Tournoi

    def CreateTournament(self, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner):
        try:
            sql ="INSERT INTO tournoi (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
            self.cur.execute(sql, (nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with CreateTournament")
            return "error with CreateTournament"
        else:
            print("Tournament Created")  
            Tournoi = self.getTournamentByName(nomTournoi)
            return Tournoi
    
    def getAllEquipes(self):
        self.cur.execute("SELECT IdEquipe, nomEquipe, Logo, IdOwner, IdGame FROM Equipe")
        result = self.cur.fetchall()
        return result

    def getTeamById(self, IdEquipe):
        try:
            sql ="SELECT * FROM Equipe WHERE Equipe.IdEquipe = %s"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
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
            sql ="SELECT * FROM Equipe WHERE Equipe.NomEquipe = %s"
            self.cur.execute(sql,(NomEquipe))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
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
            sql ="SELECT U.* FROM Utilisateur U INNER JOIN MembresEquipe M ON M.IdJoueur = U.IdJoueur WHERE M.IdEquipe = %s"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getPlayersByTeam")
            return "error with getPlayersByTeam"
        else:
            result = self.cur.fetchall()
            return result
    
    def getTournamentsByTeam(self, IdEquipe):
        try:
            sql ="SELECT T.* FROM Tournoi T INNER JOIN Inscription I ON I.IdTournoi = T.IdTournoi WHERE I.IdEquipe = %s"
            self.cur.execute(sql,(IdEquipe))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getTournamentsByTeam")
            return "error with getTournamentsByTeam"
        else:
            result = self.cur.fetchall()
            return result

    def getUpcomingMatchesByTeam(self, IdEquipe):
        try:
            sql = "SELECT * FROM Partie WHERE (IdEquipe1 = %s OR IdEquipe2 = %s) AND scoreEquipe1 IS NULL ORDER BY dateMatch"
            self.cur.execute(sql,(IdEquipe, IdEquipe))
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with getUpcomingMatchesByTeam")
            return "error with getUpcomingMatchesByTeam"
        else:
            result = self.cur.fetchmany(5)
            return result

    def EditEquipe(self, IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame):
        try:
            sql ="UPDATE equipe SET NomEquipe = %s, Presentation = %s, Logo = %s, IdOwner = %s, IdPays = %s, IdGame = %s WHERE IdEquipe = %s"
            self.cur.execute(sql, (NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame, IdEquipe))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with editEquipe")
            return "error with editEquipe"
        else:
            print("Team edited") 
            equipe = self.getTeamById(IdEquipe)
            return equipe

    def CreateEquipe(self, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame):
        try:
            sql ="INSERT INTO equipe (NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) VALUES (%s, %s, %s, %s, %s, %s)"
            self.cur.execute(sql, (NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame))
            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
            print("error with CreateEquipe")
            return "error with CreateEquipe"
        else:
            print("Team Created")  
            Equipe = self.getTeamByName(NomEquipe)
            return Equipe