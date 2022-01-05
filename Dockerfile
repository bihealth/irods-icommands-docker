FROM centos:7

LABEL org.opencontainers.image.authors="Manuel Holtgrewe <manuel.holtgrewe@bih-charite.de>"
LABEL org.opencontainers.image.source https://github.com/bihealth/irods-icommands-docker

RUN yum install -y epel-release && \
    rpm --import https://packages.irods.org/irods-signing-key.asc && \
    curl https://packages.irods.org/renci-irods.yum.repo \
        > /etc/yum.repos.d/renci-irods.yum.repo && \
    yum clean all && \
    yum upgrade -y

RUN yum -y install \
    irods-icommands \
  && yum clean all \
  && rm -rf /var/cache/yum/* \
  && rm -rf /tmp/*
