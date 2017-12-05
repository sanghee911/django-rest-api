FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code/django-rest-api
WORKDIR /code/django-rest-api
ADD . /code/django-rest-api
RUN pip install -r requirements.txt
