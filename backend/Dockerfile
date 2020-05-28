FROM python:3.8
RUN mkdir /backend
WORKDIR /backend

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
ADD requirements.txt /backend/
RUN pip install -r requirements.txt
COPY . /backend/
EXPOSE 8000