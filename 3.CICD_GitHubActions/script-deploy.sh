#!/bin/bash
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose -f /home/userdeploy/apps/docker-compose.yaml pull
docker-compose -f /home/userdeploy/apps/docker-compose.yaml up -d
