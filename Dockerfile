# Use a Node.js image as the base
FROM node:18-alpine3.18

# Set the working directory inside the container
WORKDIR /backend/build

# Copy project files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port on which the application runs
EXPOSE 3000

# Command to start the application
CMD ["npm", "start:prod"]
