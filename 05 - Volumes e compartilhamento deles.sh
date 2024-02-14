#verificar os commandos de volumes
docker volume [COMMAND]

#criando volume
docker volume create novovolume

#listando volumes
docker volume ls

#
docker volume inspect

#exemplo - Criando pasta "app"
docker run --name nginx -d --mount type=volume, source=meuvolume, target=/app nginx

#para verificar a pasta
docker exec -it nginx bash
ls
cd app

#criando um arquivo assim ao rodar outros dockers 
#eles compartilharão as mesmas pastas e arquivos
docker run --name nginx2 -d --mount type=volume, source=meuvolume, target=/app nginx
#OU usando -v
docker run --name nginx3 -d -v meuvolume:/app nginx

#Cuidados com os arquivos e diretórios de volumes
#matar e limpar os volumes
docker volume prume

