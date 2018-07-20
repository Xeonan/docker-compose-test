FROM node:8-stretch

WORKDIR /app

ADD ./demo-server /app

RUN npm install

RUN ls -l ./

EXPOSE 3000

CMD cd /app && npm install && npm start
