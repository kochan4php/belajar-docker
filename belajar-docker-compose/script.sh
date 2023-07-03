# DOCKER COMPOSE SERIES

# Membuat container dari file docker-compose.yaml
docker compose create

# Menjalankan container dari file docker-compose.yaml
docker compose start

# Melihat list container yang telah dibuat dari file docker-compose.yaml
docker compose ps # Melihat semua container yang berjalan
docker compose ps -a # Melihat semua container

# Menghentikan container dari file docker-compose.yaml yang sedang berjalan
docker compose stop

# Menghapus semua container yang telah dibuat dari file docker-compose.yaml
docker compose down # Bisa juga digunakan untuk menghapus container, network dan volume yang telah dibuat dari file docker-compose.yaml