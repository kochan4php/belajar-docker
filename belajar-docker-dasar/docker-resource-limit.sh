# Saat membuat container, secara default, container tidak dibatasi untuk menggunakan resource yang ada di host seperti memory atau cpu.
# Untuk membatasi penggunaan resource yang digunakan oleh container, kita bisa menambahkan flag --memory dan --cpus pada saat pembuatan container.
# Flag --memory digunakan untuk membatasi penggunaan memory oleh container. Nilai yang diberikan bisa dalam satuan byte, kilobyte, megabyte, gigabyte, atau terabyte dengan hanya menggunakan awalannya saja. Contoh (100m / 1g).
# Flag --cpus digunakan untuk membatasi penggunaan cpu oleh container. Nilai yang diberikan bisa dalam bilangan desimal, seperti (0.5 -> hanya menggunakan setengah core cpu saja; 1.5 -> hanya menggunakan satu setengah core cpu saja).
# Contoh command:
sudo docker container create --name namacontainer --publish hostport:containerport --memory 100m --cpus 1.0 image:tag