# Mencoba untuk menambahkan (connect) / menghapus (disconnect) container ke network

# Menambahkan network secara langsung saat pembuatan container
# sudo docker container create --name namacontainer --network namanetwork image:tag

# Menambahkan network setelah container dibuat
# sudo docker network connect namanetwork namacontainer

# Menghapus network dari container
# sudo docker network disconnect namanetwork namacontainer

sudo docker network create mongo-network

sudo docker volume create mongodb-storage

sudo docker container create --name mongodb-container --network mongo-network --env MONGO_INITDB_ROOT_USERNAME=mongoadmin --env MONGO_INITDB_ROOT_PASSWORD=secretpassword --mount "type=volume,source=mongodb-storage,destination=/data/db" mongo:latest

# sudo docker container create --name mongodb-container-local --mount "type=volume,source=mongodb-storage,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=mongoadmin --env MONGO_INITDB_ROOT_PASSWORD=secretpassword mongo:latest

sudo docker image pull mongo-express

sudo docker container create --name mongodb-express-container --network mongo-network --env ME_CONFIG_MONGODB_ADMINUSERNAME=mongoadmin --env ME_CONFIG_MONGODB_ADMINPASSWORD=secretpassword --env ME_CONFIG_MONGODB_URL="mongodb://mongoadmin:secretpassword@mongodb-container:27017/" --publish 8081:8081 --memory 1g --cpus 1.0 mongo-express:latest

sudo docker container start mongodb-container

sudo docker container start mongodb-express-container

sudo docker network disconnect mongo-network mongodb-container

sudo docker network connect mongo-network mongodb-container