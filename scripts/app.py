from flask import Flask, render_template

app = Flask(__name__)  # Fix typo from _name_ to __name__

@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':  # Fix typo from _main_ to __main__
    app.run(host='0.0.0.0', port=5000)
