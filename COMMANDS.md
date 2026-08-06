# Commands — Online Shopping Portal

## 1. Clone the repository

```bash
git clone https://github.com/riyan-ahmed/online_shopping_app.git
cd online_shopping_app
```

## 2. Check Docker

Install and start Docker Desktop before running the project.

```bash
docker --version
docker compose version
```

## 3. Build the Docker image

```bash
docker build -t online-shopping-app:v1 .
```

## 4. Tag and push the image

Replace `YOUR_DOCKERHUB_USERNAME` with your own Docker Hub username.

```bash
docker login
docker tag online-shopping-app:v1 YOUR_DOCKERHUB_USERNAME/online-shopping-app:v1
docker push YOUR_DOCKERHUB_USERNAME/online-shopping-app:v1
```

## 5. Run with Docker Compose

```bash
docker compose up -d --build
```

## 6. Check the application

```bash
docker compose ps
docker compose logs --tail=50
```

## 7. Scan the image with Docker Scout

```bash
docker scout cves online-shopping-app:v1
```

## 8. Stop the application

```bash
docker compose down
```
