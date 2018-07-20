FROM node:8-stretch

WORKDIR /app

ADD ./demo-server /app

RUN npm install

RUN ls -l /app

EXPOSE 3000

CMD npm install && npm start
