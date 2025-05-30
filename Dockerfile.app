FROM python:3.10

WORKDIR /app

RUN apt-get update && apt-get install -y postgresql-client

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY src/ /app/
COPY queries/ /app/queries/

CMD ["python", "consulta.py"]