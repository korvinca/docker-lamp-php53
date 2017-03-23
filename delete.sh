#/bin/bash

docker rm -v $(docker ps -aq)
docker volume rm $(docker volume ls)
#docker volume rm $(docker volume ls -f dangling=true -q)
docker rmi $(docker images -aq)
docker volume ls
docker ps -a
docker images
