# Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host ke container yang terdapat di docker
# Untuk melakukan mounting, kita bisa menggunakan parameter --mount ketika membuat container
# Formatnya adalah --mount "type=bind,source=path_host,destination=path_container" dan kalau mau dibuat readonly, bisa ditambahkan readonly setelah destination

# Contoh :
sudo docker container create --name namacontainer --mount "type=bind,source=path_host,destination=path_container" image:tag
# sudo docker container create --name mongodata --mount "type=bind,source=/home/kochan4php/Container/belajar-docker/belajar-docker-dasar/mongodata,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=deo --env MONGO_INITDB_ROOT_PASSWORD=deo mongo:latest