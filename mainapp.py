from flask import Flask
from flask import jsonify
from flask import request

import logging

app = Flask(__name__)

@app.route("/")
def reverse_proxy():
   s = str(request.query_string)

   response = {"message": s }
   return jsonify(response)

if __name__ == "__main__":
   app.run(host='0.0.0.0')
