import os
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from dotenv import load_dotenv
load_dotenv()  # Load environment variables from .env file

#--------------------------------- for docker only ---------------------------------------------#
app = Flask(__name__)
#app = Flask(__name__, template_folder='C:\\Users\\aodesou\\ufc\\python-metadata-query\\code')

MYSQL_SERVER =  os.getenv('MYSQL_SERVER')
RADS_DATABASE = os.getenv('RADS_DATABASE')
RADS_DATABASE_USERNAME = os.getenv('RADS_DATABASE_USERNAME')
RADS_DATABASE_PASSWORD = os.getenv('RADS_DATABASE_PASSWORD')

# Using the individual variables
app.config['SQLALCHEMY_DATABASE_URI'] = f"mysql+pymysql://{RADS_DATABASE_USERNAME}:{RADS_DATABASE_PASSWORD}@{MYSQL_SERVER}/{RADS_DATABASE}"

#------------------------------------ local test -----------------------------------------------#
#app = Flask(__name__)
#app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DB_STRING')
#app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)


class VProduct(db.Model):
    __tablename__ = 'V_PRODUCT'
    
    PROD_ID = db.Column(db.Numeric(38, 0), primary_key=True)
    JNLITM_ID = db.Column(db.Numeric(38, 0))
    TASK_ID = db.Column(db.Numeric(38, 0))
    STRINGOFORIGIN = db.Column(db.String(16))
    PRODUCTSTART_DTM = db.Column(db.DateTime)
    PRODUCTEND_DTM = db.Column(db.DateTime)
    GROUNDSTATION = db.Column(db.String(32))
    CLASSMARK = db.Column(db.String(32))
    CONTROLMARK = db.Column(db.String(64))
    PRODTYPE = db.Column(db.String(3))
    FILESIZE = db.Column(db.Numeric(38, 0))
    CLASSIFICATION = db.Column(db.String(128))
    TAGS = db.Column(db.Text)
    FILENAME = db.Column(db.String(128))
    FILEPATH = db.Column(db.String(256))
    PAYLOADNUMBER = db.Column(db.String(32))
    PAYLOADENV = db.Column(db.String(32))
    CORRELATED = db.Column(db.String(1))
    CURRENT_STRINGLOC = db.Column(db.String(5))
    ORIGINATING_STRINGLOC = db.Column(db.String(5))
    ORIGINATING_DATASOURCE = db.Column(db.String(8))
    CURRENT_DATASOURCE = db.Column(db.String(8))
    ON_DISK = db.Column(db.String(1))
    ON_TAPE = db.Column(db.String(1))
    CURRENT_ENTITYLOC = db.Column(db.String(32))
    DEMO_PRODUCT_FLAG = db.Column(db.String(1))
    DO_NOT_DELETE_FLAG = db.Column(db.String(1))
    NOTETEXT = db.Column(db.Text)
    PRODUCT_INSERT_DTM = db.Column(db.DateTime)
    PRODUCT_SUBTYPE = db.Column(db.String(32))
    STORED_FROM = db.Column(db.String(10))
    TASKNAME_FROMFILE = db.Column(db.String(120))
    COMPRESSION_RATIO = db.Column(db.Numeric(38, 0))
    OUTSTANDING_AUTOXFER = db.Column(db.String(256))
    AUTOXFEREND_DTM = db.Column(db.DateTime)
    SWVERSION = db.Column(db.String(32))
    PAYLOADID = db.Column(db.String(32))
    ORIGINATING_FILENAME = db.Column(db.String(128))
    UPDATED_DTM = db.Column(db.DateTime)
    EM_DETECT_ID = db.Column(db.String(128))
    PRIORITY = db.Column(db.Numeric(38, 0))


@app.route('/')
def index():
    error_message = None  # Initialize error message as None
    query = db.session.query(VProduct)
    
    # Check for any unexpected parameters
    allowed_params = ['start-time', 'end-time']
    unexpected_params = [p for p in request.args.keys() if p not in allowed_params]
    if unexpected_params:
        return f"Invalid entry. Only {', '.join(allowed_params)} are allowed for queries."

    # Check for the presence of start-time and end-time parameters
    start_time = request.args.get('start-time')
    end_time = request.args.get('end-time')

    # Validate the datetime format for start-time
    if start_time:
        try:
            datetime.strptime(start_time, '%Y-%m-%d %H:%M:%S')
        except ValueError:
            return f"Invalid datetime format for start-time: {start_time}. Use 'YYYY-MM-DD HH:MM:SS'."

    # Validate the datetime format for end-time
    if end_time:
        try:
            datetime.strptime(end_time, '%Y-%m-%d %H:%M:%S')
        except ValueError:
            return f"Invalid datetime format for end-time: {end_time}. Use 'YYYY-MM-DD HH:MM:SS'."

    # Set default result limits
    result_limit = 100

    # If both start-time and end-time are provided, set a higher result limit
    if start_time and end_time:
        result_limit = 6000

    products = query.limit(result_limit).all()

    # No products found for the given query
    if not products:
        error_message = 'There are no values matching your search criteria'

    # Get classification level from environment
    classification_level = os.environ.get('CLASSIFICATION_LEVEL', 'Unclassified')
    return render_template('index.html', products=products, error_message=error_message, classification_level=classification_level)

def runit():
    app.run(host='0.0.0.0', debug=True)

if __name__ == '__main__':
    runit()