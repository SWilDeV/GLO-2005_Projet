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


################################CONNEXIONS#####################################

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
                "NomPays" : response["NomPays"],
                "DateJoined" : response["DateJoined"]
            }
            print(user)
            return jsonify(user),{"Content-Type": "application/json"}

################################ USER #####################################
@app.route('/Utilisateurs', methods=['GET'])
def getUsers():
    def db_query():
        db= Database()
        Users = db.list_Users()
        return Users

    res= db_query()
    return jsonify(res)

@app.route('/getUserDataByUserID', methods=['POST'])
def getUser():
    try:
        db = Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdJoueur = dataJSON["IdUser"]
        joueur = db.find_User_by_ID(IdJoueur)
        equipes = db.getTeamsByUsers(IdJoueur)
        parties = db.getUpcomingMatchesByUsers(IdJoueur)
        tournois = db.getUserTournament(IdJoueur)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with getUser")
        return "error with getUser"
    else:
        return jsonify({"User": joueur, "Equipes": equipes, "Parties": parties, "Tournois": tournois})

@app.route('/editUser', methods=['PUT'])
def editUser():
    try:
        db=Database()
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
        IdJoueur = dataJSON['IdJoueur']
        Presentation = dataJSON['Presentation']
        Avatar = dataJSON['Avatar']
        IdPays = dataJSON['IdPays'] 
        IdGame = dataJSON['IdGame']
        
        db=Database()
        Reg = db.editUser(Username, Password, Courriel, FirstName, LastName, Ville, IdJoueur, Presentation, Avatar, IdPays, IdGame)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with editUser")
        return "error with editUser"
    else:
        return jsonify(Reg)

@app.route('/leaveTeam', methods=['POST'])
def leaveTeam():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdJoueur = dataJSON["IdJoueur"]
        IdEquipe = dataJSON["IdEquipe"]
        Date = date.today()
        match = db.leaveTeam(IdEquipe, IdJoueur, Date)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with leaveTeam")
        return "error with leaveTeam"
    else:
        return jsonify(match)

################################ TOURNOIS #####################################

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
    try:
        db=Database()
        data =request.json["data"]
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdTournoi = dataJSON["IdTournoi"]
        nomTournoi = dataJSON["nomTournoi"]
        dateDebut = dataJSON["dateDebut"] 
        minEquipe = dataJSON["minEquipe"] 
        maxEquipe = dataJSON["maxEquipe"] 
        minJoueur = dataJSON["minJoueur"] 
        maxJoueur = dataJSON["maxJoueur"] 
        idGame = dataJSON["idGame"] 
        idOwner = dataJSON["idOwner"]
        tournament = db.editTournament(IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, idGame, idOwner)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with editTournament")
        return "error with editTournament"
    else:
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


@app.route('/inscriptionEquipe', methods=['POST'])
def inscription():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdTournoi = dataJSON["IdTournoi"]
        IdEquipe = dataJSON["IdEquipe"]
        match = db.Inscription(IdTournoi, IdEquipe)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with inscription")
        return "error with inscription"
    else:
        return jsonify(match)

@app.route('/deleteTournament', methods=['POST'])
def deleteTournament():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdTournoi = dataJSON["IdTournoi"]
        res = db.deleteTournament(IdTournoi)
    except:
        print("Oops!", sys.exc_info(), "occurred.")
        print("error with deleteTournament")
        return "error with deleteTournament"
    else:
        return jsonify(res)

################################ EQUIPES #####################################

@app.route('/listEquipes', methods=['GET'])
def getListEquipes():
    db=Database()
    res= db.getAllEquipes()
    return jsonify(res)

@app.route('/getEquipe', methods=['POST'])
def getEquipeById():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdEquipe = dataJSON["IdEquipe"]
        equipes = db.getTeamById(IdEquipe)
        joueurs = db.getPlayersByTeam(IdEquipe)
        tournoi = db.getTournamentsByTeam(IdEquipe)
        parties = db.getUpcomingMatchesByTeam(IdEquipe)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with getEquipeById")
        return "error with getEquipeById"
    else:
        return jsonify({"Tournoi": tournoi, "Joueurs": joueurs, "Equipes": equipes, "Parties": parties})


@app.route('/createEquipe', methods=['POST'])
def createEquipe():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        NomEquipe = dataJSON["NomEquipe"]
        Presentation = dataJSON["Presentation"] 
        Logo = dataJSON["Logo"] 
        IdOwner = dataJSON["IdOwner"] 
        IdPays = dataJSON["IdPays"] 
        IdGame = dataJSON["IdGame"] 
        equipe = db.CreateEquipe(NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame)
    except:
        print("Oops!", sys.exc_info(), "occurred.")
        print("error with createEquipe")
        return "error with createEquipe"
    else:
        return jsonify(equipe)


@app.route('/editEquipe', methods=['PUT'])
def editEquipe():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdEquipe = dataJSON["IdEquipe"]
        NomEquipe = dataJSON["NomEquipe"]
        Presentation = dataJSON["Presentation"] 
        Logo = dataJSON["Logo"] 
        IdOwner = dataJSON["IdOwner"] 
        IdPays = dataJSON["IdPays"] 
        IdGame = dataJSON["IdGame"] 
        equipe = db.EditEquipe(IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with editEquipe")
        return "error with editEquipe"
    else:
        return jsonify(equipe)


@app.route('/addTeamMember', methods=['POST'])
def addTeamMember():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdJoueur = dataJSON["IdJoueur"]
        IdEquipe = dataJSON["IdEquipe"]
        DateJoined = date.today()
        match = db.addTeamMember(IdJoueur, IdEquipe, DateJoined)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with addTeamMember")
        return "error with addTeamMember"
    else:
        return jsonify(match)


@app.route('/deleteTeam', methods=['POST'])
def deleteTeam():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        print(dataJSON)
        IdEquipe = dataJSON["IdEquipe"]
        res = db.deleteTeam(IdEquipe)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with deleteTeam")
        return "error with deleteTeam"
    else:
        return jsonify(res)

@app.route('/desinscrire', methods=['POST'])
def desinscrire():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        print(dataJSON)
        IdTournoi = dataJSON["IdTournoi"]
        IdEquipe = dataJSON["IdEquipe"]
        match = db.leaveTeam(IdEquipe, IdTournoi)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with desinscrire")
        return "error with desinscrire"
    else:
        return jsonify(match)

################################ Parties #####################################


@app.route('/getPartie', methods=['POST'])
def getMatch():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdMatch = dataJSON["IdMatch"]
        match = db.getGameById(IdMatch)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with getMatch")
        return "error with getMatch"
    else:
        return jsonify(match)

@app.route('/createPartie', methods=['POST'])
def createMatch():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        print(dataJSON)
        dateMatch = dataJSON["DateDebut"]
        heureMatch = dataJSON["Heure"]
        idEquipe1 = dataJSON["IdEquipe1"]
        idEquipe2 = dataJSON["IdEquipe2"]
        idTournoi = dataJSON["IdTournoi"]
        match = db.CreateGame(dateMatch, heureMatch, idEquipe1, idEquipe2, idTournoi)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with createMatch")
        return "error with createMatch"
    else:
        return jsonify(match)

@app.route('/editPartie', methods=['PUT'])
def editMatch():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        dateMatch = dataJSON["DateDebut"]
        heureMatch = dataJSON["Heure"]
        idEquipe1 = dataJSON["IdEquipe1"]
        idEquipe2 = dataJSON["IdEquipe2"]
        idTournoi = dataJSON["IdTournoi"]
        IdMatch = dataJSON["IdMatch"]
        scoreEquipe1 = dataJSON["scoreEquipe1"]
        scoreEquipe2 = dataJSON["scoreEquipe2"]
        match = db.EditGame(IdMatch, dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with editMatch")
        return "error with editMatch"
    else:
        return jsonify(match)


@app.route('/deleteMatch', methods=['POST'])
def deleteMatch():
    try:
        db=Database()
        data =request.json["data"]
        
        if type(data)!= dict:
            dataJSON = dict(json.loads(data))
        else:
            dataJSON =data
        IdMatch = dataJSON["IdMatch"]
        res = db.deleteMatch(IdMatch)
    except:
        print("Oops!", sys.exc_info()[0], "occurred.")
        print("error with deleteMatch")
        return "error with deleteMatch"
    else:
        return jsonify(res)


#Run server
if __name__ == '__main__':
    app.run(debug=True)