from flask import Flask, jsonify
from datetime import datetime
import boto3

app = Flask(__name__)

@app.route("/datetime", methods=["GET"])
def get_datetime():
    return jsonify({"datetime": datetime.utcnow().isoformat()})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)
