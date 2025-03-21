# Use the official Node.js 18 as a parent image
FROM node:18
 # Set the working directory in the container
WORKDIR /usr/src/app
 # Copy the current directory contents into the container
COPY . .
 # Install any needed packages specified in package.json
RUN npm install
 # Make port 3000 available to the world outside this container
EXPOSE 3000
 # Run the app when the container launches
CMD ["npm", "start"]
