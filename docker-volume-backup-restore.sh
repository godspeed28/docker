#backup
docker container create --name nginx-backup -v "D:\Kolin\Dev\Docker\backup":/backup -v mongodata:/data nginx:latest # membuat container untuk backup volume mongodata ke direktori host D:\Kolin\Dev\Docker\backup
tar cvf /backup/backup.tar.gz /data # membuat backup data dari volume ke dalam file tar.gz di direktori host

#backup dengan cara cepat
docker container run --rm --name ubuntu -v "D:\Kolin\Dev\Docker\backup":/backup -v mongodata:/data ubuntu bash -c "apt-get update && apt-get install -y tar && tar czvf /backup/backup.tar.gz /data" # menjalankan container sementara untuk membuat backup volume mongodata ke direktori host D:\Kolin\Dev\Docker\backup

#restore
docker container run --rm --name ubuntu-restore -v "D:\Kolin\Dev\Docker\backup":/backup -v mongorestore:/data ubuntu bash -c "apt-get update && apt-get install -y tar && tar xzvf /backup/backup.tar.gz -C /" # menjalankan container sementara untuk merestore backup ke volume mongodata dari direktori host D:\Kolin\Dev\Docker\backup

#cek
docker container create --name mongo-restore --volume mongorestore:/data/db --env MONGO_INITDB_ROOT_USERNAME=abe --env MONGO_INITDB_ROOT_PASSWORD=marcella --publish 27020:27017 mongo:latest # membuat container untuk mengecek hasil restore data