#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_cors import CORS
import pymysql, pymysql.cursors
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
        host='localhost',
        user=os.environ.get('USER'), 
        password=os.environ.get('PASSWORD'),
        db=os.environ.get('DB')
        self.con = pymysql.connect(host='localhost',user=os.environ.get('USER'), password=os.environ.get('PASSWORD'),db=os.environ.get('DB'))
        self.cur=self.con.cursor()


    def list_Artistes(self):
        self.cur.execute("SELECT * FROM Artistes")
        result = self.cur.fetchall()
        return result

@app.route('/', methods=['GET'])
def get():
    return render_template("home.html")

@app.route('/Artistes', methods=['GET'])
def getArtistes():
    def db_query():
        db= Database()
        Artistes = db.list_Artistes()
        return Artistes

    res= db_query()
    return jsonify(res)
#Run server
if __name__ == '__main__':
    app.run(debug=True)