FROM node:14

WORKDIR /usr/src/app

#Install dependencies
COPY app/package*.json ./

RUN npm install

COPY app/ ./

EXPOSE 8080

CMD [ "node", "server.js" ]

