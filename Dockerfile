FROM postgres:latest

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=senha
ENV POSTGRES_DB=escola

COPY data/*.sql /docker-entrypoint-initdb.d/