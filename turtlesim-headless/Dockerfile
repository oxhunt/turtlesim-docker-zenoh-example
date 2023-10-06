# Use an appropriate ROS 2 base image
FROM ros:iron

# Install necessary dependencies, including Xvfb
RUN apt-get update && apt-get install -y \
    ros-iron-turtlesim 
ENV QT_QPA_PLATFORM=offscreen

# Run the Turtlesim ROS 2 application in offscreen mode
CMD ["ros2", "run", "turtlesim", "turtlesim_node"]
