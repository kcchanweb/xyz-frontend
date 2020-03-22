# build stage
FROM node:lts-alpine as fe-vuejs
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

