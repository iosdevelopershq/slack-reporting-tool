FROM node:21

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

ENTRYPOINT npm start

LABEL org.opencontainers.image.source https://github.com/iosdevelopershq/slack-reporting-tool

# docker run -p 3000:3000 -it iosdevelopershq/slack-reporting-tool --env-file ./.env