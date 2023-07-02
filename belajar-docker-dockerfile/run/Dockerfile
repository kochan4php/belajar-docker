FROM alpine:3

# RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam image pada saat proses build image.
# Perintah RUN akan di jalankan pada saat proses docker build saja. Setelah menjadi Docker Image, perintah RUN tidak akan dijalankan lagi.
# Jadi ketika menjalankan Docker Container, maka perintah RUN tidak akan dijalankan lagi.

# Format : 
# RUN <command>
# RUN ["executable", "param1", "param2"]

RUN mkdir hello-run
RUN touch hello-run/hello.txt
RUN echo "Hello this is RUN instruction" > "hello-run/hello.txt"
RUN cat "hello-run/hello.txt"