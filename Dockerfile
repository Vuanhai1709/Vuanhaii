FROM debian:12

# -----------------------------
# Install required packages
# -----------------------------
RUN apt update && apt install -y \
    openssh-server \
    curl \
    wget \
    unzip \
    sudo \
    python3 \
    && mkdir /var/run/sshd

# -----------------------------
# Create user 'user' with sudo
# -----------------------------
RUN useradd -m trthaodev && echo "trthaodev:thaodev@" | chpasswd && adduser trthaodev sudo

