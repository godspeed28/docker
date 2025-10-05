docker volume ls # melihat daftar volume
docker volume create nama-volume # membuat volume
docker volume rm nama-volume # menghapus volume
docker volume rm $(docker volume ls -q) # menghapus semua volume
docker volume prune # menghapus semua volume yg tidak terpakai
docker volume inspect nama-volume # melihat detail volume


