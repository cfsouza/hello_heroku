# https://docs.docker.com/compose/django/
FROM python:3

RUN mkdir /code

WORKDIR /code
COPY requirements.txt /code/
# https://hub.docker.com/_/python/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /code/