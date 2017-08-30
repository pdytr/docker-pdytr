FROM consol/ubuntu-xfce-vnc:latest

MAINTAINER gastonmaron@gmail.com

USER 0

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y build-essential \
    && apt-get install -y nano \
    && apt-get install -y net-tools \
    && apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-7-jdk

ENTRYPOINT ["./dockerstartup/vnc_startup.sh"]

