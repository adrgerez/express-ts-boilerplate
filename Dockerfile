FROM node:14-alpine

COPY . /usr/src/server

# Create server directory
WORKDIR /usr/src/server

RUN npm install

EXPOSE 4040

ENV NODE_ENV production

CMD ["npm", "run", "start"]