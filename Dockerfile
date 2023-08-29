##
#Aula entrypoint

#FROM ubuntu:latest
#ENTRYPOINT ["echo","Hello "]
#CMD ["world"]

#Aula publicando  imagem no DockerHub + nginx + entrypoint

FROM nginx:latest

COPY html/ /usr/share/nginx/html

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

