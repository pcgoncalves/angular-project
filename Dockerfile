FROM ubuntu 

LABEL maintainer="Paulo Cesar Gonçalves <pcgoncalvess@gmail.com>"

RUN apt-get update && apt-get install -y \
curl \
nano
