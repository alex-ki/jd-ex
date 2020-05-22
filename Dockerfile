FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

RUN ["chmod", "+x", "/root/entrypoint.sh"]
RUN ["chmod", "+x", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]

RUN ["chmod", "+x", "/usr/bin/foxx"]

RUN ["chmod", "755", "/rootentrypoint.sh"]
RUN ["chmod", "755", "./entrypoint.sh"]
RUN ["chmod", "755", "entrypoint.sh"]

ENTRYPOINT ["./entrypoint.sh"]  
