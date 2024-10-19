ARG ROS_DISTRO=rolling

FROM osrf/ros:${ROS_DISTRO}-desktop-full

WORKDIR /tmp/build

# redefine RUN to use bash, not sh
SHELL ["/bin/bash", "-c"]

RUN apt-get update \
        && apt-get install -y curl \
                              wget \
                              libgl1-mesa-dri \
                              libqwt-qt5-dev \
                              git \
                              python3 \
                              python3-pip \
                              python3-venv \
                              vim \
                              sl \
                              iproute2 \
                              iputils-ping \
                              cmake \
                              extra-cmake-modules

RUN OpenGL_GL_PREFERENCE=GLVD \
        apt-get update \
        && apt-get install -y ros-${ROS_DISTRO}-image-common \
                              ros-${ROS_DISTRO}-image-geometry \
                              ros-${ROS_DISTRO}-image-transport-plugins \
                              ros-${ROS_DISTRO}-pcl-ros \
                              ros-${ROS_DISTRO}-tf2-geometry-msgs \
                              ros-${ROS_DISTRO}-plotjuggler-ros \
        && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
