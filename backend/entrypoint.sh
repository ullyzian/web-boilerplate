#!bin/bash

# wait for postgres to start
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# apply migrations 
python manage.py makemigrations --noinput
python manage.py migrate --noinput

# collect static files
python manage.py collectstatic --noinput

# run app
gunicorn backend.wsgi:application --bind 0.0.0.0:8000