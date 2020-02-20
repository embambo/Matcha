import hashlib
# from flask_mysqldb import MySQL
# import MySQLdb.cursors


# #from itsdangerous import URLSafeTimedSerializer
# #import main
# #import os

def make_pw_hash(password):
    return hashlib.sha256(str.encode(password)).hexdigest()

def check_pw_hash(password, hash):
    if make_pw_hash(password) == hash:
        return True
    else:
        return False




 #password = make_pw_hash(password)