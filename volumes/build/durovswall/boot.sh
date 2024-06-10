#!/bin/bash
source venv/bin/activate
flask db upgrade
#kompilyaciya perevodov yazikov, hz 4to eto takoe
#flask translate compile
#zapusk web-servera
exec gunicorn -b :5000 --access-logfile - --error-logfile - exemplar:app
