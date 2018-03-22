FROM node:8.9-alpine

WORKDIR /confd-example

COPY package.json .
RUN npm install --progress=false
COPY . .

RUN apk update && \
  apk add ca-certificates wget

RUN chmod +x docker-entrypoint.sh
