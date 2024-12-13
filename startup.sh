#!/bin/bash
# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the app
gunicorn --bind=0.0.0.0:8000 SampleApp.wsgi:application
