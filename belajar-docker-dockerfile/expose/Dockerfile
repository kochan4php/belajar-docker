FROM node:lts-alpine3.18

RUN mkdir app
RUN apk --no-cache add curl

COPY index.js app

# EXPOSE adalah instruksi untuk memberitahukan bahwa Docker Container akan listen port pada nomor dan protocol tertentu.
# Instruksi EXPOSE tidak akan mempublish port apapun, namun hanya sebagai dokumentasi untuk memberi tahu yang membuat Docker Container, bahwa Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container.

# Format :
# EXPORT port/protocol -> default nya menggunakan protocol tcp, jadi tanpa disebutkan protocolnya tetap akan menggunakan tcp sebagai default protocol
# EXPORT port
# EXPORT port/tcp
# EXPORT port/udp

EXPOSE 8080

CMD node app/index.js