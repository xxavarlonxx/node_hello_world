FROM node:11-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .
CMD npm run start
EXPOSE 3000
