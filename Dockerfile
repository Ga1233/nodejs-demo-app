# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy app files
COPY package*.json ./
RUN npm install
COPY . .

# Expose and run
EXPOSE 3000
CMD ["npm", "start"]
