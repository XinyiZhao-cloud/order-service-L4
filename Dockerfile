FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV RABBITMQ_CONNECTION_STRING=amqp://guest:guest@localhost:5672/
ENV PORT=3000

CMD ["node", "index.js"]