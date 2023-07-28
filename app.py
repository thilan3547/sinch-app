from flask import Flask

app = Flask(__name__)

@app.route('/')
def return_42():
    return '43'
