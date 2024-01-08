# Step 1: Specify the base image
FROM node:20-alpine

# Step 2: Set the working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install --verbose

# Step 5: Copy the rest of your application
COPY . .

# Step 6: Specify the command to run your application
#CMD [ "node", "server.js" ]
CMD [ "sh", "-c", "npm run start" ]
