# prune
docker system prune # menghapus semua yg tidak terpakai (container, image, network, volume)
docker system prune -a # menghapus semua yg tidak terpakai termasuk image yg tidak terpakai
docker system prune --volumes # menghapus semua yg tidak terpakai termasuk volume
docker container prune # menghapus semua container yg tidak terpakai
docker image prune # menghapus semua image yg tidak terpakai
docker image prune -a # menghapus semua image yg tidak terpakai termasuk image yg tidak terpakai
docker volume prune # menghapus semua volume yg tidak terpakai
docker network prune # menghapus semua network yg tidak terpakai
docker builder prune # menghapus semua builder yg tidak terpakai
docker builder prune -a # menghapus semua builder yg tidak terpakai termasuk builder yg tidak terpakai
docker builder prune --filter "until=24h" # menghapus semua builder yg tidak terpakai lebih dari 24 jam