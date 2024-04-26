FROM node:20-alpine

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

RUN npm install -g @dbml/cli @softwaretechnik/dbml-renderer

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
