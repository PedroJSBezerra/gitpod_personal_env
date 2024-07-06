FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
        curl \
        unzip \
        fish

CMD ["fish"]
