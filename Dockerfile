# Use the official Node.js image as base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json to the working directory
COPY package.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app
CMD ["npm", "start"]
