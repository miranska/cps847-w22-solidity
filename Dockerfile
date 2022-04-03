FROM ubuntu:20.04

# install Ethereum
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum

# install Node.js
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# install Ganache
RUN npm install -g yarn
RUN apt-get install -y build-essential
RUN yarn global add ganache

# install Truffle
RUN apt-get install -y git
RUN yarn global add truffle

WORKDIR /prj
