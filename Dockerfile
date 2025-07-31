# Use the official Node.js image as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose any ports if necessary (this app doesn't expose ports, but for completeness)
# EXPOSE 3000 (uncomment if your app listens on a port)

# Command to run the application
CMD ["node", "main.mjs"] 
