FROM python:3.11.4

LABEL maintainer="Geovane Pacheco <geovane.pacheco99@gmail.com>"

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

RUN adduser user
USER user
