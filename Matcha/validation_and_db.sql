/*
# Add data from a dict to object attributes
    def dict_to_obj(self, data):
        if 'id' in data and data['id'] != '':
            self.user_id = data['id']
        if 'login' in data and data['login'] != '':
            self.login = data['login']
        if 'firstname' in data and data['firstname'] != '':
            self.firstname = data['firstname']
        if 'lastname' in data and data['lastname'] != '':
            self.lastname = data['lastname']
        if 'password' in data and data['password'] != '':
            self.password = data['password']
        if 'repeatpassword' in data and data['repeatpassword'] != '':
            self.repeatpassword = data['repeatpassword']
        if 'oldpassword' in data and data['oldpassword'] != '':
            self.repeatpassword = data['oldpassword']
        if 'orientation' in data and data['orientation'] != '':
            self.orientation = data['orientation']
        if 'bio' in data and data['bio'] != '':
            self.bio = data['bio']
        if 'email' in data and data['email'] != '':
            self.email = data['email']
        if 'gender' in data and data['gender'] != '':
            self.gender = data['gender']
        if 'city' in data and data['city'] != '':
            self.city = data['city']
        if 'lat' in data and data['lat'] != '':
            self.lat = data['lat']
        if 'lon' in data and data['lon'] != '':
            self.lon = data['lon']


class DBNode:
        def __init__(self):
            print("connection initialized")


    class User(DBNode):
        user_id = None
        login = None
        firstname = None
        lastname = None
        oldpassword = None
        password = None
        repeatpassword = None
        orientation = None
        bio = None
        email = None
        gender = None
        birthdate = None
        city = None
        lat = None
        lon = None
        admin = 0


        def __init__(self):
            super(User, self).__init__()
            print("user initialized")


if request.method == 'POST':
        firstname = request.form['firstname']
        lastname = request.form['lastname']
        username = request.form['username']
        email = request.form['email']
        password =request.form['password']
        conpass = request.form['conpass']
    if (firstname != '' and lastname != '' and username != '' and email != '' password != '')
    {
        #check username
        length_error = username is None or len(username) < 3
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        res = query('''SELECT username FROM users WHERE username=?''', (username,))
        already_taken = False
        alnum_error = False
        if res:
            already_taken = True
        if not username.isalnum():
            alnum_error = True
        return {
            'A username must contain at least 3 characters': length_error,
            'This username is already taken': already_taken,
            'A username must not contain symbols': alnum_error
        }
    }   
    # check input from user
    def check_password(self):
        match_error = self.password != self.confirmpassword
        length_error = self.password is None or len(self.password) < 8
        digit_error = length_error or re.search(r"\d", self.password) is None
        alphabetical_error = length_error or re.search(r"[A-Za-z]", self.password) is None
        symbol_error = length_error or re.search(r"[ !#$%&'()*+,-./[\\\]^_`{|}~" + r'"]', self.password) is None
        return {
            'Passwords do not match': match_error,
            'Passwords must contain at least 8 characters': length_error,
            'Passwords must contain at least one number': digit_error,
            'Passwords must contain at least a letter': alphabetical_error,
            'Passwords must contain at least a special character': symbol_error
        }


         


         def check_email(self):
        parse_error = self.email is None or re.match(
            '^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$',
            self.email) is None
        res = self.query('''SELECT COUNT(*) FROM users WHERE email=?''', (self.email,))
        if res[0][0] == 0:
            already_taken = False
        else:
            already_taken = True
        return {
            'This email adress is invalid': parse_error,
            'This email is already registered in our database': already_taken
        }
    /*