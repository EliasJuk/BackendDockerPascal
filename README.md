# BackendDockerPascal

``` bash
#Build da imagem Docker:
$ docker build -t fpc_container .

#Executar o conteiner:
$ docker run --rm fpc_container
$ docker run fpc_container

#Executar em segundo plano
$ docker compose up -d

#Encerra a execução
$ docker compose down
```