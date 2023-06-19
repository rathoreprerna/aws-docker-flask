# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /docker-assessment-flask

COPY setup.py setup.py
RUN python setup.py install

COPY . .

ENV FLASK_APP="/hello/__init__.py"
ENV FLASK_ENV=development
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]