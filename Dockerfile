FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

ENV USER root
ENV WORK_DIR_PATH /root
RUN mkdir -p $WORK_DIR_PATH && chown -R $USER:$USER $WORK_DIR_PATH
WORKDIR $WORK_DIR_PATH

RUN chmod +x /root/entrypoint.sh
RUN chmod +x ./entrypoint.sh
RUN chmod +x entrypoint.sh

RUN ["chmod", "+x", "/root/entrypoint.sh"]
RUN ["chmod", "+x", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]


CMD ["sh", "/root/entrypoint.sh"]
 
