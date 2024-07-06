# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2022-05-08-14-31-53

# Install custom tools, runtime, etc.
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
