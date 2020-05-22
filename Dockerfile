FROM node:14-buster

ENV myVar1="test my var1"  

RUN chown -R root:root /root
WORKDIR /root
ADD . ./

#USER ${user}
USER root

RUN ["chmod", "ugo+rwx", "/root/entrypoint.sh"]
RUN ["chmod", "ugo+rwx", "./entrypoint.sh"]
RUN ["chmod", "ugo+rwx", "entrypoint.sh"]


#USER ${user}




ENTRYPOINT ["/root/entrypoint.sh"]
 
