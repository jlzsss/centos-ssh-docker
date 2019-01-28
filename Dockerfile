FROM jdeathe/centos-ssh:latest@sha256:137a5a316580a1ee0114e97a5062a7bd740e6870b75081513e935f9f75290e8d

RUN yum install -y wget \
 && wget -qO- https://get.docker.com/ | sh \
 && systemctl enable docker.service

RUN yum install -y python-pip \
 && pip install docker-compose