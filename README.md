# Database Storage Setup

This project contains a Docker Compose setup for PostgreSQL and MinIO with production-ready configurations.

## Features
- PostgreSQL with optimized settings for high concurrency.
- MinIO for object storage.
- Environment variables managed via `.env` file.
- Monitoring and logging enabled.
- Timezone set to `Asia/Jakarta`.

## Prerequisites
- Docker and Docker Compose installed.

## Installation
Run the `install.sh` script to set up the environment:
```bash
./install.sh
```

## Logs
Logs are stored in the `logs/` directory:
- PostgreSQL logs: `logs/postgresql/`
- MinIO logs: `logs/minio/`

### Log Rotation
- Logs are automatically rotated every 14 days.
- Use the `cleanup_logs.sh` script to delete logs older than 5 days:
  ```bash
  ./cleanup_logs.sh
  ```

## Monitoring
- PostgreSQL: Use `pg_stat_statements` for query monitoring.
- MinIO: Access the MinIO Console at `http://<IP>:9001`.
