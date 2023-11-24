# --rm -> Quando sair o container morre
# -it ->
# -v -> compartilhar o volume

#criando container docker com node para usar ele como ambiente de dev

docker --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:latest bash