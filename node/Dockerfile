FROM node:15-alpine

# Install global NPM libraries
RUN npm install -g laravel-echo-server npm-check-updates

# Manipulation for the cache
RUN mkdir -m 777 /.npm && mkdir -m 777 /.yarn && \
    touch /.yarnrc && chmod 777 /.yarnrc

# Installation of ZSH
RUN apk update && apk add zsh curl git && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    git clone https://github.com/zsh-users/zsh-autosuggestions /root/.zsh/zsh-autosuggestions
COPY .zshrc /root/.zshrc

WORKDIR /root
