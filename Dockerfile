FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build application
RUN npm run build

# Expose the port Next.js runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]