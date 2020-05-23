FROM node:14-buster

USER root
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./
  
RUN ["chmod", "ugo+rwx", "/root/entrypoint.sh"] 


ENTRYPOINT []
 
