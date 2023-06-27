#! /bin/bash

# When your app is installed this script will be called after command 'docker compose up' done.
# Write your logic here.

echo "SAFELINE_DIR=$(pwd)" >> .env
echo "IMAGE_TAG=latest" >> .env
echo "MGT_PORT=9443" >> .env
echo "POSTGRES_PASSWORD=$(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 32)" >> .env
echo "REDIS_PASSWORD=$(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 32)" >> .env
echo "SUBNET_PREFIX=169.254.0" >> .env
