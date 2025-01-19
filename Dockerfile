# Use a Node.js version that meets the Angular CLI requirements
FROM node:18.19.0 as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build --prod
