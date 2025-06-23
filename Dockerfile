# Use official Node.js image as base
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json first (for caching npm install layer)
COPY package.json .

# Install app dependencies
RUN npm install

# Copy rest of the files
COPY . .

# Start the app
CMD ["npm", "start"]

# Expose the app's port
EXPOSE 3000
