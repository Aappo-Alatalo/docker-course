#!/bin/bash

GITHUB_REPO=$1
DOCKER_HUB_REPO=$2

# Clone the GitHub repository
echo "Cloning GitHub repository: $GITHUB_REPO ..."
git clone "git@github.com:$GITHUB_REPO.git"

# Navigate to the cloned repository directory
cd $(basename "GITHUB_REPO")

# Build the Docker image
echo "Building Docker image: $DOCKER_HUB_REPO ..."
docker build -t "$DOCKER_HUB_REPO" .

# Push the image to Docker Hub
echo "Pushing image to Docker Hub..."
docker push "$DOCKER_HUB_REPO"

echo "Done"