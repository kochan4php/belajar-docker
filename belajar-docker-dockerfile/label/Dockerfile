FROM alpine:3

RUN mkdir hello-label
RUN touch hello-label/hello.txt
RUN echo "Hello from LABEL Instruction" > hello-label/hello.txt

# LABEL merupakan instruksi yang digunakan untuk menambahkan metadata ke dalam Docker Image yang kita buat.
# Metadata adalah informasi tambahan seperti nama aplikasi, pembuat, website, perusahaan, lisensi dan lain-lain.
# Metadata hanya berfungsi sebagai informasi dari Docker Image saja, tidak akan digunakan ketika menjalankan Docker Container

# Format :
# LABEL <key>=<value>
# LABEL <key1>=<value1> <key2>=<value2>

LABEL author="kochan4php"
LABEL website="https://kotree.vercel.app" license="MIT"

CMD cat hello-label/hello.txt