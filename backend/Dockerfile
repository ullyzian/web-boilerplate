# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

EXPOSE 8000

# Update packeges and install netcat
RUN apt-get update && apt-get install -yyq netcat

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

RUN mkdir /backend
WORKDIR /backend

# install project dependencies
RUN pip install --upgrade pip
ADD requirements.txt /backend/
RUN pip install -r requirements.txt

COPY . /backend/
