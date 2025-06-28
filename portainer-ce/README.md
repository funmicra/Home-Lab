# Portainer CE Docker Compose Setup

This repository contains a Docker Compose configuration for setting up Portainer CE, a lightweight management UI for Docker environments.

## Prerequisites

Before you start, make sure you have the following installed on your system:

- Docker
- Docker Compose

## Getting Started

1. Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/your-repo.git
```

2. Navigate to the directory containing the Docker Compose file:
```bash
cd ~/stacks/portainer-ce
```

## Starting Portainer CE

To start Portainer CE, run the following command in the terminal:

```bash
docker-compose up -d
```

This will pull the necessary Docker images (if not already present) and start the Portainer CE container.

## Accessing Portainer CE

Once the container is running, you can access the Portainer CE UI by opening a web browser and navigating to:

    http://localhost:8000

You can also access it via HTTPS using:

    https://localhost:9443

## Configuring Portainer CE

1. When you access Portainer CE for the first time, you'll be prompted to set an admin password. Choose a strong password and confirm it.

2. Next, select the Docker environment you want to manage. If you're running Docker on your local machine, choose the "Docker" option.

3. You should now have access to the Portainer CE dashboard where you can start managing your Docker containers, images, volumes, and more.

## Stopping Portainer CE

To stop Portainer CE, run the following command:

```bash
docker-compose down
```

This will stop and remove the Portainer CE container.

## Notes

. The configuration in the provided docker-compose.yml file maps the ports 8000 and 9443 on your host to the respective ports in the Portainer CE container. You can change these port mappings in the ports section of the file if needed.

. The Docker socket is mounted to allow Portainer CE to interact with your Docker daemon. Ensure that this is secure and used in a trusted environment.

. The provided portainer_data volume is used to persist Portainer CE data. This means your settings and configurations will be preserved even if you recreate the container.

. If you want to use an external network for the Portainer CE container, ensure that the Apps-Network network exists in your Docker environment.
