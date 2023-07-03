FROM golang:1.20-alpine3.18

# WORKDIR adalah instruksi untuk menentukan direktori / folder sebagai tempat untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY dan ADD.
# WORKDIR ini istilahnya mirip seperti folder home di linux.
# Jika direktori yang ditentukan di WORKDIR tidak ada, maka secara otomatis akan dibuat oleh Docker. Setelah lokasi dari WORKDIR ditentukan, direktori tersebut dijadikan sebagai tempat menjalankan instruksi selanjutnya (seperti RUN, CMD, ENTRYPOINT, COPY dan ADD).
# Jika lokasi WORKDIR adalah relative path (WORKDIR /app -> Absolute Path | WORKDIR app -> Relative Path), maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya.
# WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container (menggunakan command exec).

# Format :
# WORKDIR /app -> artinya working directory nya adalah /app
# WORKDIR docker -> artinya working directory nya adalah /app/docker
# WORKDIR /home/usr/app -> artinya working directory nya adalah /home/usr/app

ENV APP_PORT=8000

WORKDIR /app

COPY main.go /app

LABEL author="kochan4php"

EXPOSE ${APP_PORT}

CMD go run main.go