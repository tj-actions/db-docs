FROM node:22-alpine

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

RUN npm install -g @dbml/cli @softwaretechnik/dbml-renderer

COPY entrypoint.sh dbml-render.sh schema-dump.sh sql-to-dbml.sh /

ENTRYPOINT ["/entrypoint.sh"]
