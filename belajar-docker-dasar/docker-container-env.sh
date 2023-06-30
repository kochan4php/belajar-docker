# Dengan menggunakan docker container, kita bisa menambahkan environment variable ke dalam aplikasi yang terdapat di dalam docker container
# Untuk menambahkannya, saat pembuatan container kita perlu menambahkan parameter -e atau --env.
# Formatnya adalah --env key="value"
# Contoh :
sudo docker container create --name namacontainer --env key="value" --env key2="value2" image:tag
# sudo docker container create --name contohmongo-env --env MONGO_INITDB_ROOT_USERNAME=deosubarno --env MONGO_INITDB_ROOT_PASSWORD="deosubarno" mongo:latest
