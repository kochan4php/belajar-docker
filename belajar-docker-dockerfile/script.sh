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

# EXPOSE Instruction
docker build -t kochan4php/expose expose
docker image ls | grep kochan4php
docker image inspect kochan4php/expose
docker container create --name expose --publish 8080:8080 kochan4php/expose
docker container start expose
docker container ls
docker container exec -i -t expose /bin/sh

# ENV Instruction
docker build -t kochan4php/env env
docker image ls | grep kochan4php
docker image inspect kochan4php/env
docker container create --name env --env APP_PORT=5000 --publish 5000:5000 kochan4php/env
docker container start env
docker container exec -i -t expose /bin/sh

# VOLUME Instruction
docker build -t kochan4php/volume volume
docker image inspect kochan4php/volume
docker container create --name volume --env APP_PORT=5000 --publish 5000:5000 kochan4php/volume
docker container start volume
docker container logs volume
docker container inspect volume

# WORKDIR Instruction
docker build -t kochan4php/workdir workdir
docker container create --name workdir --publish 8000:8000 kochan4php/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t kochan4php/user user
docker container create --name user -p 8080:8080 kochan4php/user
docker container start user
docker container exec -it user /bin/sh

# ARG Instruction
docker build -t kochan4php/arg arg
docker container create --name arg -p 8080:8080 kochan4php/arg
docker container start arg
docker container exec -it arg /bin/sh
docker container logs arg

# HEALTHCHECK Instruction
docker build -t kochan4php/health health
docker image inspect kochan4php/health
docker container create --name health -p 8080:8080 kochan4php/health
docker container start health
docker container ls