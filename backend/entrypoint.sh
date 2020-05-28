#!bin/bash

# collect static files
python manage.py collectstatic --noinput

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

# run app
gunicorn backend.wsgi:application --bind 0.0.0.0:8000