FROM node:latest

WORKDIR /usr/src/mockpass

COPY package* ./

RUN npm ci

COPY . ./

EXPOSE 5156

CMD ["node", "index.js"]
