FROM gunicorn

MAINTAINER Massimo Santini "santini@di.unimi.it"

RUN rm -f /app/app.py

COPY ./python-websockets-chat/static /app
COPY ./python-websockets-chat/templates /app
COPY ./python-websockets-chat/chat.py /app
COPY ./requirements.txt /app

RUN pip install -r requirements.txt

CMD [ "gunicorn", "--log-level", "INFO", "--error-logfile", "-", "-b", "0.0.0.0:8000", "-k", "flask_sockets.worker", "chat:app" ]
