FROM golang:1.20-alpine3.18

# VOLUME merupakan instruksi yang digunakan untuk membuat Docker Volume secara otomatis saat kita membuat Docker Container.
# Semua file yang terdapat di volume secara otomatis akan di copy ke Docker Volume, walaupun kita tidak membuat Docker Volume saat kita membuat Docker Container nya.
# Instruksi VOLUME sangat cocok ketika aplikasi kita butuh menyimpan data di dalam file, sehingga data bisa aman berada di dalam Docker Volume.

# Format :
# VOLUME /lokasi/folder
# VOLUME /lokasi/folder1 /lokasi/folder2 ...
# VOLUME ["/lokasi/folder1", "/lokasi/folder2", "..."]

ENV APP_PORT=8080 APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app

COPY main.go app

EXPOSE ${APP_PORT}

VOLUME ${APP_DATA}

CMD go run app/main.go