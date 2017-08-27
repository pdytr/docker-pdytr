FROM java:6-jdk

MAINTAINER gastonmaron@gmail.com

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y build-essential

ADD loop.sh /loop.sh

RUN chmod 755 /loop.sh

ENTRYPOINT ["./loop.sh"]

