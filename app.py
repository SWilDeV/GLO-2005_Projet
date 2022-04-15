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
import json
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
        data =request.json["data"]
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        Username = dataJSON['Username']
        Password = bcrypt.generate_password_hash(dataJSON["Password"])
        Courriel = dataJSON['Courriel']
        FirstName = dataJSON['Prenom']
        LastName = dataJSON['Nom']
        Ville = dataJSON['Ville']
        IdJoueur= random.randint(100000000,999999999)
        Presentation = dataJSON['Presentation']
        Avatar = dataJSON['Avatar']
        IdPays = dataJSON['IdPays'] 
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
    data =request.json["data"]
    if type(data)!= dict:
        dataJSON = dict(json.loads(data))
    else:
        dataJSON =data
    Username = dataJSON["Username"]
    Password = dataJSON['Password']
    db=Database()
    response= db.getUserByUserName(Username)
    if response ==None:
        return "Utilisateur incorrect"
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
            print(user)
            return jsonify(user),{"Content-Type": "application/json"}


@app.route('/Utilisateurs', methods=['GET'])
def getUsers():
    def db_query():
        db= Database()
        Users = db.list_Users()
        return Users

    res= db_query()
    return jsonify(res)

@app.route('/getUser', methods=['POST'])
def getUser():
    db = Database()
    IdJoueur = request.json["IdUser"]
    joueur = db.find_User_by_ID(IdJoueur)
    equipes = db.getTeamsByUsers(IdJoueur)
    parties = db.getUpcomingMatchesByUsers(IdJoueur)
    return jsonify({"User": joueur, "Equipes": equipes, "Parties": parties})

@app.route('/editUser', methods=['PUT'])
def editUser():
    try:
        Username = request.json['Username']
        Password = bcrypt.generate_password_hash(request.json["Password"])
        Courriel = request.json['Courriel']
        FirstName = request.json['Prenom']
        LastName = request.json['Nom']
        Ville = request.json['Ville']
        IdJoueur = request.json['IdJoueur']
        Presentation = request.json['Presentation']
        Avatar = request.json['Avatar']
        IdPays = request.json['IdPays'] 
        IdGame = request.json['IdGame']
        
        db=Database()
        Reg = db.editUser(Username, Password, Courriel,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with editUser")
        return "error with editUser"
    else:
        return jsonify(Reg)


@app.route('/listTournaments', methods=['GET'])
def getListTournament():
    db=Database()
    res= db.getAllTournaments()
    return jsonify(res)

@app.route('/tournament', methods=['POST'])
def getTournamentById():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        idTournoi = dataJSON["IdTournoi"]
        tournoi = db.getTournamentById(idTournoi)
        equipes = db.getTeamsByTournament(idTournoi)
        parties = db.getMatchesByTournament(idTournoi)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with getTournamentById")
        return "error with getTournamentById"
    else:
        return jsonify({"Tournoi": tournoi, "Equipes": equipes, "Parties": parties})

@app.route('/editTournament', methods=['PUT'])
def editTournament():
    db=Database()
    IdTournoi = request.json["IdTournoi"]
    nomTournoi = request.json["nomTournoi"]
    dateDebut = request.json["dateDebut"] 
    minEquipe = request.json["minEquipe"] 
    maxEquipe = request.json["maxEquipe"] 
    minJoueur = request.json["minJoueur"] 
    maxJoueur = request.json["maxJoueur"] 
    idGame = request.json["idGame"] 
    idOwner = request.json["idOwner"]
    tournament = db.editTournament(IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner)
    return jsonify(tournament)

@app.route('/createTournament', methods=['POST'])
def createTournament():
    db=Database()
    data =request.json["data"]
    if type(data)!= dict:
        dataJSON = dict(json.loads(data))
    else:
        dataJSON =data
    nomTournoi = dataJSON["nomTournoi"]
    dateDebut = dataJSON["dateDebut"] 
    minEquipe = dataJSON["minEquipe"] 
    maxEquipe = dataJSON["maxEquipe"] 
    minJoueur = dataJSON["minJoueur"] 
    maxJoueur = dataJSON["maxJoueur"] 
    idGame = dataJSON["idGame"] 
    idOwner = dataJSON["idOwner"]
    tournament = db.CreateTournament(nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner)
    return jsonify(tournament)

@app.route('/listEquipes', methods=['GET'])
def getListEquipes():
    db=Database()
    res= db.getAllEquipes()
    return jsonify(res)

@app.route('/getEquipe', methods=['POST'])
def getEquipeById():
    db=Database()
    IdEquipe = request.json["IdEquipe"]
    equipes = db.getTeamById(IdEquipe)
    joueurs = db.getPlayersByTeam(IdEquipe)
    tournoi = db.getTournamentsByTeam(IdEquipe)
    parties = db.getUpcomingMatchesByTeam(IdEquipe)
    return jsonify({"Tournoi": tournoi, "Joueurs": joueurs, "Equipes": equipes, "Parties": parties})

@app.route('/editEquipe', methods=['PUT'])
def editEquipe():
    db=Database()
    IdEquipe = request.json["IdEquipe"]
    NomEquipe = request.json["NomEquipe"]
    Presentation = request.json["Presentation"] 
    Logo = request.json["Logo"] 
    IdOwner = request.json["IdOwner"] 
    IdPays = request.json["IdPays"] 
    IdGame = request.json["IdGame"] 
    equipe = db.EditEquipe(IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame)
    return jsonify(equipe)

@app.route('/createEquipe', methods=['POST'])
def createEquipe():
    db=Database()
    NomEquipe = request.json["NomEquipe"]
    Presentation = request.json["Presentation"] 
    Logo = request.json["Logo"] 
    IdOwner = request.json["IdOwner"] 
    IdPays = request.json["IdPays"] 
    IdGame = request.json["IdGame"] 
    equipe = db.CreateEquipe(NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame)
    return jsonify(equipe)

#Run server
if __name__ == '__main__':
    app.run(debug=True)