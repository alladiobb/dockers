# --rm -> Quando sair o container morre
# -it ->
# -v -> compartilhar o volume

#criando container docker com node para usar ele como ambiente de dev

docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:latest bash

#faz toda instalação do node necessaria
apt-get update
npm init
npm install express --save
#edita o HTML -> index.js
#atentar arquivo na pasta /node no projeto

node index.js

#verifica se funcinou -> localhost:3000

#AGORA SAIMOS DA IMAGEM E RODAMOS CRIAMOS O DOCKERFILE: que está dentro da pasta node/Dockerfile

docker build -t nodex .
docker run -p 3000:3000 nodex
