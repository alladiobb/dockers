#Ver as opções para network
docker network

#Verificar as redes
docker network ps

#Apagar todas as redes
docker network prune

#Inspecionar o que tem no BRIDGE
docker network inspect bridge

#entrar no docker
docker attach {nome do container}

#criando uma rede
docker network create --driver bridge