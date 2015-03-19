FROM gunicorn

MAINTAINER Massimo Santini "santini@di.unimi.it"

RUN rm -f /app/app.py
RUN mkdir /app/logs

COPY ./app /app

RUN pip install -r requirements.txt

CMD [ "gunicorn", "--log-level", "INFO", "--error-logfile", "logs/logfile.txt", "-b", "0.0.0.0:8000", "-k", "flask_sockets.worker", "chat:app" ]
