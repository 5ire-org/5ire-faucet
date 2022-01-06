FROM node:latest

LABEL name="5ireChain Faucet" \
    maintainer="5ire Engineering <technology@5ire.org>" \
    version="0.0.1" \
    release="latest" \
    summary="5ireChain Faucet" \
    description="5ireChain Faucet"

WORKDIR /home/node/faucet/
COPY . .

RUN npm install

# production builds website
CMD ["npm", "run", "start"]