#!/bin/bash

# Function to process each matching file
process_file() {
    local file_path="$1"
    # Replace this with your custom action
    echo "Processing file: $file_path"
}

# Recursive function to scan directory
scan_directory() {
    local root_dir="$1"
    find "$root_dir" -type f \( -name "*.hpi" -o -name "*.jpi" \) -exec bash -c 'cp "$0" ./latest' {} \;
}

# Specify the root directory to start scanning
root_directory="./download/ftp-chi.osuosl.org/pub/jenkins/plugins"
scan_directory "$root_directory"