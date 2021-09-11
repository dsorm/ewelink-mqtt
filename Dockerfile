FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
USER root
WORKDIR /home/root/ewelink-mqtt
COPY . .
RUN apt-get update
RUN apt-get install npm git -y --no-install-recommends 
RUN npm install
CMD node ./index.js -c ./config.js
