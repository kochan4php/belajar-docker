# Docker network memungkinkan docker container yang tadinya terisolasi satu sama lain, bisa saling berkomunikasi satu sama lain.
# Dengan menggunakan docker network, kita bisa membuat docker container yang berjalan di network yang sama, bisa saling berkomunikasi satu sama lain.

sudo docker network ls # Melihat list network yang ada

sudo docker network create --driver namadriver namanetwork # Membuat network baru
# -> sudo docker network create --driver bridge belajar-network

sudo docker network rm namanetwork # Menghapus network
# -> sudo docker network rm belajar-network
# Jika ingin menghapus network, pastikan tidak ada container yang masih menggunakan network yang akan dihapus