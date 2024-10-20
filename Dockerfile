# Use uma imagem base do Ubuntu
FROM ubuntu:20.04

# Evitar interatividade durante a instalação do timezone
ENV DEBIAN_FRONTEND=noninteractive

# Atualizar o sistema e instalar dependências necessárias
RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    libncurses5-dev \
    libgdbm-dev \
    curl \
    libffi-dev \
    tzdata \
    fpc \
    && apt-get clean

# Definir timezone sem interação
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

# Criação de diretório de trabalho
WORKDIR /usr/src/app

# Copiar os arquivos do projeto da pasta src para o contêiner
COPY src/hello.pas ./

# Compilar o programa Pascal
RUN fpc -ohello hello.pas

# Definir o comando padrão que será executado quando o contêiner iniciar
CMD ["./hello"]
