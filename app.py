#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_marshmallow import Marshmallow
import pymysql, pymysql.cursors
import os


#Init app
app = Flask(__name__)
basedir =os.path.abspath(os.path.dirname(__file__))

#Database
connexion= pymysql.connect(host='localhost',user='root', password='sirius3',db='testdb')

@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello World'})

#Run server
if __name__ == '__main__':
    app.run(debug=True)