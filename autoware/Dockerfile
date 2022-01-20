FROM registry.cn-hangzhou.aliyuncs.com/cudagl/ros-melodic:ros-melodic

# MAINTAINER Jiangxumin <cjiangxumin@gmail.com>
LABEL Jiangxumin <cjiangxumin@gmail.com>

USER docker

COPY shell /home/docker/shell  
RUN  bash  /home/docker/build.sh

# WORKDIR /home/docker
# CMD /bin/bash

#EXPOSE 22
# CMD ["/root/run.sh"]
