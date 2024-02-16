# Build
FROM node:20-alpine as build

# Set the working directory
WORKDIR /app

# Retrieve project files & dependencies
COPY ./ ./

# Build
RUN npm run build

# Expose Port
EXPOSE 3000

# Start Server
CMD [ "node", "server.mjs" ]
