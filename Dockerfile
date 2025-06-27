# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Install live-server globally
RUN npm install -g live-server

# Copy all project files
COPY . .

# Expose live-server default port
EXPOSE 8080

# Run live-server
CMD ["live-server", "--port=8080", "--host=0.0.0.0", "--no-browser"]
