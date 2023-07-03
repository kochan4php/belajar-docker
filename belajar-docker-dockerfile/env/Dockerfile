FROM golang:1.20-alpine3.18

# ENV adalah instruksi yang digunakan untuk mengubah environment variable, baik itu ketika tahapan docker build atau ketika jalan dalam Docker Container
# ENV yang sudah didefinisikan namanya di dalam Dockerfile bisa digunakan kembali dengan menggunakan kode ${NAMA_ENV}
# Environment variable yang dibuat menggunakan instruksi ENV disimpan di dalam Docker Image dan bisa dilihat menggunakan perintah inspect
# Selain itu, environment variable juga bisa diganti nilainya pada saat pembuatan Docker Container dengan menambahkan parameter --env key=value

# Format :
# ENV <key>=<value>
# ENV <key1>=<value1> <key2>=<value2> ...

ENV APP_PORT=8080

RUN mkdir app
RUN apk --no-cache add curl

COPY main.go app

EXPOSE ${APP_PORT}

CMD go run app/main.go