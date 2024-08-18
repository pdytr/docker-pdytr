# Nombre de la imagen
IMAGE_NAME = alpine-vnc-image
CONTAINER_NAME = alpine-vnc-container
VNC_PORT = 5901

# Construir la imagen de Docker
build: clean
	docker build -t $(IMAGE_NAME) .

# Ejecutar el contenedor de Docker
run:
	docker run -it --rm --name $(CONTAINER_NAME) -p $(VNC_PORT):5901 -v ${PWD}:/app $(IMAGE_NAME)

# Detener y eliminar el contenedor
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# Eliminar la imagen de Docker
clean:
	docker rmi -f $(IMAGE_NAME)

# Ejecutar un comando en el contenedor de Docker
exec:
	docker exec -it $(CONTAINER_NAME) /bin/bash

.PHONY: build run stop clean exec
