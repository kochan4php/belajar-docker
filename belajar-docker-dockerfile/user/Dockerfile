FROM golang:1.20-alpine3.18

# USER adalah instruksi yang untuk mengubah user atau user group ketika Docker Image dijalankan menggunakan Docker Container.
# Secara default, Docker menggunakan user root, namun pada beberapa kasus, mungkin ada aplikasi yang tidak ingin berjalan menggunakan user root karena berpotensi diserang karena Docker Container menggunakan kernel yang sama dengan sistem host dari Docker nya. Maka kita bisa mengubah user nya menggunakan instruksi USER.

# Format :
# USER <user> -> mengubah user
# USER <user>:<group> -> mengubah user dan group

# Note : 
# Namun sebelum mengubah user menggunakan instruksi USER, pastikan user yang menjadi pengganti dari user root sudah ada. Jika usernya belum ada, maka user pengganti nya harus dibuat terlebih dahulu menggunakan instruksi RUN.

WORKDIR /app

# Menambahkan user baru
RUN addgroup -S kochan-group
RUN adduser -S -D -h /app kochan4php kochan-group
RUN chown -R kochan4php:kochan-group /app

USER kochan4php

COPY main.go /app

EXPOSE 8080

CMD go run main.go