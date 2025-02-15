FROM node:18.20.6

# Install required dependencies
RUN apt-get update && apt-get install libvips-dev -y

# Set environment variable for build
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Set the working directory to /opt
WORKDIR /opt/

# Copy package.json and yarn.lock first to install dependencies
COPY ./package.json ./yarn.lock ./

# Set PATH to include global node_modules/.bin
ENV PATH=/opt/node_modules/.bin:$PATH

# Install dependencies
RUN yarn config set network-timeout 600000 -g && yarn install

# Copy the rest of the application code
COPY ./ ./

# Build the app
RUN yarn build

# Expose the port (adjust if needed)
EXPOSE 1337

# Command to run the application
CMD ["yarn", "develop"]
