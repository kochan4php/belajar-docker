# Docker volume yang sudah dibuat dapat digunakan pada container.
# Untuk menggunakan volume pada container, kita bisa menggunakan parameter --mount ketika membuat container, sama seperti bind mounts.
# Formatnya adalah --mount "type=volume,source=namavolume,destination=path_container" dan kalau mau dibuat readonly, bisa ditambahkan readonly setelah destination.

# Contoh :
sudo docker container create --name namacontainer --mount "type=volume,source=namavolume,destination=path_container" image:tag
# sudo docker container create --name mongodata --mount "type=volume,source=mongovolume,destination=/data/db" --publish 27021:27017 --env MONGO_INITDB_ROOT_USERNAME=deo --env MONGO_INITDB_ROOT_PASSWORD=deo mongo:latest