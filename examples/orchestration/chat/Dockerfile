FROM dt/gunicorn

MAINTAINER Massimo Santini "santini@di.unimi.it"

RUN rm -f /app/app.py
RUN mkdir /app/logs

CMD [ "gunicorn", "--log-level", "INFO", "--error-logfile", "logs/logfile.txt", "-b", "0.0.0.0:8000", "-k", "flask_sockets.worker", "chat:app" ]

COPY ./app /app
RUN pip install -r requirements.txt
