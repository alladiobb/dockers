#dethatcher "-d" para o terminal não ficar preso
#e poder rodar outros comandos
docker run -d 

#remover
docker rm {CONTAINER ID/NAMES}

#remover forçando "-f"
docker rm {CONTAINER ID/NAMES} -f

#colocar nome do container
docker run --name nginx -d -p 8080:80 nginx

#executar comando no container
docker exec nginx ls/bash

#executar e ficar lá
docker exec -it nginx bash

#executar o vim no nginx
apt-get update
apt-get install vim
