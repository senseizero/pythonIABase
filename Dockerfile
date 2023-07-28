FROM python:3.10.6-slim AS builder
LABEL org.opencontainers.image.source="https://github.com/senseizero/pythonIABase"

WORKDIR /usr/src/app

COPY ./requirements.txt ./requirements.txt

RUN python -m venv /venv \
    && /venv/bin/pip install --upgrade pip \
    && /venv/bin/pip install --no-cache-dir -r requirements.txt \
    && /venv/bin/python -m spacy download es_core_news_lg \
    && rm -rf /root/.cache/pip
