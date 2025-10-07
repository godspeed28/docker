# inspect
docker inspect nama-container # melihat detail container
docker inspect nama-image # melihat detail image
docker inspect nama-network # melihat detail network
docker inspect nama-volume # melihat detail volume
docker inspect $(docker ps -q) # melihat detail semua container yg sedang berjalan
docker inspect $(docker images -q) # melihat detail semua image
docker inspect $(docker network ls -q) # melihat detail semua network
docker inspect $(docker volume ls -q) # melihat detail semua volume