#!/bin/sh
#source venv/bin/activate
#flask db upgrade
#flask translate compile
#exec gunicorn -b :5000 --access-logfile - --error-logfile - microblog:app
#exec flask run
exec /usr/bin/python3 /home/testapp/server.py