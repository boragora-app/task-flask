import time
from datetime import datetime
from flask import Flask

app = Flask(__name__)

@app.route('/api/time')
def get_current_time():
    return {'time': time.time()}

@app.route('/api/date')
def get_current_date():
    return {'date': datetime.now().strftime('%d-%m-%Y')}
