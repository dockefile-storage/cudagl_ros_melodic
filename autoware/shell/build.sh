##############################
# build autoware
##############################

su - docker -c "mkdir -p /home/docker/Autoware/src"
su - docker -c "/bin/bash -c 'source /home/docker/.bash_aliases'"

source /opt/ros/melodic/setup.bash && sudo rosdep init 

su - docker -c "/bin/bash  -c 'source /home/docker/.bash_aliases' ;
rosdep update ;
cd  /home/docker/Autoware; 
vcs import src < /home/docker/shell/autoware.ai.repos; 
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO ;  
AUTOWARE_COMPILE_WITH_CUDA=1 colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release ;
"