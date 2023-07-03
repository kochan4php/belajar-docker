FROM alpine:3

RUN mkdir hello-cmd
RUN touch hello-cmd/hello.txt
RUN echo "Hello from CMD Instruction" > hello-cmd/hello.txt

# CMD atau Command merupakan instruksi yang digunakan ketika Docker Container berjalan.
# CMD tidak akan dijalankan ketika proses build Docker Image, namun dijalankan ketika Docker Container berjalan.
# Dalam file Dockerfile, kita tidak bisa menuliskan lebih dari satu perintah CMD. Jika dituliskan lebih dari satu, maka hanya perintah CMD terakhir yang akan dijalankan.

# Format :
# CMD <command> <param> <param>
# CMD ["executable", "param", "param"]
# CMD ["param", "param"] -> kalau ini, akan menggunakan executable yang ada di ENTRYPOINT

CMD cat hello-cmd/hello.txt