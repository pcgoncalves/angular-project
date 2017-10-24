FROM node:6.11.2-alpine 

LABEL maintainer="Paulo Cesar Gonçalves <pcgoncalvess@gmail.com>"

RUN apk update \ 
	&& apk add --update alpine-sdk \ 
	&& npm install -g @angular/cli@latest \ 
	&& npm install -g typescript@next \ 
	&& npm install http-server -g \
	&& apk del alpine-sdk \ 
	&& rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \ 
	&& npm cache clear \

VOLUME /home

EXPOSE 4200

