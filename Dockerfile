#FROM image name
#COPY instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.
#WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.

FROM maven:latest
COPY . /app
WORKDIR /app
EXPOSE 8080
