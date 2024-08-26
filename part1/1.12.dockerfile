# Using this node version since project readme was talking about version 16.x and Google told me that 16.20.2 is the LTS version
FROM node:16.20.2

EXPOSE 5000

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]