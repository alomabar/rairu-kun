FROM debian
RUN apt update && apt upgrade -y && apt install -y \
    ssh wget curl python3

# Install sshx using the provided command
RUN curl -sSf https://sshx.io/get | sh
