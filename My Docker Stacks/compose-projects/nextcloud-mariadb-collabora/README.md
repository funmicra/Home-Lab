
# Setting Up Nextcloud with MariaDB and Collabora Online

This guide will walk you through the process of setting up Nextcloud, MariaDB, and Collabora Online using Docker. 

## Prerequisites

Before you begin, ensure you have the following installed on your system:
- Docker
- Docker Compose

## Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/nextcloud-docker.git
cd nextcloud-docker
```

## Step 2: Create the .env File

Create a .env file in the same directory as your docker-compose.yml file. Add your credentials:

```plaintext
# Nextcloud Environment Variables
PUID=1000
PGID=1000
TZ=Europe/Athens

# MariaDB Environment Variables
MYSQL_ROOT_PASSWORD=ROOT_ACCESS_PASSWORD
MYSQL_DATABASE=USER_DB_NAME
MYSQL_USER=MYSQL_USER
MYSQL_PASSWORD=DATABASE_PASSWORD

# Collabora Environment Variables
COLLABORA_PASSWORD=YOUR_COLLABORA_PASSWORD
COLLABORA_USERNAME=YOUR_COLLABORA_USERNAME
COLLABORA_DOMAIN=YOUR_COLLABORA_DOMAIN
```
Replace the placeholder values with your actual credentials.

## Step 3: Create Volumes and Network

Create the necessary volumes and network by running the following commands:

```bash
docker volume create nextcloud_config
docker volume create nextcloud_data
docker volume create nextcloud_db_config
docker volume create nextcloud_db_data

docker network create Apps-Network
```

## Step 4: Start the Services

```bash
docker-compose up -d
```

This command will pull the necessary images, create the containers, and start the services in the background.

## Step 5: Access Nextcloud

Once the services are up and running, you can access Nextcloud via your web browser at https://your-domain.com.

## Step 6: Access Collabora Online

Collabora Online will be accessible at https://your-domain.com:9980.

Additional Notes

Make sure your domain and DNS settings are configured correctly for proper access.
It's recommended to set up SSL certificates for secure access. You can use Let's Encrypt or other SSL providers.
