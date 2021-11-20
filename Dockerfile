FROM ubuntu:20.04

RUN \
  apt-get update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

ENTRYPOINT [ "python3", "-m", "youtube_dl" ]
