FROM ubuntu:22.04

COPY ./sources.list /etc/apt/sources.list
RUN apt update
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y texlive-full
RUN apt install -y git

# nvim installation
COPY ./nvim-linux64.tar.gz /tmp
RUN tar -C /opt -xzf /tmp/nvim-linux64.tar.gz && rm /tmp/*
COPY ./.bashrc /root/

RUN git config --global http.proxy http://host.docker.internal:7890
RUN mkdir -p /root/.local/share/nvim/site/pack/packer/start/
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim /root/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN mkdir -p /root/.config/nvim/lua

COPY ./nvim_config/plugins.lua /root/.config/nvim/lua/
COPY ./nvim_config/init.lua /root/.config/nvim/
# this is used for syncing of packer packages
RUN /opt/nvim-linux64/bin/nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
RUN rm /root/.config/nvim/lua/plugins.lua && ln -s /nvim_config/plugins.lua /root/.config/nvim/lua/plugins.lua
RUN rm /root/.config/nvim/init.lua && ln -s /nvim_config/init.lua /root/.config/nvim/init.lua

RUN apt install -y universal-ctags