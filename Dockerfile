FROM  python:2.7-alpine

WORKDIR /app

ADD . /app

EXPOSE 7272

CMD ["python", "demoapp/server.py"]
