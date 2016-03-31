# The latest RHEL 7 image from Redhat
FROM registry.access.redhat.com/rhel7:latest

MAINTAINER Glen Millard gmillard@redhat.com 
LABEL Name Logentries rhel7/logentries
LABEL Version 0.1
LABEL Release OSS
LABEL Vendor Lognentries

# Install yum dependencies
RUN yum install -y tar \
    && yum clean all
    
# To satisfy the git and test requirements 
RUN yum -y install openssl git httpd

RUN git clone https://github.com/logentries/le.git

EXPOSE 80

USER root

ENTRYPOINT ["/usr/sbin/apachectl","-D","FOREGROUND"]
#ENTRYPOINT ["/usr/sbin/apachectl","-D"]
