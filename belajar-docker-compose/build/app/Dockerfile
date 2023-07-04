FROM golang:1.20-alpine3.18

WORKDIR /app

COPY main.go /app/

ENV APP_PORT=8000

LABEL author="kochan"

EXPOSE ${APP_PORT}

ENTRYPOINT [ "go", "run" ]

CMD [ "main.go" ]