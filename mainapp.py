from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def reverse_proxy():
   response = {"message":"some reverse proxy test"}
   return jsonify(response)

if __name__ == "__main__":
   app.run(host='0.0.0.0')
