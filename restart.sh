#!/bin/bash
set -e

BACKUP_FILE="maindb_$(date +%F_%H-%M-%S).sql"

echo "backing up db"
docker exec postgres-db pg_dump -U postgres maindb > "$BACKUP_FILE"

# keep only last 3 backups
ls -t maindb_*.sql | tail -n +4 | xargs -r rm

echo "removing container and updating image"
docker stop grocery-app || true
docker rm grocery-app || true
docker rmi boldo42/grocery-list-vite || true

echo "spinning the container up again"
docker compose up -d
