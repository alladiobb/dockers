#criar uma rede
docker network create --driver bridge minharede

#Criar dois sistemas UBUNTU 
docker run -dit --name ubuntu1 --network minharede bash
#ubuntu 2
docker run -dit --name ubuntu3 --network minharede bash

#entrar em um deles e pingar o outo
docker exec -it ubuntu1 bash

#criar outo foda da rede "bridge minharede"
docker run -dit --name ubuntu3

#entrar dentro do ubuntu 3
docker exec -it --name ubuntu3 bash
#tentar pingar os ouros dois ubuntu1 e 2

#conectando o ubuntu3 junto com os outos ubuntu1 e 2 na --network minharede
docker network connect minharede ubuntu3

