docker container ls -a # lihat container
docker container ls # lihat container yg berjalan saja
docker container create --name namacontainer namaimage:tag # membuat container
docker container start containerID/namacontainer # menjalankan container
docker container stop containerID/namacontainer # memberhentikan container
docker container rm containerID/namacontainer # menghapus container
docker start $(docker ps -aq) # menjalankan semua container yg berhenti
docker stop $(docker ps -aq) # memberhentikan semua container yg berjalan
docker rm $(docker ps -aq) # menghapus semua container yg berhenti
docker container prune # menghapus semua container yg berhenti

