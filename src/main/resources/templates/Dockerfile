FROM python:3.10.7-alpine3.16

RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev g++ \
    libffi-dev openssl-dev \
    libxml2 libxml2-dev \
    libxslt libxslt-dev \
    libjpeg-turbo-dev zlib-dev

RUN pip install --upgrade pip


RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN apk add git

RUN pip install discord.py
RUN apk add --no-cache openssh

ENTRYPOINT cd /bot && python3 bot.py