#dethatcher "-d" para o terminal não ficar preso
#e poder rodar outros comandos
docker run -d

# --rm -> Quando sair o container morre
# -it ->
# -v -> compartilhar o volume

#rodando o docker gerado, dando o nome para ele agregando uma porta 
docker run --rm -d --name [nome que vou dar] -p 8000:8000 [nome do container criado]


#Pprar Docker
docker stop {CONTAINER ID / NAME} 

#remover
docker rm {CONTAINER ID/NAMES}

#remover forçando "-f"
docker rm {CONTAINER ID/NAMES} -f

#Parar todos os dockers recursivamente
docker rm -f $(docker ps -aq)

#colocar nome do container e as portas
docker run --name nginx -p 8080:80 nginx

#Rodar o docker e liberar o terminal
-d

#executar comando no container
docker exec nginx ls/bash

#executar e ficar lá
docker exec -it nginx bash

#executar o vim no nginx
apt-get update
apt-get install vim

#NGINX
/use/share/nginx/html/


