FROM tensorflow/tensorflow:2.14.0 AS builder
LABEL org.opencontainers.image.source="https://github.com/senseizero/pythonIABase"

WORKDIR /usr/src/app

COPY ./requirements.txt ./requirements.txt

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && rm -rf /root/.cache/pip
