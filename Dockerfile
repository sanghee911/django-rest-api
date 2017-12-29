FROM python:3.5
ENV PYTHONUNBUFFERED 1
ENV DATABASE_HOST db
ENV DATABASE_NAME postgres
ENV DATABASE_USER postgres
ENV DATABASE_PASSWORD postgres
RUN mkdir /code
WORKDIR /code
ADD . /code
RUN pip install -r requirements.txt
ENTRYPOINT ["bash", "/code/init.sh"]
