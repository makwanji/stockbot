#!/bin/bash

# this script will assign tag to docker image
docker tag stockbot-db:latest makwanji/stockbot-db:latest
docker tag stockbot-backend:latest makwanji/stockbot-backend:latest
docker tag stockbot-frontend:latest makwanji/stockbot-frontend:latest


# this script will push images to dockerhub
docker push makwanji/stockbot-db:latest
docker push makwanji/stockbot-backend:latest
docker push makwanji/stockbot-frontend:latest
