FROM node:latest

LABEL maintener farpat <p.farrugia@outlook.fr>

# Install global NPM libraries
RUN npm install -g laravel-echo-server npm-check-updates

RUN mkdir -m 777 /.npm && \ 
    mkdir -m 777 /.yarn && \
    touch /.yarnrc && \ 
    chmod 777 /.yarnrc
