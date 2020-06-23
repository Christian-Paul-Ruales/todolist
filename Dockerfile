FROM node:10-alpine
WORKDIR /app
# Install app dependencies
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 8080
CMD [ "node", "app.js" ]
