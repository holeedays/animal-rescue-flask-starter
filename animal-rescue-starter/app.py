from flask import Flask, render_template
import models

app = Flask(__name__)


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/dogs")
def dogs():
    # changed the var name to be data just so we can copy and paste the logic
    return render_template("dogs.html", data=models.get_dogs())


@app.route("/cats")
def cats():
    return render_template("cats.html", data=models.get_cats())


if (__name__ == "__main__"):
    app.run(port=3000, debug=True)