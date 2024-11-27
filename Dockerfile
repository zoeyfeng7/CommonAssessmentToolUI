FROM node:18-alpine

# Set working directory
WORKDIR /frontend

# Copy package files from app directory
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app directory
COPY app/ ./

# Build the application
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]