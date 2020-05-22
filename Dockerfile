FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

RUN chown -R root /root
 
 
USER root
 

RUN adduser jenkins users
USER jenkins

RUN ["chmod", "ugo+rwx", "/root/entrypoint.sh"]
RUN ["chmod", "+rwx", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]
 


ENTRYPOINT ["entrypoint.sh"]
 
