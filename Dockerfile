FROM node:12.16.1-alpine

WORKDIR /etc/stale/

COPY package.json package-lock.json ./

RUN npm install --only=production

COPY . .

EXPOSE  3000

CMD ["npm", "run", "start"]
