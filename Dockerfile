# Dockerfile
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY backend/package*.json ./

# Install dependencies
RUN npm install --production

# Copy source code
COPY backend/ ./
COPY frontend/ ./public/

# Expose port
EXPOSE 3001

# Start the application
CMD ["node", "server.js"]