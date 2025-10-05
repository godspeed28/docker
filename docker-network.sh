docker network create nama-network # membuat network
docker network create --driver bridge nama-network # membuat network dengan driver bridge
docker network create --driver overlay nama-network # membuat network dengan driver overlay
docker network ls # melihat daftar network
docker network inspect nama-network # melihat detail network
docker network rm nama-network # menghapus network
docker network rm $(docker network ls -q) # menghapus semua network yg tidak terpakai
docker network prune # menghapus semua network yg tidak terpakai
docker network inspect nama-network # melihat detail network termasuk container yg terhubung ke network
