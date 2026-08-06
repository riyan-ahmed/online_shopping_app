#!/usr/bin/env bash

set -euo pipefail

CONTAINER_NAME="${CONTAINER_NAME:-online-shopping-app}"

if docker ps -a \
  --format '{{.Names}}' \
  | grep -Fxq "$CONTAINER_NAME"; then

  echo "Stopping and removing container: $CONTAINER_NAME"
  docker rm -f "$CONTAINER_NAME"
  echo "Container removed successfully."

else
  echo "No container named $CONTAINER_NAME was found."
fi
