FROM rsolano/alpine-vnc:latest

RUN apk add --no-cache \
    gcc \
    g++ \
    libc-dev \
    make \
    cmake \
    git \
    maven \
    wget \
    unzip

# Descargar e instalar JADE
RUN mkdir -p /opt/jade \
    && cd /opt/jade \
    && wget --no-check-certificate https://jade.tilab.com/dl.php?file=JADE-bin-4.5.0.zip -O jade-bin-4.5.0.zip \
    && unzip jade-bin-4.5.0.zip \
    && rm jade-bin-4.5.0.zip

# Establecer las variables de entorno necesarias
ENV CLASSPATH="/opt/jade/jade/lib/jade.jar:/opt/jade/lib/commons-codec/commons-codec-1.3.jar"

WORKDIR /app
