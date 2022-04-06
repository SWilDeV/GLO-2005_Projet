#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_marshmallow import Marshmallow
import pymysql, pymysql.cursors
from dotenv import load_dotenv
load_dotenv()

import os


#Init app
app = Flask(__name__)
basedir =os.path.abspath(os.path.dirname(__file__))

#Database
connexionDB= pymysql.connect(host='localhost',user=os.environ.get('USER'), password=os.environ.get('PASSWORD'),db='ChallongeII')

@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello World'})

#Run server
if __name__ == '__main__':
    app.run(debug=True)