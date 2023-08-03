# Use the base ROS image
FROM ros:noetic-ros-base

# Install git
RUN apt-get update && \
    apt-get install -y git

# Install pip3
RUN apt-get install -y python3-pip

# Install RPi.GPIO
RUN pip3 install RPi.GPIO

# Optionally, you can add any other necessary packages or dependencies here

# Set up the ROS environment variables (you can customize these as needed)
ENV ROS_DISTRO=noetic
ENV ROS_IP=192.168.0.253
ENV ROS_MASTER_URI=http://192.168.0.253:11311

# Set up the entrypoint (modify it if needed)
CMD ["bash"]