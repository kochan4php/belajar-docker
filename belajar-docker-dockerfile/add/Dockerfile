FROM alpine:3

# ADD adalah instruksi yang dapat digunakan untuk menambahkan file dari source (misal komputer saya) ke dalam folder destination yang ada di Docker Image.
# Instruksi ADD bisa mendeteksi apakah sebuah file source merupakan sebuah file compress (seperti .tar.gz, .gzip) atau bukan. Jika mendeteksi file source yang merupakan file compress, maka secara otomatis instruksi ADD akan meng-extract file tersebut di dalam folder destination di Docker Image.
# Instruksi ADD juga bisa mendukung banyak penambahan file sekaligus.

# Format :
# ADD source destination

# Contoh :
# ADD world.txt /hello -> Menambah file world.txt ke dalam folder hello
# ADD *.txt /hello -> Menambah semua file berekstensi .txt ke dalam folder hello

RUN mkdir hello-add

ADD /text/*.txt /hello-add

LABEL author="kochan4php"

CMD cat /hello-add/hello.txt /hello-add/world.txt