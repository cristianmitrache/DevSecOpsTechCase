#!/bin/bash

# Check if nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install nmap and try again."
    exit 1
fi

# Function to perform a network scan and save the results
perform_scan() {
    for target in "$@"; do
        nmap -oG - "$target" >> scan_results.txt
    done
}

# Function to compare two scan results and display the differences
display_diff() {
    diff -u scan_results_prev.txt scan_results.txt | grep '^[-+*]' | sed 's/^\([-+*]\)/\1 /'
}

# Check if targets are provided as command-line arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 <target1> <target2> ..."
    exit 1
fi

# Initial scan
perform_scan "$@"

# Run the main loop for repetitive scans
while true; do
    # Sleep for 300 seconds (adjust as needed)
    sleep 300

    # Perform a new scan
    perform_scan "$@"

    # Display the differences
    echo "Differences:"
    display_diff

    # Save the current scan results as previous for the next comparison
    cp scan_results.txt scan_results_prev.txt
done
