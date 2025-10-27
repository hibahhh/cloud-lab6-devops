# Use Node.js 18 Alpine as base image
FROM node:18-alpine
# Set working directory
WORKDIR /app
# Copy package files
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy all application files
COPY . .
# Build the Next.js application
RUN npm run build
# Expose port 3000
EXPOSE 3000
# Start the application
CMD [&quot;npm&quot;, &quot;start&quot;]
