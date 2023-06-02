# Use the Node.js 20 image based on Alpine Linux 3.16
FROM node:20-alpine3.16

# Copy package.json and package-lock.json to the /usr/app/ directory in the image
COPY package*.json /usr/app/

# Copy the src directory to the /usr/app/ directory in the image
COPY src /usr/app/

# Set the working directory to /usr/app
WORKDIR /usr/app

# Install project dependencies using npm
RUN npm install

# Specify the command to run when the container starts
CMD ["node", "server.js"]