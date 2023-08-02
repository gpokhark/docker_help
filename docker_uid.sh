#!/bin/bash

# Check if Docker is installed
if ! command -v docker &>/dev/null; then
    echo "Docker is not installed. Please install Docker before running this script."
    exit 1
fi

# Set the image name
IMAGE_NAME="ros:noetic-ros-base"

# Create a unique container name
# CONTAINER_NAME="${IMAGE_NAME}_container_$(date +%s)"
CONTAINER_NAME="ros_container_$(date +%s)"

# Get the current directory path
CURRENT_DIR=$(pwd)

# Get the UID and GID of the host user
HOST_UID=$(id -u)
HOST_GID=$(id -g)

# # Create the "ws" directory if it doesn't exist
# mkdir -p "${CURRENT_DIR}/ws"

# Run the Docker container
docker run -itd \
    --name "${CONTAINER_NAME}" \
    --network host \
    -u "${HOST_UID}:${HOST_GID}" \
    -v "${CURRENT_DIR}:/ws" \
    "${IMAGE_NAME}"

# Print container information
echo "Container '${CONTAINER_NAME}' is now running with mounting current directory as ws inside the container using the host UID and GID."
