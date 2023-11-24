#comando introdutório para rodar um pasta local do HOST dentro do Docker
#criadno a pasta
docker run -d --name nginx -p 8080:80 -v /Users/alladiobonesso/Documents/Projetos/html:/usr/share/nginx/html nginx

#comando mais explicito para roda a pasta
#quando a pasta já existe
docker run -d --name nginx -p 8080:80 --mount type=bind,source="$(pwd)"/html,target=/usr/share/nginx/html nginx


#diferença de uma para o outro
#cria a pasta
-v
#dará erro se a pasta não existir, pois o MOUNT não cria pastas
--mount

#sem mapear porta
docker run -d -v "$(pwd)"/html/x:/user/share/html nginx

#usando mount
docker run -d --mount type=bind, source="$(pwd)"/html/x, target=/user/share/html nginx