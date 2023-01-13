FROM node:16
USER root
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm ci 
CMD npm run start
