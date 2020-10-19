FROM ubuntu:bionic

RUN apt-get update

RUN apt-get install -y wget gnupg

RUN wget https://nginx.org/keys/nginx_signing.key
RUN apt-key add nginx_signing.key

RUN echo deb https://nginx.org/packages/mainline/ubuntu/ bionic nginx >> /etc/apt/sources.list
RUN echo deb-src https://nginx.org/packages/mainline/ubuntu/ bionic nginx >> /etc/apt/sources.list

RUN apt-get install -y nginx

EXPOSE 80

COPY index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]