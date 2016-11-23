FROM node:alpine

MAINTAINER Jens Böttcher <eljenso.boettcher@gmail.com>

ENV http_proxy=http://192.168.245.225:8080 \
    https_proxy=http://192.168.245.225:8080

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN git clone https://github.com/athlite/rethinkdb-cli.git

WORKDIR /rethinkdb-cli
RUN npm install

ENTRYPOINT node /rethinkdb-cli/bin/cli.js
