FROM golang:1.20-alpine3.18

RUN apk --no-cache add curl

WORKDIR /app

COPY main.go /app/

LABEL author="kochan"

EXPOSE 8080

ENTRYPOINT [ "go", "run" ]

CMD [ "main.go" ]