#!/bin/bash

# Read plugins.txt line by line
while read -r plugin; do
    # Construct the wget command
    wget -r "ftp://ftp-chi.osuosl.org/pub/jenkins/plugins/$plugin"
done < plugins-deps.txt

