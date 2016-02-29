#!/bin/bash

echo -n "password : "
read -s password

docker-compose up -d

docker exec computer-database-jenkins docker login --username="vgalloy" --email="vgalloy@excilys.com" --password="$password"

echo "Jenkins tourne (par defaut) sur http://localhost:10080"
