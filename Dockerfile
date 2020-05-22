FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./


RUN ["chmod", "755", "/root/entrypoint.sh"]
RUN ["chmod", "755", "./entrypoint.sh"]
RUN ["chmod", "755", "entrypoint.sh"]

 

ENTRYPOINT ["./entrypoint.sh"]  
 
