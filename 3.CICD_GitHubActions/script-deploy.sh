#!/bin/bash
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
# docker-compose -f /home/userdeploy/2.Container-Docker/docker-compose.yaml pull
# docker-compose -f /home/userdeploy/2.Container-Docker/docker-compose.yaml up -d
docker-compose --version
