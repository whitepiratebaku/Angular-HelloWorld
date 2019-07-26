FROM node:alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/scr/app
RUN npm cache clean
RUN npm install
COPY . /usr/scr/app
EXPOSE 4200
CMD ["npm","start"]
