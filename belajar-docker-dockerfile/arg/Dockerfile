FROM golang:1.20-alpine3.18

# ARG (Argument) merupakan instruksi yang digunakan untuk mendefinisikan variable yang bisa digunakan oleh pengguna untuk dikirim ketika melakukan proses docker build dengan menambahkan parameter --build-arg <key>=<value> (docker build -t namaimage:tag folderberisidockerfile).
# ARG hanya bisa digunakan pada saat proses docker build / build time saja, artinya ketika berjalan dalam Docker Container, ARG tidak dapat digunakan. Berbeda dengan ENV yang memang digunakan ketika berjalan dalam Docker Container.
# Cara mengakses variable dari ARG sama seperti ENV, menggunakan ${nama_variable}

# Format :
# ARG <key> -> valuenya wajib dikirm ketika menjalankan proses build time.
# ARG <key>=<defaultvalue> -> valuenya tidak wajib dikirm ketika proses build time, tapi kalau dikirm juga bisa bisa saja.

# Note :
# ARG dijalankan pada saat build time, sedangkan CMD dijalankan pada saat runtime (dijalankan menggunakan Docker Container)

ARG app=main

WORKDIR /app

COPY main.go /app

RUN mv /app/main.go /app/${app}.go

EXPOSE 8080

ENV app=${app}

CMD go run ${app}.go