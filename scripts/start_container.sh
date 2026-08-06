#!/usr/bin/env bash

set -euo pipefail

CONTAINER_NAME="${CONTAINER_NAME:-online-shopping-app}"
DOCKER_IMAGE="${DOCKER_IMAGE:-}"
HOST_PORT="${HOST_PORT:-5173}"
CONTAINER_PORT="${CONTAINER_PORT:-5173}"

if [ -z "$DOCKER_IMAGE" ]; then
  echo "Error: DOCKER_IMAGE is not set."
  echo "Example:"
  echo "DOCKER_IMAGE=YOUR_DOCKERHUB_USERNAME/online-shopping-app:v1 ./scripts/start_container.sh"
  exit 1
fi

echo "Pulling Docker image: $DOCKER_IMAGE"
docker pull "$DOCKER_IMAGE"

echo "Removing any existing container named $CONTAINER_NAME"
docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true

echo "Starting container..."
docker run -d \
  --name "$CONTAINER_NAME" \
  --restart unless-stopped \
  -p "$HOST_PORT:$CONTAINER_PORT" \
  "$DOCKER_IMAGE"

echo "Container started successfully."
docker ps --filter "name=$CONTAINER_NAME"
