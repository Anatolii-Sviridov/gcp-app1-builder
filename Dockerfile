FROM ubuntu:18.04
MAINTAINER Anatolii Sviridov sviridovtl@gmail.com

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install software-properties-common -y
RUN apt-get update
RUN apt-get install nodejs npm -y
RUN apt-get install npm
RUN apt-get update
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN add-apt-repository universe
RUN apt-get install apt-transport-https
RUN apt-get update
RUN apt-get install dotnet-sdk-2.1  -y
