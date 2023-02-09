FROM node:16.15.0

WORKDIR /vue

COPY ./frontend/package.json /vue/package.json
COPY ./frontend/package-lock.json /vue/package-lock.json

RUN npm install

CMD ["npm", "run", "serve"]
