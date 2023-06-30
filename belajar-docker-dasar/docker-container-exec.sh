# untuk mengakses aplikasi yang berjalan di dalam container / atau mengeksekusi /bin/bash di dalam container
# -i untuk mengaktifkan mode interaktif yang memungkinkan kita untuk mengirimkan input ke dalam container
# -t untuk mengaktifkan mode terminal yang memungkinkan kita untuk mengirimkan perintah dari terminal ke dalam container
sudo docker container exec -i -t containerId/namacontainer /bin/bash
sudo docker container exec -it containerId/namacontainer /bin/bash