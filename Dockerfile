FROM node:14-buster

 
ENV myVar1="test my var1"  
 
ENTRYPOINT ["/bin/bash", "-c", "echo Hello All!"] 
