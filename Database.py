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