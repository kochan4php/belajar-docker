FROM alpine:3

# COPY adalah instruksi yang dapat digunakan untuk menambahkan file dari source (misal komputer saya) ke dalam folder destination yang ada di Docker Image.
# Bedanya dengan ADD, instruksi COPY murni hanya melakukan copy file saja ke dalam folder destination, tidak seperti ADD yang bisa melakukan copy, mendownload source dari URL dan meng-extract file compress secara otomatis.
# Namun best practice nya sebisa mungkin gunakan COPY. Jika butuh meng-extract file compress, gunakan instruksi RUN untuk menjalankan aplikasi untuk extract file compress tersebut.

# Format :
# COPY source destination

# Contoh :
# COPY world.txt /hello -> Menambah file world.txt ke dalam folder hello
# COPY *.txt /hello -> Menambah semua file berekstensi .txt ke dalam folder hello

RUN mkdir hello-copy

COPY /text/*.txt /hello-copy

LABEL author="kochan4php"

CMD ["cat", "/hello-copy/hello.txt", "/hello-copy/world.txt"]