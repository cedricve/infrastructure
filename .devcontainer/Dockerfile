FROM mcr.microsoft.com/devcontainers/go:1.24-bookworm

# Install node environment 20.x
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Install nektos/act
RUN cd /tmp && git clone https://github.com/nektos/act && \
    cd act && \
    make install && \
    sudo cp ./dist/local/act /usr/local/bin/act