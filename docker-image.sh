docker image ls  # list image 
docker image pull php:latest # download image
docker image rm php:latest # hapus image
docker image rm $(docker image ls -q) # hapus semua image
docker image prune # hapus semua image yg tidak terpakai
docker image prune -a # hapus semua image yg tidak terpakai termasuk yg sudah di tag
