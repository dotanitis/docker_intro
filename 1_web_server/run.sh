#!/bin/bash

# Check if the parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 {build|run|stop}"
  exit 1
fi

# Perform the action based on the parameter
case "$1" in
  build)
    echo "Building Docker image..."
    docker build -t webserver .
    ;;
  run)
    echo "Running Docker container..."
    docker run -it --rm -d -p 8080:80 --name web webserver
    ;;
  stop)
    echo "Stopping Docker container..."
    docker stop web
    ;;
  *)
    echo "Invalid option!"
    echo "Usage: $0 {build|run|stop}"
    exit 1
    ;;
esac

# 


