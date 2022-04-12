#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_cors import CORS
import pymysql, pymysql.cursors
import random
from datetime import date
import bcrypt
from dotenv import load_dotenv
load_dotenv()

import os


#Init app
app = Flask(__name__)
app.config.from_object(__name__)
CORS(app, resources={r"/*":{'origins':"*"}})
basedir =os.path.abspath(os.path.dirname(__file__))

#Database
class Database:
    def __init__(self):
        db=os.environ.get('DB')
        self.con = pymysql.connect(host='localhost',user=os.environ.get('USER'), password=os.environ.get('PASSWORD'),db=os.environ.get('DB'))
        self.cur=self.con.cursor()


    def list_Users(self):
        self.cur.execute("SELECT * FROM Utilisateur")
        result = self.cur.fetchall()
        return result

    def register_User(self,Username,Password,Email,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined):
        sql = "insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        self.cur.execute(sql, (IdJoueur, Username, Password, Email, FirstName, LastName, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined))

        self.con.commit()

        result = self.cur.fetchone()
        print(result)
        return result

@app.route('/', methods=['GET'])

def get():
    return render_template("home.html")

@app.route('/register', methods=['POST'])
def registerpage():
    
    # Username = 'thulburd0'
    # Password = 'PzctZ6f'
    # Email = 'thulburd0@cloudflare.com'
    # FirstName = 'Talyah'
    # LastName = 'Hulburd'
    # Ville = 'Vinnytsya'
    # IdJoueur= 1
    # Presentation = 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'
    # Avatar = None
    # IdPays = 23 
    # IdGame = 65
    # DateJoined = '6/17/2021'
    Username = request.json["Username"]
    Password = request.json['Password']
    Email = request.json['Email']
    FirstName = request.json['FirstName']
    LastName = request.json['LastName']
    Ville = request.json['Ville']
    IdJoueur= random.randint(100000000,999999999)
    Presentation = request.json['Presentation']
    Avatar = request.json['Avatar']
    IdPays = request.json['IdPays'] 
    IdGame = None
    DateJoined = date.today()
    db=Database()
    # db.register_User()
    Reg = db.register_User(Username,Password,Email,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined)

    return jsonify(Reg)



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