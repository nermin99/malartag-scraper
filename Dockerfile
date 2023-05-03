FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY .env .env
COPY index.js index.js

CMD [ "npm", "start" ]
