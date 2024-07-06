FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  curl \
  wget \
  zip \
  unzip \
  python3 \
  nodejs

WORKDIR /workspace

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
