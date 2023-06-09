FROM python:3.11-alpine

WORKDIR /code

# Variables de entorno de Flask
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# Exposicion de un puerto
EXPOSE 5000

# Copiar Codigo
COPY . .

CMD ["flask", "run"]