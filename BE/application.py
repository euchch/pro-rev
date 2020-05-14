from flask import Flask, request
from flask_restful import Resource, Api
app = Flask(__name__)
api = Api(app)

@app.route("/")
class ManageTables:
    def __init__(self,dbHost,dbPort,dbName,dbUser,dbPass):
        self.dbHost = dbHost
        self.dbPort = dbPort
        self.dbName = dbName
        self.dbUser = dbUser
        self.dbPass = dbPass

class dbTables(Resource):
    def get(self):
        return "Listing tables on sql"


def hello():
    return "BE server version 0.0.1"

api.add_resource(dbTables,'/db')
if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)