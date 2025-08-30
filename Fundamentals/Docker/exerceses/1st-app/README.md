## 1️⃣ Build the Docker images

```bash
# Build WordPress image from Dockerfile.wp
docker build -t my-wordpress -f Dockerfile.wp .

# Build MySQL image from Dockerfile.db
docker build -t my-mysql -f Dockerfile.db .
```

These commands create local images named my-wordpress and my-mysql.

## 2️⃣ Verify the images were built

```bash
docker images
```

You should see my-wordpress and my-mysql in the list.

## 3️⃣ Start the full stack with Docker-Compose

```bash
# Start containers in detached mode
docker-compose up -d
```

Docker Compose will read the .env file automatically and pass secrets to the containers.

## 4️⃣ Check the running containers

```bash
docker ps
```

You should see:

- wordpress_app running on localhost:8080 (or the port you defined in .env)

- wordpress_db (MySQL) running in the background

## 5️⃣ Check logs (optional)

```bash
# WordPress logs
docker-compose logs -f wordpress

# MySQL logs
docker-compose logs -f db
```

## 6️⃣ Stop and remove the stack

```bash
docker-compose down
```

This stops and removes the containers but keeps volumes unless you add -v to remove them as well.
