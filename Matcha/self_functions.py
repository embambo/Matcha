# from itsdangerous import URLSafeTimedSerializer

# def get_reset_token(expires_sec=1800):
#     s = Serializer(app.config['SECRET_KET'], expires_sec)
#     return s.dumps({'user_id':user_id}).decode('utf-8')

# def verify_reset_token(token):
#     s = Serializer(app.config['SECRET_KET']
#     try:
#         user_id = s.loads(token)['user_id']
#     except:
#         return None
#     return users.query.get(user_id)
