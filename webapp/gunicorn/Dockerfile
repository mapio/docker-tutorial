FROM python:2.7-alpine

MAINTAINER Massimo Santini "santini@di.unimi.it"

RUN apk add --update gcc python-dev musl-dev && rm -rf /var/cache/apk/*

RUN pip install gunicorn gevent

EXPOSE 8000

RUN mkdir /app

WORKDIR /app

CMD [ "gunicorn", "--log-level", "INFO", "--error-logfile", "-", "-k", "gevent", "-b", "0.0.0.0:8000" ,"app:app" ]

COPY app.py /app/app.py
