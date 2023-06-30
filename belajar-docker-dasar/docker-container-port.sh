# Docker memiliki kemampuan untuk menghubungkan port antara container dan host.
# Untuk menghubungkan port antara container dan host, kita perlu menambahkan parameter -p atau --publish saat pembuatan container.
# Formatnya adalah -p hostport:containerport.
# Contoh :
sudo docker container create --name namacontainer --publish hostport:containerport namaimage:tag