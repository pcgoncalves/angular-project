FROM ubuntu 

LABEL maintainer="Paulo Cesar Gonçalves <pcgoncalvess@gmail.com>"

RUN apt-get update && apt-get install -y \
curl \
nano

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y \
nodejs \
build-essential

RUN npm install -g typescript@latest
RUN npm install -g @angular/cli@latest
RUN npm install -g http-server

VOLUME /home

RUN mkdir -p /angular-project/
WORKDIR /angular-project/ 

RUN ng new projeto

WORKDIR /angular-project/projeto
RUN npm install materialize-css --save

RUN apt-get clean && apt-get autoclean && apt-get autoremove \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 4200
