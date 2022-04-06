#pipenv install --dev
from flask import Flask, request, jsonify, render_template
from flask_marshmallow import Marshmallow
import os


#Init app
app = Flask(__name__)

@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello World'})

#Run server
if __name__ == '__main__':
    app.run(debug=True)