# GUI Docker Image
## Dockerfile

The `Dockerfile` in this directory contains the necessary instructions to build the Docker image for the graphical user interface (GUI) of the PDYTR application. It includes the dependencies and configurations required to run the GUI application.

To build the image, navigate to this directory in your terminal and run the following command:

```
docker build -t pdytr-gui .
```

## Makefile

The `Makefile` in this directory provides a convenient way to build and run the Docker image. It includes the necessary commands to build the image and run a container based on it.

To build the image using the Makefile, navigate to this directory in your terminal and run the following command:

```
make build
```

To run a container based on the image, use the following command:

```
make run
```

Please note that you may need to adjust the port number in the Makefile if port 8080 is already in use on your system.

For more information on Docker and how to use it, refer to the [official Docker documentation](https://docs.docker.com/).

For more information on Make and how to use it, refer to the [official Make documentation](https://www.gnu.org/software/make/).

