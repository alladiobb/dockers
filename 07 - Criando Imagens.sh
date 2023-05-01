#verificar as imagens que você tem no docker:
docker images

#Repositório de imagens
#https://hub.docker.com/
#Caso não tenha as imagens você pode pesquisar e baixar

#remover imagens 
docker -rmi "nginx"

#criando imagem
#User o arquivo 06 como exemplo

#comando para criar a imagem
docker build -t alladio .
