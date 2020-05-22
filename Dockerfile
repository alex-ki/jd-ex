FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

ENV USER root
ENV WORK_DIR_PATH /root
RUN chown -R $USER:$USER $WORK_DIR_PATH
WORKDIR $WORK_DIR_PATH

ENV USER jenkins
ENV WORK_DIR_PATH /root
RUN chown -R $USER:$USER $WORK_DIR_PATH
WORKDIR $WORK_DIR_PATH

RUN chmod +x /root/entrypoint.sh
RUN chmod +x ./entrypoint.sh
RUN chmod +x entrypoint.sh

RUN ["chmod", "+x", "/root/entrypoint.sh"]
RUN ["chmod", "+x", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]


ENTRYPOINT ["/root/entrypoint.sh"]
 
