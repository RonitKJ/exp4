from flask import Flask
import requests
app = Flask(__name__)
@app.route("/")
def hello():
return "Hello from a vulnerable containerized app!"
@app.route("/fetch")
def fetch():
r = requests.get("https://example.com")
return r.text
if __name__ == "__main__":
app.run(host="0.0.0.0", port=5000)
