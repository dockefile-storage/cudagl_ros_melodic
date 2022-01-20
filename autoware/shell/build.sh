##############################
# build autoware
##############################

mkdir  -p Autoware/src 
cd  Autoware

vcs import src < /home/docker/shell/autoware.ai.repos

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

AUTOWARE_COMPILE_WITH_CUDA=1 colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
