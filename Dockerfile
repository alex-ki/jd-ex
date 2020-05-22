FROM node:14-buster

ENV myVar1="test my var1"  

WORKDIR /root
ADD . ./


ENTRYPOINT ["/root/entrypoint.sh"]
 
