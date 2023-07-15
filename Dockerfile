FROM node:18-alpine

WORKDIR /nestjs-app
COPY package*.json .
RUN npm install
COPY . .
CMD yarn start:dev:docker