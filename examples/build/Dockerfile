FROM python:3.9-alpine
LABEL maintainer="santini@di.unimi.it"
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
CMD ["python", "app.py"]