from flask import Flask

app = Flask(__name__)

@app.route("/helloworld")
def hello_world():
    return "Hello, World! This is the /helloworld endpoint."

@app.route("/test")
def test():
    return "This is the /test endpoint."

if __name__ == "__main__":
    import os
    # You can run on any port (default: 3000)
    port = int(os.environ.get("PORT", 3000))
    app.run(host="0.0.0.0", port=port)
