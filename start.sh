#!/bin/bash


docker-compose up -d

echo -n "password : "
read -s password

docker exec computer-database-jenkins docker login --username="vgalloy" --email="vgalloy@excilys.com" --password="$password"

