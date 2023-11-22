#comando para copiar arquivos gerados de dentro do container para o host
docker cp [ID_DO_CONTAINER]:[CAMINHO_NO_CONTÊINER] [CAMINHO_NO_HOST]

docker cp 86167667fd75:/app/output.parquet .
Successfully copied 160kB to /home/alladio/github/dataengineer-transformations-python/resources/citibike/.