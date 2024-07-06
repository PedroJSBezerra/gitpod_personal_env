FROM gitpod/workspace-full

# Instalação do Git
RUN sudo apt update && sudo apt install -y git

# Aqui você pode adicionar outros comandos para configurar seu ambiente, como instalar dependências adicionais.

FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
        curl \
        unzip \
        fish

CMD ["fish"]
