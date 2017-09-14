FROM java:6-jdk
 
MAINTAINER Gaston Maron "gastonmaron@gmail.com"
  
RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y build-essential \
    && apt-get install -y nano \
    && apt-get install -y net-tools \
    && apt-get install -y rpcbind   
ADD loop.sh /loop.sh

RUN chmod 755 /loop.sh

ENTRYPOINT ["./loop.sh"]