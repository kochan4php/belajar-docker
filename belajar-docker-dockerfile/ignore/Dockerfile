FROM alpine:3

# Saat melakukan instruksi ADD atau COPY dari file source, Docker pertama kali akan membaca file yang bernama .dockerignore
# File .dockerignore sama seperti .gitignore, dimana kita bisa menyebutkan file file yang ingin kita ignore (abaikan)
# File-file yang ada di dalam .dockerignore, secara otomatis file tersebut tidak akan di ADD atau di COPY

RUN mkdir hello-dockerignore

COPY /text/* hello-dockerignore

LABEL author="kochan4php"

CMD ls -l hello-dockerignore