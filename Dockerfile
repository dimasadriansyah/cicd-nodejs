FROM node:alpine

LABEL maintainer="Dimas Adriansyah <dimasadriansah4@gmail.com>"

RUN apk update && apk add ca-certificates && update-ca-certificates

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN npm install

RUN npm build

CMD ["node", "index.js"]
