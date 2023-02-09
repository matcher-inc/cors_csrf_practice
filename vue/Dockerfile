FROM node:16.15.0

WORKDIR /vue

COPY ./frontend/package.json /vue/package.json

RUN npm install

CMD ["npm", "run", "serve"]
