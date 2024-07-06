# Use Alpine Linux as base image
FROM alpine:latest

# Instalação de pacotes necessários
RUN apk update && \
    apk add --no-cache \
        build-base \  # Equivalente ao build-essential no Alpine
        git \
        curl \
        wget \
        zip \
        unzip \
        python3 \
        nodejs \
        fish

# Definir o diretório de trabalho
WORKDIR /workspace

# Copiar e instalar requisitos Python
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copiar o restante do código-fonte
COPY . .
