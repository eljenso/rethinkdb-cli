FROM node:alpine

MAINTAINER Jens Böttcher <eljenso.boettcher@gmail.com>

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN git clone https://github.com/athlite/rethinkdb-cli.git

WORKDIR /rethinkdb-cli
RUN npm install

ENTRYPOINT ["node", "/rethinkdb-cli/bin/cli.js"]
