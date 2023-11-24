# --rm -> Quando sair o container morre
# -it ->
# -v -> compartilhar o volume

#criando container docker com node para usar ele como ambiente de dev

docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:latest bash7

#faz toda instalação do node necessaria
apt-get update
npm install express --save
npm init
#edita o HTML -> html.js
#atentar arquivo na pasta /node no projeto
