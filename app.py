#pipenv install --dev
from flask import Flask, request, jsonify
from flask_cors import CORS
import pymysql, pymysql.cursors
import random
from flask_bcrypt import Bcrypt
import sys
from datetime import date
from dotenv import load_dotenv
from Database import Database
load_dotenv()
import os


#Init app
app = Flask(__name__)
app.config.from_object(__name__)
CORS(app, resources={r"/*":{'origins':"*"}})
bcrypt = Bcrypt(app)


@app.route('/', methods=['GET'])

@app.route('/register', methods=['POST'])
def registerpage():
    try:
        Username = request.json["Username"]
        Password = bcrypt.generate_password_hash(request.json['Password'])
        Courriel = request.json['Courriel']
        FirstName = request.json['FirstName']
        LastName = request.json['LastName']
        Ville = request.json['Ville']
        IdJoueur= random.randint(100000000,999999999)
        Presentation = request.json['Presentation']
        Avatar = None
        IdPays = request.json['IdPays'] 
        IdGame = None
        DateJoined = date.today()
        db=Database()
        Reg = db.register_User(Username,Password,Courriel,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with registerpage")
        return "error with registerpage"
    else:
        return jsonify(Reg)

@app.route('/authenticate', methods=['POST'])
def authenticateUser():
    Username = request.json["Username"]
    Password = request.json['Password']
    db=Database()
    response= db.getUserByUserName(Username)
    if response ==None:
        return None
    else:
        if bcrypt.check_password_hash(response["Password"], Password) != True:
            return "Mot de passe incorrect"
        else:
            user={
                "Username" : response["Username"],
                "Courriel" : response["Courriel"],
                "Prenom": response["Prenom"],
                "LastName" : response["Nom"],
                "Ville" : response["Ville"],
                "IdJoueur": response["IdJoueur"],
                "Presentation" : response["Presentation"],
                "Avatar" : response["Avatar"],
                "IdPays" : response["IdPays"],
                "DateJoined" : response["DateJoined"]
            }
            return jsonify(user)


@app.route('/Utilisateurs', methods=['GET'])
def getUsers():
    def db_query():
        db= Database()
        Users = db.list_Users()
        return Users

    res= db_query()
    return jsonify(res)

#Run server
if __name__ == '__main__':
    app.run(debug=True)