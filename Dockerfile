# Version 0.0.1

# Boilerplate template. For reasoning behind the 'REFRESHED_AT' environment
# variable see the docker book, page 109 of the PDF.
FROM ubuntu:14.04
MAINTAINER Ian Sinnott "ian@iansinnott.com"
ENV REFRESHED_AT "9/25/14"
RUN apt-get -qq update

RUN apt-get install -y nginx
RUN echo 'Hi, I am a container' \
    >/usr/share/nginx/html/index.html
EXPOSE 80

# All commands will be run in nginx, but Do not daemonize nginx.
# ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
