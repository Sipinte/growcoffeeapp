# backend/app.py

from flask import Flask, request, jsonify
from services.auth_service import signup_user, login_user, forgot_password

app = Flask(__name__)

@app.route("/signup", methods=["POST"])
def signup():
    data = request.json
    return signup_user(data)

@app.route("/login", methods=["POST"])
def login():
    data = request.json
    return login_user(data)

@app.route("/forgot-password", methods=["POST"])
def forgot_password_route():
    data = request.json
    return forgot_password(data)

if __name__ == "__main__":
    app.run(debug=True)
