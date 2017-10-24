FROM ubuntu 

LABEL maintainer="Paulo Cesar Gonçalves <pcgoncalvess@gmail.com>"

RUN apt-get update && apt-get install -y \
curl \
nano

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y \
nodejs \
build-essential
