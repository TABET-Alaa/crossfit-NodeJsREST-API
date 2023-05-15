FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json /usr/src/app

# Install dependencies
RUN npm install 

COPY . /usr/src/app


EXPOSE 8080

