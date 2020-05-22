FROM node:14-buster

ENV myVar1="test my var1"  

RUN chown -R root:root /root
WORKDIR /root
ADD . ./

USER ${user}
USER root

RUN chmod +x /root/entrypoint.sh
RUN chmod +x ./entrypoint.sh
RUN chmod +x entrypoint.sh

RUN ["chmod", "+x", "/root/entrypoint.sh"]
RUN ["chmod", "+x", "./entrypoint.sh"]
RUN ["chmod", "+x", "entrypoint.sh"]


USER ${user}




ENTRYPOINT ["/root/entrypoint.sh"]
 
