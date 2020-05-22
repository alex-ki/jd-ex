FROM node:14-buster

RUN /bin/bash -c 'echo TEST TEXT'
ENV myVar1="test my var1" \
    myVar2="test my var2"  
 
CMD ls
