# Specify a base image
FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./

# Install some dependencies
RUN npm install

COPY ./ ./

# Default command
CMD [ "npm", "start" ]