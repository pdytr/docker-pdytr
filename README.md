PDYTR
=====
Esta es una imagen docker que contiene todas las librerías y dependencias para poder realizar y ejecutar las prácticas de la materia.

[![dockeri.co](http://dockeri.co/image/gmaron/pdytr)](https://registry.hub.docker.com/u/gmaron/pdytr/)

Prerrequisitos
==============
En su máquina deben tener instalado Docker.

[Docker para MacOS](https://docs.docker.com/docker-for-mac/install/)

[Docker para Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

[Docker para Windows 10 Professional o mayor](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe)

Si posee un Windows inferior a Professional, por favor, ingrese en este [link](https://www.docker.com/products/docker-toolbox)

Cualquier duda o problema que tengan, por favor, envíenme un mail a [gastonmaron@gmail.com](mailto:gastonmaron@gmail.com)

Descargar imagen docker
=======================
Una vez instalado Docker, debe ejecutar el siguiente comando:
* ```docker pull gmaron/pdytr:gui```

Verificar que la imagen haya sido descargada correctamente mediante el comando
* ```docker images```

Y aparecerá la siguiente información

| REPOSITORY | TAG    | IMAGE ID   | CREATED        | SIZE
| -----------|--------|------------|----------------|-------|
| pdytr      | latest | *imagenid* | xx minutes ago | xxxMB |

Como correr la imagen 
=====================
Una vez que se haya corroborado que la imagen ha sido descargada satisfactoriamente, ejecutar el siguiente comando:

* ```docker run -itd -v {rutaAcarpetaPractica}:/pdytr/ -p 5901:5901 -p 6901:6901 --name pdytr gmaron/pdytr:gui```

**Aclaración**: después del -v (volumen) tiene que ingresar una ruta de su file system para que sea una carpeta compartida entre su SO y el contenedor de Docker. Dentro de *rutaAcarpetaPractica* ponga el código desarrollado para las prácticas. 

Como ingresar al container
==========================

Verificar que el container esté corriendo, con el siguiente comando:
* ```docker ps```

Luego para ejecutar el container, hay que ejecutar el siguiente comando:
* ```docker exec --user root -it pdytr bash```

A partir de allí se puede ingresar al container y ejecutar los comandos de la práctica.

Para entrar con GUI al file system
==================================

Se puede ingresar de dos maneras
=> Conectarse vía VNC viewer a la dirección localhost:5901, contraseña por defecto: vncpassword

=> Conectarse vía noVNC por un cliente HTML5  http://localhost:6901/?password=vncpassword
