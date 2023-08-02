# docker_uid.sh script

This script sets up and runs a Docker container based on the `ros:noetic-ros-base` image, providing a ROS (Robot Operating System) environment. The container will be named uniquely with a timestamp appended to the image name.

## Prerequisites

Before running this script, make sure you have Docker installed on your system. If Docker is not installed, the script will prompt you to install it before proceeding.

## Usage

1. Open a terminal.

2. Clone or navigate to the directory containing the script.

3. Make the script executable if needed:

   ```bash
   chmod +x script_name.sh
   ```

4. Run the script:

   ```bash
   ./script_name.sh
   ```

The script will check if Docker is installed on your system. If Docker is not found, it will display an error message and exit. Otherwise, it will proceed to run the Docker container with the following configurations:

- Image Name: `ros:noetic-ros-base`
- Container Name: A unique name based on the image name and timestamp
- Networking: Host network mode
- User ID and Group ID: The same as the host user's UID and GID
- Volume Mount: The current directory will be mounted as `/ws` inside the container

The mounted `/ws` directory inside the container is synchronized with the current directory on the host. Any files created or modified inside the container will be reflected in the host directory and vice versa.

## Note

The script assumes that the image `ros:noetic-ros-base` is available on your Docker system. If you don't have this image, Docker will automatically download it before creating the container.

Feel free to modify the script to customize the image name or adjust any other parameters according to your needs.