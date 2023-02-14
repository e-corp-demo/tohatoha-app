FROM node:16.18.1-buster
RUN apt-get -y update && apt-get install git=1:2.20.1-2+deb10u7 && apt-get install git-man=1:2.20.1-2+deb10u7
RUN apt-get install -y curl=7.64.0-4+deb10u4 && apt-get install libcurl3-gnutls=7.64.0-4+deb10u4 && apt-get install libcurl4-openssl-dev=7.64.0-4+deb10u4