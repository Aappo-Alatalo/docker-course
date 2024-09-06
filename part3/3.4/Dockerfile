FROM docker:latest

WORKDIR /app

RUN apk update && apk add git

COPY builder.sh /app/builder.sh

RUN chmod +x /app/builder.sh

ENTRYPOINT ["sh", "/app/builder.sh"]