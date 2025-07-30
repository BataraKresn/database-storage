#!/bin/bash

# Create necessary directories
mkdir -p logs/postgresql logs/minio
mkdir -p postgres minio

# Set permissions for logs
chmod -R 755 logs

# Start Docker Compose
if [ -f docker-compose.yml ]; then
  docker compose up -d
else
  echo "docker compose.yml not found!"
  exit 1
fi

# Print success message
echo "Setup complete. Logs are stored in the logs/ directory."
