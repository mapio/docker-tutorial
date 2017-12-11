FROM python:2.7-alpine
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
CMD ["python", "app.py"]
