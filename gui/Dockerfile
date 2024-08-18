# Usar la imagen base openjdk:22-jdk-slim
FROM openjdk:22-jdk-slim

# Instalar las dependencias necesarias
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
    unzip \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    dbus-x11 \
    x11-xserver-utils \
    xterm \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Descargar e instalar JADE
RUN mkdir -p /opt/jade \
    && cd /opt/jade \
    && wget --no-check-certificate https://jade.tilab.com/dl.php?file=JADE-bin-4.5.0.zip -O jade-bin-4.5.0.zip \
    && unzip jade-bin-4.5.0.zip \
    && rm jade-bin-4.5.0.zip

# Establecer las variables de entorno necesarias para JADE
ENV CLASSPATH="/opt/jade/lib/jade.jar:/opt/jade/lib/commons-codec/commons-codec-1.3.jar"

# Crear un usuario para el servidor VNC
RUN useradd -m -s /bin/bash vncuser \
    && echo 'vncuser:vncpassword' | chpasswd \
    && mkdir -p /home/vncuser/.vnc \
    && echo "xfce4-session" > /home/vncuser/.vnc/xstartup \
    && chown -R vncuser:vncuser /home/vncuser/.vnc \
    && chmod +x /home/vncuser/.vnc/xstartup  # Asegurar permisos de ejecución

# Configurar la contraseña de VNC
RUN echo "vncpassword" | vncpasswd -f > /home/vncuser/.vnc/passwd \
    && chown vncuser:vncuser /home/vncuser/.vnc/passwd \
    && chmod 600 /home/vncuser/.vnc/passwd

# Exponer el puerto del VNC
EXPOSE 5901

# Cambiar al usuario vncuser
USER vncuser

# Establecer el directorio de trabajo
WORKDIR /app

# Mantener el contenedor en ejecución
CMD ["vncserver", "-fg", "-geometry", "1280x800", "-localhost", "no", "-xstartup", "/home/vncuser/.vnc/xstartup", ":1"]
