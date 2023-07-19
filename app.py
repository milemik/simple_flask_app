import os

from flask import Flask, render_template

HOST = os.getenv("HOST", "127.0.0.1")
PORT = os.getenv("PORT", 5000)

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    return render_template("home.html")


if __name__ == "__main__":
    app.run(debug=os.getenv("DEBUG"), host=HOST, port=PORT)
