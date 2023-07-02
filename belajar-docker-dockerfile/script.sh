# Untuk membuat image dari docker file, format perintahnya adalah:
# docker build -t <nama_image>:<tag> <folder_yang_berisi_dockerfile>
# jika ingin menampilkan detail dari proses build image, gunakan perintah --progress=plain
# jika ingin mengulangi proses build tanpa cache, gunakan perintah --no-cache

# FROM Instruction
docker build -t kochan4php/from from

docker image ls | grep kochan4php

# FROM Instruction
docker build -t kochan4php/run run --progress=plain --no-cache

docker image ls | grep kochan4php