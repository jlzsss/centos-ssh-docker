FROM i386/jdeathe/centos-ssh:latest@sha256:c2785805f75a05c1aa24ef8fe17af4c14646e75c3e7a9f905c24bedbd757c204

RUN yum install -y wget \
 && wget -qO- https://get.docker.com/ | sh \
 && systemctl enable docker.service

RUN yum install -y python-pip \
 && pip install docker-compose
