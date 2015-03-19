FROM dockerfile/python

MAINTAINER Massimo Santini "santini@di.unimi.it"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -qy libevent-1.4 realpath apt-transport-https

RUN pip install gunicorn gevent

RUN rm -rf /var/lib/apt/lists/*

EXPOSE 8000

RUN mkdir /app
COPY app.py /app/app.py

WORKDIR /app

CMD [ "gunicorn", "--log-level", "INFO", "--error-logfile", "-", "-k", "gevent", "-b", "0.0.0.0:8000" ,"app:app" ]
