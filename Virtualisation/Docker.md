# Introduction
Docker is a service with Operating System (OS)-wide virtualisation by utilizing a system of containers.

# Basics
## Using docker-compose.yaml with Dockerfiles
By using Dockerfile separately for each container the main `docker-compose.yaml` can be kept to a small minimum and provide a bird-eye view of the Docker stack.

Directory structure:
Docker\_stack:
    |_docker-compose.yaml
    |
    |\_main_container
    |       |
    |       |__Dockerfile
    |
    \__secondary_container
            |
            |__Dockerfile


`docker-compose.yaml`
```
services:
    main_container:
        build:
            context: ./main_container_dir
        ...
    secondary_container:
            context: ./secondary_container_dir
            
```
Upon execution of the stack `docker-compose up -d` two containers will be built:
1. `main_container` will be built by using `Dockerfile` from `main_container_dir` directory
2. `secondary_container` will be built by using `Dockerfile` from `secondary_container_dir` directory

# Secrets

`docker-compose.yaml`
```
services:
    app:
        ...
        secrets: secret_file

secrets:
    secret_file: /path/secret
```
When executed the that secret will be linked to the `app` container at the `/run/secrets/secret_file`.
