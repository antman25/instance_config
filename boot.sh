#!/bin/sh
#source venv/bin/activate
#flask db upgrade
#flask translate compile
#exec gunicorn -b :5000 --access-logfile - --error-logfile - microblog:app
exec venv/bin/flask run -h 0.0.0.0 -p 5000
#exec venv/bin/python3 /home/testapp/server.py