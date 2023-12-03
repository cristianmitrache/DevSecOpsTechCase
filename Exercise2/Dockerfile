# Use the latest Ubuntu base image
FROM ubuntu:latest

# Install nmap
RUN apt-get update && apt-get install -y nmap

# Create a directory to hold the script
WORKDIR /app

# Copy the script into the container
COPY scanner.sh .
COPY scan_results_prev.txt .
COPY scan_results.txt .

# Make the script executable
RUN chmod 755 scanner.sh
RUN chmod 755 scan_results_prev.txt
RUN chmod 755 scan_results.txt

# Set the default CMD to an empty array
ENTRYPOINT ["/bin/bash"]
CMD ["./app/scanner.sh"]