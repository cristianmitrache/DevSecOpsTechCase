# Use the latest minimal Ubuntu base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl jq && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy the script into the container
COPY getweather.sh .

# Make the script executable
RUN chmod +x getweather.sh

# Define the default command to run the script
CMD ["./getweather.sh"]