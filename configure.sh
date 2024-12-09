#!/bin/bash

echo "Setup starting ..."

# Update package list and install dependencies
sudo apt-get update && sudo apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    libssl-dev \
    && sudo apt-get clean

# Clone and install CAF
git clone --recursive https://github.com/actor-framework/actor-framework.git /opt/actor-framework
cd /opt/actor-framework
mkdir build
cd build
cmake ..
cmake --build . --target install
cd /workspace
rm -rf /opt/actor-framework

echo "Setup complete!"
