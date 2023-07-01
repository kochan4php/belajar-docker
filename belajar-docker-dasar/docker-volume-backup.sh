# Untuk melakukan backup data dari docker volume, kita bisa melakukannya dengan cara-cara seperti berikut:
# 1. Membuat container baru dengan dua mounts, satu untuk volume yang akan di-backup dan satu lagi untuk direktori di sistem host sebagai tujuan backup.
# 2. Melakukan backup menggunakan container dengan cara meng-archive isi dari docker volume, dan disimpan di direktori dari sistem host sebagai tujuan backup.
# 3. Menghapus container yang telah dibuat.

# Cara untuk backup docker volume menggunakan banyak perintah
# ===========================================================================
sudo docker container stop mongodata-volume-baru

sudo docker container create --name container-backup --mount "type=bind,source=/home/kochan4php/Container/belajar-docker/belajar-docker-dasar/backup-volume,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" redis:latest

sudo docker container start container-backup

sudo docker container exec -it container-backup /bin/bash

tar cvf /backup/backup.tar.gz /data

sudo docker container stop container-backup

sudo docker container rm container-backup
# ===========================================================================

# Cara untuk backup docker volume menggunakan satu perintah
# ===========================================================================
sudo docker container run --rm --name container-backup --mount "type=bind,source=/home/kochan4php/Container/belajar-docker/belajar-docker-dasar/backup-volume,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" node:latest tar cvf /backup/backup-lagi.tar.gz /data
# ===========================================================================