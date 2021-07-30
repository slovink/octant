FROM ubuntu:latest
USER root
RUN apt-get update -y
RUN apt-get install -y wget
#RUN wget https://github.com/vmware-tanzu/octant/releases/download/v0.13.0/octant_0.13.0_Linux-64bit.deb
RUN wget https://github.com/vmware-tanzu/octant/releases/download/v0.22.0/octant_0.22.0_Linux-64bit.deb
RUN dpkg -i octant_0.22.0_Linux-64bit.deb
CMD octant --disable-open-browser --listener-addr 0.0.0.0:7777
