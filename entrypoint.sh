#!/bin/bash
# Django
python /panun_network/manage.py collectstatic --noinput
python /panun_network/manage.py makemigrations
python /panun_network/manage.py migrate
python /panun_network/manage.py runserver 8080