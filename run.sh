#!/bin/bash

# Ensure required directories exist
mkdir -p uploads static/output

# Get the current commit hash
COMMIT_HASH=$(git rev-parse --short HEAD)

# Run the Docker container
docker run -p 8888:5000 \
    -v $(pwd)/uploads:/app/uploads \
    -v $(pwd)/static/output:/app/static/output \
    facial-${COMMIT_HASH}
