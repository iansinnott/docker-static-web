# Version 0.0.1
FROM ubuntu:14.04
MAINTAINER Ian Sinnott "ian@iansinnott.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am a container' \
    >/usr/share/nginx/html/index.html
EXPOSE 80

# All commands will be run in nginx, but Do not daemonize nginx.
# ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
