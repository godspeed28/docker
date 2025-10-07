docker network connect nama-network containerID/namacontainer # menghubungkan container ke network
docker network disconnect nama-network containerID/namacontainer # memutuskan koneksi container ke network
docker container create --name family --network kolin image:tag # membuat container dan menghubungkan ke network

# mysql
docker create --name family \
--network kolin \
--publish 3306:3306 \
--env MYSQL_ROOT_PASSWORD=123 \
mysql:latest
# membuat container mysql dan menghubungkan ke network kolin

# mongo
docker create --name family \
--network kolin \
--publish 27017:27017 \
--env MONGO_INITDB_ROOT_USERNAME=admin \
--env MONGO_INITDB_ROOT_PASSWORD=admin \
mongo:latest
# membuat container mongo dan menghubungkan ke network kolin

# mongo-express
docker create --name adminmongo \
--network kolin \
--publish 8081:8081 \
--env ME_CONFIG_BASICAUTH_USERNAME=admin \
--env ME_CONFIG_BASICAUTH_PASSWORD=admin \
--env ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
--env ME_CONFIG_MONGODB_ADMINPASSWORD=admin \
--env ME_CONFIG_MONGODB_URL="mongodb://admin:admin@family:27017/" \
mongo-express:latest
# membuat container mongo-express dan menghubungkan ke network kolin