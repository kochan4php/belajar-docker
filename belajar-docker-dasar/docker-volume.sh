# Docker volume bisa dianggap sebagai storage yang dapat digunakan untuk menyimpan data dari container, mirip seperti bind mounts. Bedanya dengan bind mounts, pada bind mounts data disimpan pada sistem host, sedangkan pada volume, data nya disimpan dan dimanage oleh docker itu sendiri.
# Docker volume mirip dengan bind mounts, bedanya adalah terdapat management volume, dimana kita dapat membuat, melihat, dan menghapus volume.

# Membuat volume
sudo docker volume create namavolume

# Melihat volume
sudo docker volume ls

# Menghapus volume
sudo docker volume rm namavolume