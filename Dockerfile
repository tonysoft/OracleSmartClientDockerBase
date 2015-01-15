FROM cjonagam/centos-nodejs-0.10.33
# Use a Base Image with Node.js pre-installed

MAINTAINER Tony Sukiennik tsukiennik@equinix.com

ADD .bashrc /root/.bashrc
ADD client64 /oracleClient64

