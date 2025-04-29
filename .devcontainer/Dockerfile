FROM mcr.microsoft.com/devcontainers/go:1.24-bookworm

# Install node environment
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install nektos/act
RUN cd /tmp && git clone https://github.com/nektos/act && \
    cd act && \
    make install && \
    sudo cp ./dist/local/act /usr/local/bin/act