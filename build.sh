#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

py manage.py makemigrations
py manage.py migrate
py manage.py runserver