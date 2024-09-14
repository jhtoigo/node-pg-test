FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY index.js .

USER node

EXPOSE 3000

CMD ["node", "index.js"]