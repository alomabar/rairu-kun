FROM debian
ARG SSHX_TOKEN
ARG REGION=ap
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && apt install -y \
    ssh wget curl python3

# Install sshx using the provided command
RUN curl -sSf https://sshx.io/get | sh -s run
