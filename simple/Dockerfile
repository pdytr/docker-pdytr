FROM openjdk:22-jdk-slim

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    protobuf-compiler \
    gcc \
    g++ \
    make \
    cmake \
    git \
    maven \
    wget \
    libssl-dev \ 
    unzip && \
    rm -rf /var/lib/apt/lists/*

# Descargar e instalar JADE
RUN mkdir -p /opt/jade \
    && cd /opt/jade \
    && wget --no-check-certificate https://jade.tilab.com/dl.php?file=JADE-bin-4.5.0.zip -O jade-bin-4.5.0.zip \
    && unzip jade-bin-4.5.0.zip \
    && rm jade-bin-4.5.0.zip

# Establecer las variables de entorno necesarias
ENV CLASSPATH="/opt/jade/lib/jade.jar:/opt/jade/lib/commons-codec/commons-codec-1.3.jar"

WORKDIR /app

# Comando por defecto para mantener el contenedor en ejecución
CMD ["tail", "-f", "/dev/null"]