# FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# use this Dockerfile to install additional tools you might need, e.g.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>


# Dockerfile
FROM ubuntu:22.04

# Install basic development tools
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    libssl-dev \
    && apt-get clean

# Install CAF
RUN git clone --recursive https://github.com/actor-framework/actor-framework.git /opt/actor-framework && \
    cd /opt/actor-framework && \
    mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build . --target install && \
    rm -rf /opt/actor-framework

# Set default shell to bash
SHELL ["/bin/bash", "-c"]
