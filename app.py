#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_cors import CORS
import pymysql, pymysql.cursors
import random
import sys
from datetime import date
from flask_bcrypt import Bcrypt
from dotenv import load_dotenv
load_dotenv()
import os


#Init app
app = Flask(__name__)
app.config.from_object(__name__)
CORS(app, resources={r"/*":{'origins':"*"}})
bcrypt = Bcrypt(app)

#Database
class Database:
    def __init__(self):
        db=os.environ.get('DB')
        self.con = pymysql.connect(host='localhost',user=os.environ.get('USER'), password=os.environ.get('PASSWORD'),db=os.environ.get('DB'))
        # self.cur=self.con.cursor()
        self.cur=self.con.cursor(pymysql.cursors.DictCursor)


    def list_Users(self):
        self.cur.execute("SELECT IdJoueur, Username, Prenom, Nom, Ville, Presentation, Courriel,IdPays, DateJoined FROM Utilisateur")
        result = self.cur.fetchall()
        return result

    # def find_User(self):


    def register_User(self,Username,Password,Email,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined):
        try:
            sql = "insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            self.cur.execute(sql, (IdJoueur, Username, Password, Email, FirstName, LastName, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined))

            self.con.commit()
        except:
            print("Oops!", sys.exc_info()[0], "occurred.")
        else:
            print("User added") 
            Users = self.list_Users()
            return Users

@app.route('/', methods=['GET'])

@app.route('/register', methods=['POST'])
def registerpage():
    try:
        Username = request.json["Username"]
        Password = bcrypt.generate_password_hash(request.json['Password'])
        Email = request.json['Email']
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
        Reg = db.register_User(Username,Password,Email,FirstName,LastName,Ville,IdJoueur,Presentation,Avatar,IdPays,IdGame,DateJoined)
    except:
            print("Oops!", sys.exc_info()[0], "occurred.")
    else:
        
        print(bcrypt.check_password_hash("$2b$12$LmAGSs3s4NI8w8aEX6BhNefexfWCuNptcR0OrRRa4MQeUlSWvB/XK", 'PzctZ6f'))

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