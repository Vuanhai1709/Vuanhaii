FROM debian:12

RUN apt update && apt install -y \
    openssh-server \
    curl \
    wget \
    unzip \
    sudo \
    python3

RUN curl -sSf https://sshx.io/get | sh -s run