# Melihat semua docker container yang ada di docker daemon
sudo docker container ls -a

# Melihat semua docker container yang sedang berjalan di docker daemon
sudo docker container ls

# Membuat container dari docker image
sudo docker container create --name namacontainer namaimage:tag

# Menjalankan container yang sudah dibuat
sudo docker container start containerId/namacontainer

# Menghentikan container yang sedang berjalan
sudo docker container stop containerId/namacontainer

# Menghapus container yang sudah berhenti
sudo docker container rm containerId/namacontainer