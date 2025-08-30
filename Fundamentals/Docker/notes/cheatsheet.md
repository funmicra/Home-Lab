## ===============================
## Docker Cheatsheet
## ===============================

## -------------------------------
## 1. Docker Version & Info
## -------------------------------

## Check Docker version
```bash
docker --version
```

## Check Docker Compose version
```bash
docker compose version
```

## Show detailed system-wide info (containers, images, storage, etc.)
```bash
docker info
```

# -------------------------------
# 2. Working with Images
# -------------------------------

# List all images on your system
docker images
docker image ls

# Pull an image from Docker Hub
docker pull ubuntu:latest

# Build a Docker image from a Dockerfile in the current directory
docker build -t my-image:latest .

# Remove a Docker image
docker rmi my-image:latest

# Tag an image (for pushing to a registry)
docker tag my-image:latest username/my-image:1.0

# Push an image to Docker Hub
docker push username/my-image:1.0

# -------------------------------
# 3. Working with Containers
# -------------------------------

# List running containers
docker ps

# List all containers (running + stopped)
docker ps -a

# Run a container (interactive + TTY)
docker run -it ubuntu:latest bash

# Run a container in detached mode
docker run -d --name my-container nginx:latest

# Run a container with port mapping (host:container)
docker run -d -p 8080:80 nginx:latest

# Run a container with a volume mounted (host:container)
docker run -d -v /host/path:/container/path my-image

# Run a container with environment variables
docker run -d -e ENV_VAR=value my-image

# Stop a running container
docker stop my-container

# Start a stopped container
docker start my-container

# Restart a container
docker restart my-container

# Remove a container
docker rm my-container

# View container logs
docker logs my-container

# Attach to a running container
docker attach my-container

# Execute a command inside a running container
docker exec -it my-container bash

# -------------------------------
# 4. Managing Volumes
# -------------------------------

# List all volumes
docker volume ls

# Create a volume
docker volume create my-volume

# Inspect a volume
docker volume inspect my-volume

# Remove a volume
docker volume rm my-volume

# -------------------------------
# 5. Networks
# -------------------------------

# List all Docker networks
docker network ls

# Inspect a network
docker network inspect bridge

# Create a new network
docker network create my-network

# Run a container connected to a specific network
docker run -d --name my-container --network my-network nginx

# -------------------------------
# 6. Cleaning Up
# -------------------------------

# Remove all stopped containers
docker container prune

# Remove all unused images
docker image prune -a

# Remove all unused volumes
docker volume prune

# Remove all unused networks
docker network prune

# Remove everything (containers, images, volumes, networks)
docker system prune -a --volumes

# -------------------------------
# 7. Docker Compose
# -------------------------------

# Start services in detached mode
docker compose up -d

# Start services in foreground mode (logs)
docker compose up

# Stop services
docker compose down

# Build/rebuild services
docker compose build

# List running Compose services
docker compose ps

# View logs for services
docker compose logs -f

# Run a one-off command in a service
docker compose run --rm service_name bash

# -------------------------------
# 8. Inspect & Debug
# -------------------------------

# Inspect container configuration
docker inspect my-container

# View resource usage (CPU, memory) for containers
docker stats

# Show container processes
docker top my-container

# Copy files from container to host
docker cp my-container:/path/in/container /host/path

# Copy files from host to container
docker cp /host/path my-container:/path/in/container

# -------------------------------
# 9. Tips & Best Practices
# -------------------------------

# Use .dockerignore to exclude files from build context
# Tag images clearly (versioning)
# Use named volumes for persistent data


