#!/bin/bash

# Get the short commit hash
COMMIT_HASH=$(git rev-parse --short HEAD)

# Build the Docker image
docker build -t facial-${COMMIT_HASH} .

echo "Built Docker image: facial-${COMMIT_HASH}"
echo ""
echo "To run the container, use:"
echo "docker run -p 8888:5000 -v \$(pwd)/uploads:/app/uploads -v \$(pwd)/static/output:/app/static/output facial-${COMMIT_HASH}" 