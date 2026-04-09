FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    make gcc curl npm luarocks git \
 && rm -rf /var/lib/apt/lists/*

# Neovim
RUN curl -L 'https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz' \
    | tar zx --directory /usr --strip-components=1

## luacheck
RUN luarocks install luacheck

# stylua wrapper (npm to avoid cargo deps)
RUN npm install --global @johnnymorganz/stylua-bin
