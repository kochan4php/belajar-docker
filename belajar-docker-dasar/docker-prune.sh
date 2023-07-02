# Fitur untuk membersihkan otomatis container, image, volume dan network yang sudah tidak digunakan bernama docker prune.
sudo docker container prune # -> Menghapus semua container yang tidak aktif
sudo docker image prune # -> Menghapus semua image yang tidak digunakan
sudo docker volume prune # -> Menghapus semua volume yang tidak digunakan
sudo docker network prune # -> Menghapus semua network yang tidak digunakan
sudo docker system prune # -> Menghapus semua container, image dan network yang tidak digunakan