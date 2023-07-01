# Untuk melakukan restore data dari docker volume yang sudah dibackup, kita bisa melakukannya dengan cara-cara seperti berikut:
# 1. Membuat volume baru untuk lokasi restore data backup
# 2. Membuat container baru dengan dua mounts, satu untuk volume yang akan di-restore dan satu lagi untuk direktori di sistem host dimana file backup berasal.
# 3. Melakukan restore menggunakan container dengan cara meng-ekstrak isi dari file backup, dan data hasil ekstraknya akan disimpan di docker volume yang baru.
# 4. Menghapus container yang telah dibuat.

# Cara untuk restore docker volume menggunakan satu perintah
# ===========================================================================
sudo docker volume create mongo-volume-restore

sudo docker container run --rm --name container-restore --mount "type=bind,source=/home/kochan4php/Container/belajar-docker/belajar-docker-dasar/backup-volume,destination=/backup" --mount "type=volume,source=mongo-volume-restore,destination=/data" node:latest bash -c "cd / && cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1"
# ===========================================================================

# Buat container baru untuk ngecek apakah data sudah berhasil di restore di volume yang baru
sudo docker container create --name mongo-restore --mount "type=volume,source=mongo-volume-restore,destination=/data/db" --publish 27030:27017 --env MONGO_INITDB_ROOT_USERNAME=deo --env MONGO_INITDB_ROOT_PASSWORD=deo --memory 300m --cpus 1.5 mongo:latest