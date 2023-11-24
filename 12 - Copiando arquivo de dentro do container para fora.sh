#comando para copiar arquivos gerados de dentro do container para o host
docker cp [ID_DO_CONTAINER]:[CAMINHO_NO_CONTÊINER] [CAMINHO_NO_HOST]
docker cp 86167667fd75:/app/output.parquet .

#resultado esperado
Successfully copied 160kB to /home/alladio/github/dataengineer-transformations-python/resources/citibike/.

#OU OU OU
# -v -> compartilha o volume: [ diretório do HOST]:[diretório do container]
docker run -v $(pwd)/:/usr/src/app

