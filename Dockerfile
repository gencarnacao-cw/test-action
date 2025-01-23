FROM alpine:3.21

RUN apk add jq bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]