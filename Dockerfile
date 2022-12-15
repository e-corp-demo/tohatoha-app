FROM node:16.16.0

RUN apt-get -y update && apt-get install -y sqlite3=3.27.2-3+deb10u2