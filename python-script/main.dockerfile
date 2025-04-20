FROM python:3.13-alpine

RUN apk upgrade --no-cache
RUN pip install --upgrade pip

WORKDIR /script
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
