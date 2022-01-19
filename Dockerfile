FROM nvidia/cudagl:10.0-devel-ubuntu18.04 

# MAINTAINER Jiangxumin <cjiangxumin@gmail.com>
LABEL Jiangxumin <cjiangxumin@gmail.com>

USER    root
WORKDIR /root

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list &&\
    sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F42ED6FBAB17C654 &&\
    apt-get update

#RUN apt-get install wget

##  add user
RUN apt-get update && \
      apt-get -y install sudo && \
	  DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

COPY shell /root/shell  
RUN  bash  /root/shell/ros_instal.sh
RUN  bash  /root/shell/eigen_instal.sh
RUN  bash  /root/shell/depends.sh

USER docker
WORKDIR /home/docker
CMD /bin/bash

#EXPOSE 22
# CMD ["/root/run.sh"]
