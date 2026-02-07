from flask import Flask
import threading
from config import PORT

app = Flask(__name__)

@app.route('/')
def hello():
    return "Bot is Running!"

def run_web():
    app.run(host="0.0.0.0", port=int(PORT))

# Start the web server in a separate thread
threading.Thread(target=run_web, daemon=True).start()
