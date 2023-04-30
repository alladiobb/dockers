docker run -i -t ubuntu:latest bash 

#rodar NGINX pela porta(-p) 8080
#e acessar (:) no docker a porta 80
#-> "-p 8080:80", no meu computador 
docker run -p 8080:80 nginx



