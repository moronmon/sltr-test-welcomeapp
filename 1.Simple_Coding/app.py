from flask import Flask, request

app = Flask(__name__)

@app.route('/welcome/')
@app.route('/welcome/<name>')
def welcome(name=None):
    if name is None or name.strip() == "":
        return "Anonymous"
    return f"Welcome {name}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
