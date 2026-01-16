#!/bin/bash

docker exec postgres-db pg_dump -U postgres maindb > maindb.sql
docker compose down -v
#docker pull boldo42/grocery-list-vite:latest
docker rmi boldo42/grocery-list-vite
docker compose up -d

rm -rf /dist
