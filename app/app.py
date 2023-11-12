import os

from flask import Flask

App = Flask(__name__)


@App.route("/")
def hello_world():
    return "Hello, cats!"


if __name__ == "__main__":
    App.run(port=os.environ.get("PORT", 5000), host="0.0.0.0")
