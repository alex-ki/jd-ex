FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

RUN chown -R root:root root
RUN chown -R root:root /root

#USER ${user}
#USER root

WORKDIR $WORK_DIR_PATH

RUN ["chmod", "ugo+rwx", "/root/entrypoint.sh"]
RUN ["chmod", "+rwx", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]


#USER ${user}




ENTRYPOINT ["/root/entrypoint.sh"]
 
