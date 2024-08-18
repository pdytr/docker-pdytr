
# This Makefile is used to build, run, stop, and clean a Docker container for the pdytr-simple-image.

# IMAGE_NAME: The name of the Docker image.
# CONTAINER_NAME: The name of the Docker container.

# Comandos:
# - all: Default target, does nothing.
# - build: Builds the Docker image using the IMAGE_NAME.
# - run: Runs the Docker container with the specified CONTAINER_NAME and mounts the current directory as /app.
# - stop: Stops and removes the Docker container with the specified CONTAINER_NAME.
# - clean: Removes the Docker image with the specified IMAGE_NAME.
# - exec: Executes a command inside the running Docker container with the specified CONTAINER_NAME.

# Usage:
# - To build the Docker image, run: make build
# - To run the Docker container, run: make run
# - To stop the Docker container, run: make stop
# - To clean the Docker image, run: make clean
# - To execute a command inside the running Docker container, run: make exec
# Nombre de la imagen
IMAGE_NAME = pdytr-simple-image
CONTAINER_NAME = pdytr-simple-container

# Comandos
.PHONY: all build run stop clean

# Run the Docker contain1er
run:
	docker run --rm --name $(CONTAINER_NAME) -v $(PWD):/app $(IMAGE_NAME)

# Stop the Docker container
stop:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME) -f

# Clean the Docker images
clean:
	docker rmi $(IMAGE_NAME)

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Execute commands inside the Docker container
exec:
	docker exec -it $(CONTAINER_NAME) /bin/bash
