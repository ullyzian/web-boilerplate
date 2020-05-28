FROM python:3.8
RUN mkdir /backend
WORKDIR /backend
ADD requirements.txt /backend/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /backend/
EXPOSE 8000