FROM alpine:latest

RUN apk update && apk add curl
COPY check_http_status.sh /check_http_status.sh
RUN chmod +x /check_http_status.sh

ENTRYPOINT ["sh", "-c", "while true; do sh ./check_http_status.sh; sleep 30; done"]