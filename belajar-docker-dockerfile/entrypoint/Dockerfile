FROM golang:1.20-alpine3.18

# ENTRYPOINT adalah instruksi untuk menentukan executable file yang akan dijalankan oleh Container.
# ENTRYPOINT erat kaitannya dengan instruksi CMD.
# Saat membuat instruksi CMD tanpa executable file, secara otomatis CMD akan menggunakan ENTRYPOINT.

# Format :
# ENTRYPOINT ["executable", "param1", "param2"]
# ENTRYPOINT executable param1 param2
# Saat menggunakan CMD ["param1", "param2"], maka param tersebut akan dikirim ke ENTRYPOINT.

WORKDIR /app

COPY main.go /app/

EXPOSE 8080

ENTRYPOINT [ "go", "run" ]

CMD [ "main.go" ]