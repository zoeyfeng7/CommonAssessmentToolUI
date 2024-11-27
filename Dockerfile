# Base image
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Use npm install instead of npm ci since we don't have package-lock.json
RUN npm install

# Copy the rest of the frontend code
COPY . .

# Build the application
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]