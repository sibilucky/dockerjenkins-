# Use the official Node.js 14 slim image as a base
FROM node:14-slim

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install --no-cache

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 5000

# Set environment variables (if needed)
ENV NAME World

# Command to run the application
CMD ["node", "app.js"]

