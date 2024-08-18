# SIMPLE Folder

This directory contains all the necessary files for distributed programming and real-time systems practice assignments. Here, you'll find the tools and configurations essential for facilitating the development and execution of your projects.

## Dockerfile

The `Dockerfile` in this directory is used to build the Docker image that includes the environment required for the assignments. Specifically, this Dockerfile:

- Uses a lightweight base image.
- Installs Java 22 and the Jade libraries.
- Configures all the dependencies and necessary settings to run relevant components of the project.

This Dockerfile is designed to simplify work on distributed programming and real-time systems assignments.

## Makefile

The `Makefile` in this directory provides a set of useful commands for managing the development environment. Below are the actions you can perform using the Makefile:

- `make build`: Builds the Docker image for the SIMPLE environment.
- `make run`: Runs the Docker container with the configured environment.
- `make stop`: Stops the running Docker container.
- `make clean`: Removes the created Docker image.

To execute any of these commands, navigate to the project's root directory and run `make <command>`.

### Additional Notes

- **Customization:** You may need to modify the Makefile to suit the specific requirements of your project or working environment.
- **Compatibility:** Ensure that your system meets the requirements to run Docker and the tools included in this setup.
