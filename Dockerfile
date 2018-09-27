FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install sudo
RUN apt-get install -y wget
RUN apt-get install -y gnupg
RUN apt-get install -y vim
RUN apt-get install -y curl

RUN apt-get install -y openjdk-8-jdk

RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
RUN sudo apt-get install apt-transport-https
RUN echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

RUN apt-get update
RUN apt-get install -y elasticsearch
RUN sudo apt-get install -y kibana
RUN sudo apt-get install -y metricbeat
RUN sudo apt-get install -y logstash 

EXPOSE 9200

MAINTAINER Name <sallah.kokaina@gmail.com> 
