#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 176031035982.dkr.ecr.us-east-2.amazonaws.com
docker build -t xp-afelipe-prod-extract-rais .
docker tag xp-afelipe-prod-extract-rais:latest 176031035982.dkr.ecr.us-east-2.amazonaws.com/xp-afelipe-prod-extract-rais:latest
docker push 176031035982.dkr.ecr.us-east-2.amazonaws.com/xp-afelipe-prod-extract-rais:latest
