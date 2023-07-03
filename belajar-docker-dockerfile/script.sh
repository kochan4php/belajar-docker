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

# CMD Instruction
docker build -t kochan4php/cmd cmd
docker image ls | grep kochan4php
docker container create --name cmd kochan4php/cmd
docker container start cmd
docker container logs cmd

# LABEL Instruction
docker build -t kochan4php/label label
docker image ls | grep kochan4php
docker image inspect kochan4php/label

# ADD Instruction
docker build -t kochan4php/add add
docker image ls | grep kochan4php
docker container create --name add kochan4php/add
docker container start add
docker container logs add

# ADD Instruction
docker build -t kochan4php/copy copy
docker image ls | grep kochan4php
docker container create --name copy kochan4php/copy
docker container start copy
docker container logs copy

# .dockerignore
docker build -t kochan4php/ignore ignore
docker image ls | grep kochan4php
docker container create --name ignore kochan4php/ignore
docker container start ignore
docker container logs ignore