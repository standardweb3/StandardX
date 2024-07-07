# Use an official lightweight image as the base image
FROM alpine:latest

# Set environment variables
ENV COOLIFY_VERSION latest

# Install dependencies
RUN apk --no-cache add \
    bash \
    curl

# Run the curl command
RUN curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash

# Define a working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose any ports the app is supposed to use
# (Replace <port_number> with the actual port number)
EXPOSE 3000

# Set the command to run your app
CMD ["bash"]
