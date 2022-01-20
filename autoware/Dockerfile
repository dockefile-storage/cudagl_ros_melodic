FROM registry.cn-hangzhou.aliyuncs.com/cudagl/ros-melodic:ros-melodic

# MAINTAINER Jiangxumin <cjiangxumin@gmail.com>
LABEL Jiangxumin <cjiangxumin@gmail.com>



USER root
COPY shell /home/docker/shell  
RUN  bash  /home/docker/shell/build.sh

USER docker
WORKDIR /home/docker
CMD /bin/bash

#EXPOSE 22
# CMD ["/root/run.sh"]
