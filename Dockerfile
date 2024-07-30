# Use a imagem base Alpine mais recente
FROM alpine:latest

# Atualize os repositórios e instale as dependências do Linux
RUN apk update && apk add --no-cache \
  bash \
  tree \
  fish \
  zip \
  unzip \
  git \
  python3 \
  py3-pip \
  nodejs \
  npm \
  openjdk21-jdk

# Verifique as versões instaladas
RUN bash -c "node -v && npm -v && python3 --version && java -version"

# Defina o diretório de trabalho
WORKDIR /workdir

# Comando para executar seu aplicativo (ajuste conforme necessário)
CMD ["fish"]
