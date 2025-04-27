# backend/database/db.py

import psycopg2

def get_db_connection():
    return psycopg2.connect(
        host="localhost",
        database="growcoffee_db",
        user="postgres",         # Ganti dengan username database kamu
        password="060204",   # Ganti dengan password database kamu
        port="5432"               # Biasanya 5432 untuk PostgreSQL
    )
