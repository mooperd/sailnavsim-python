# start.sh


source /home/andrew/flask-sailnavsim/.venv/bin/activate
rm /home/andrew/flask-sailnavsim/sailnavsim_web/meow.db

export SECRET_KEY=meow
export SQLALCHEMY_DATABASE_URI="sqlite:///meow.db"
export FLASK_APP=wsgi.py
export FLASK_DEBUG=1
export APP_CONFIG_FILE=config.py
flask run --host=0.0.0.0

