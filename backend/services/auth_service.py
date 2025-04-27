# backend/services/auth_service.py

import bcrypt
import psycopg2
from database.db import get_db_connection

def signup_user(data):
    conn = get_db_connection()
    cursor = conn.cursor()

    email = data.get('email')
    password = data.get('password')
    name = data.get('name')

    # Cek apakah user sudah ada
    cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
    user = cursor.fetchone()
    if user:
        return {"message": "Email sudah terdaftar."}, 400

    # Hash password
    hashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())

    # Insert ke database
    cursor.execute(
        "INSERT INTO users (name, email, password) VALUES (%s, %s, %s)",
        (name, email, hashed_password)
    )
    conn.commit()
    cursor.close()
    conn.close()

    return {"message": "Pendaftaran berhasil!"}, 201

def login_user(data):
    conn = get_db_connection()
    cursor = conn.cursor()

    email = data.get('email')
    password = data.get('password')

    # Cari user berdasarkan email
    cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
    user = cursor.fetchone()
    cursor.close()
    conn.close()

    if user and bcrypt.checkpw(password.encode('utf-8'), user[3].encode('utf-8')):
        return {"message": "Login berhasil!"}, 200
    else:
        return {"message": "Email atau password salah."}, 401

def forgot_password(data):
    conn = get_db_connection()
    cursor = conn.cursor()

    email = data.get('email')
    new_password = data.get('new_password')

    # Cari user
    cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
    user = cursor.fetchone()

    if not user:
        cursor.close()
        conn.close()
        return {"message": "Email tidak ditemukan."}, 404

    # Hash password baru
    hashed_password = bcrypt.hashpw(new_password.encode('utf-8'), bcrypt.gensalt())

    # Update password
    cursor.execute(
        "UPDATE users SET password = %s WHERE email = %s",
        (hashed_password, email)
    )
    conn.commit()
    cursor.close()
    conn.close()

    return {"message": "Password berhasil diubah."}, 200
