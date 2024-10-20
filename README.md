# BackendDockerPascal
---

## Dockerfile

``` bash
#Build e ReBuild da imagem Docker:
$ docker build -t fpc_container .

#Executar o conteiner:
$ docker run --rm fpc_container

#Encerra a execução
$ docker compose down
```

---

## docker-compose.yml

``` bash
#Executar em segundo plano:
$ docker compose up -d
```

``` bash
#Permite acessar o container via bash (CTRL+D = close)
$ docker run -it fpc_container /bin/bash
```

---

## Server

``` bash
$ docker run -p 8081:8081 fpc_container
```