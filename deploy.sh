#!/bin/bash

IMAGE=localhost:5100/react-demo:latest
CONTAINER=react-demo

echo "Pulling latest image..."
docker pull $IMAGE

echo "Stopping old container..."
docker stop $CONTAINER || true

echo "Removing old container..."
docker rm $CONTAINER || true

echo "Starting new container..."
docker run -d \
  --name $CONTAINER \
  -p 3000:80 \
  $IMAGE

echo "Deployment completed!"