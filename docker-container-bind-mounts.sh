# Ensure the source directory exists
mkdir -p "/d/Kolin/Dev/Docker/mongo-data"

docker container create --name mongo-data --mount "type=bind,source=/d/Kolin/Dev/Docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=albert --env MONGO_INITDB_ROOT_PASSWORD=marcella --publish 27018:27017 --memory="256m" --cpus="0.5" mongo:latest # membuat container dengan bind mount
