FROM node:latest

LABEL name="5ireChain Faucet" \
      maintainer="Alvin Reyes <alvin@5ire.org>" \
      version="0.0.1" \
      release="latest" \
      summary="5ireChain Faucet" \
      description="5ireChain Faucet"  

RUN mkdir -p /home/node/faucet \
    && cd /home/node/faucet \
    && npm install 
    
COPY .   /home/node/faucet/
RUN cd /home/node/faucet \
    && yarn install \
    && yarn build

## env should be replaced with enviroment variables (injected from secretKeyRef in k8s)
## for infra to configure

WORKDIR /home/node/faucet/

# production builds website
CMD ["sh", "-l", "-c", "npm run start"]