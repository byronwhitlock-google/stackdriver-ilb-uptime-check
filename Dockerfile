FROM node
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json /app
RUN npm install

# Bundle app source
COPY . /app

# Run a command with arguments
CMD [ "node", "app.js" ]
