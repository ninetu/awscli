FROM python:3.9.5-slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends git curl rsync \
    && pip install --upgrade awscli awsebcli s3cmd \
    && apt-get purge -y --auto-remove \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir ~/.aws
