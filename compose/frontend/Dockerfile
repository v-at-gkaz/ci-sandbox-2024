FROM ubuntu:24.04
MAINTAINER Vladimir<v@gkaz.ru>
RUN apt-get update
RUN apt-get install -yq nginx
COPY client /var/www/client
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /srv
CMD nginx