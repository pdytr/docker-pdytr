# Nombre de la imagen
IMAGE_NAME = pdytr-container

# Comandos
.PHONY: all build run stop clean

# Build the Docker image
build: clean
    docker build -t $(IMAGE_NAME) .

# Run the Docker container
run:
    docker run -d --name $(IMAGE_NAME) -v $(PWD)/app:/app $(IMAGE_NAME)

# Stop the Docker container
stop:
    docker stop $(IMAGE_NAME) && docker rm $(IMAGE_NAME)

# Clean the Docker images
clean:
    docker rmi $(IMAGE_NAME)
