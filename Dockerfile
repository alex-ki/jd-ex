FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./

RUN chmod +x /root/entrypoint.sh
RUN ["chmod", "+x", "/root/entrypoint.sh"]
ENTRYPOINT ["/root/entrypoint.sh"] 
RUN ["chmod", "+x", "/root/entrypoint.sh"]
