# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the files
COPY . .

# Expose the port live-server uses
EXPOSE 8080

# Start the live-server
CMD ["npm", "start"]
