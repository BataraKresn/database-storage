#!/bin/bash

# Define log directories
POSTGRES_LOG_DIR="./logs/postgresql"
MINIO_LOG_DIR="./logs/minio"

# Define retention period (in days)
RETENTION_DAYS=5

# Find and delete logs older than retention period
find "$POSTGRES_LOG_DIR" -type f -mtime +$RETENTION_DAYS -exec rm -f {} \;
find "$MINIO_LOG_DIR" -type f -mtime +$RETENTION_DAYS -exec rm -f {} \;

# Print success message
echo "Logs older than $RETENTION_DAYS days have been deleted."
