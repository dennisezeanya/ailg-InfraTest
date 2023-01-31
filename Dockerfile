# Use explicit and deterministic Docker base image tags
FROM node:18-alpine

# Create app directory
WORKDIR /home/node/app

# Copy both package.json AND package-lock.json
COPY package*.json ./

RUN npm ci 

# Copy source code
COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]