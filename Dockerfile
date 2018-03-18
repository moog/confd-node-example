FROM node:8.9-alpine

WORKDIR /confd-example

COPY . .

RUN apk update && \
  apk add ca-certificates wget && \
  update-ca-certificates && \
  npm install --progress=false

RUN chmod +x docker-entrypoint.sh
