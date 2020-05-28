FROM python:3.8

# update packeges and install netcat
RUN apt-get update && apt-get install -yyq netcat

RUN mkdir /backend
WORKDIR /backend

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install project dependencies
RUN pip install --upgrade pip
ADD requirements.txt /backend/
RUN pip install -r requirements.txt

COPY . /backend/