#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Specify Python interpreter version explicitly if necessary
python3.12 manage.py collectstatic --noinput

