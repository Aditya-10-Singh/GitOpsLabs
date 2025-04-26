# Use an official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all other source code
COPY . .

# Expose port 80
EXPOSE 80

# Command to run the app
CMD ["node", "server.js"]
