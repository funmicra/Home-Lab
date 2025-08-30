## ===============================
## Docker Cheatsheet
## ===============================

## 1. Docker Version & Info

## Check Docker version
```bash
docker --version
```

## Check Docker Compose version
```bash
docker-compose version
```

## Show detailed system-wide info (containers, images, storage, etc.)
```bash
docker info
```

## 2. Working with Images

## List all images on your system
```bash
docker images
docker image ls
```

## Pull an image from Docker Hub
```bash
docker pull ubuntu:latest
```

## Build a Docker image from a Dockerfile in the current directory
```bash
docker build -t my-image:latest .
```

## Remove a Docker image
```bash
docker rmi my-image:latest
```

## Tag an image (for pushing to a registry)
```bash
docker tag my-image:latest username/my-image:1.0
```

## Push an image to Docker Hub
```bash
docker push username/my-image:1.0
```

## 3. Working with Containers

## List running containers
```bash
docker ps
```

## List all containers (running + stopped)
```bash
docker ps -a
```

## Run a container (interactive + TTY)
```bash
docker run -it ubuntu:latest bash
```

## Run a container in detached mode
```bash
docker run -d --name my-container nginx:latest
```

## Run a container with port mapping (host:container)
```bash
docker run -d -p 8080:80 nginx:latest
```

## Run a container with a volume mounted (host:container)
```bash
docker run -d -v /host/path:/container/path my-image
```

## Run a container with environment variables
```bash
docker run -d -e ENV_VAR=value my-image
```

## Stop a running container
```bash
docker stop my-container
```

## Start a stopped container
```bash
docker start my-container
```

## Restart a container
```bash
docker restart my-container
```

## Remove a container
```bash
docker rm my-container
```

## View container logs
```bash
docker logs my-container
```

## Attach to a running container
```bash
docker attach my-container
```

## Execute a command inside a running container
```bash
docker exec -it my-container bash
```

## 4. Managing Volumes

## List all volumes
```bash
docker volume ls
```

## Create a volume
```bash
docker volume create my-volume
```

## Inspect a volume
```bash
docker volume inspect my-volume
```

## Remove a volume
```bash
docker volume rm my-volume
```

## 5. Networks

## List all Docker networks
```bash
docker network ls
```

## Inspect a network
```bash
docker network inspect bridge
```

## Create a new network
```bash
docker network create my-network
```

## Run a container connected to a specific network
```bash
docker run -d --name my-container --network my-network nginx
```

## 6. Cleaning Up

## Remove all stopped containers
```bash
docker container prune
```

## Remove all unused images
```bash
docker image prune -a
```

## Remove all unused volumes
```bash
docker volume prune
```

## Remove all unused networks
```bash
docker network prune
```

## Remove everything (containers, images, volumes, networks)
```bash
docker system prune -a --volumes
```

## 7. Docker-Compose

## Start services in detached mode
```bash
docker-compose up -d
```

## Start services in foreground mode (logs)
```bash
docker-compose up
```

## Stop services
```bash
docker-compose down
```

## Build/rebuild services
```bash
docker-compose build
```

## List running Compose services
```bash
docker-compose ps
```

## View logs for services
```bash
docker-compose logs -f
```

## Run a one-off command in a service
```bash
docker-compose run --rm service_name bash
```

## 8. Inspect & Debug

## Inspect container configuration
```bash
docker inspect my-container
```

## View resource usage (CPU, memory) for containers
```bash
docker stats
```

## Show container processes
```bash
docker top my-container
```

## Copy files from container to host
```bash
docker cp my-container:/path/in/container /host/path
```

## Copy files from host to container
```bash
docker cp /host/path my-container:/path/in/container
```

## 9. Tips & Best Practices

- Use .dockerignore to exclude files from build context
- Tag images clearly (versioning)
- Use named volumes for persistent data





