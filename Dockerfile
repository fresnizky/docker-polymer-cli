###################################################################################
# Dockerfile to build a Polymer Dev Environment container images with Polymer-CLI
# Based on node:4-slim
#
# To build, do:
#   $ docker build -t jefferyb/polymer-cli .
#
###################################################################################

# Set the base image to node:4-slim
FROM node:4-slim

MAINTAINER Jeffery Bagirimvano <jeffery.rukundo@gmail.com>

ENV POLYMER_CLI_HOME /home/polymer
ARG user=polymer
ARG group=polymer

RUN useradd -d "$POLYMER_CLI_HOME" -U -m -s /bin/bash ${user}

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    apt-get clean && \
    npm install -g gulp bower polymer-cli@next

USER ${user}

EXPOSE 8080

RUN mkdir -p /home/${user}/app

VOLUME /home/${user}/app

WORKDIR /home/${user}/app

CMD bash
