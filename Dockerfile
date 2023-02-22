# Specify the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Expose the port used by ExpressJS
EXPOSE 8080

# Start the server
CMD ["npm", "start"]
