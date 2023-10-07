#!/bin/bash

# you need to setup docker(not explained here)

# Add the zenoh router bridge
# Define the repository line to append
repo_line="deb [trusted=yes] https://download.eclipse.org/zenoh/debian-repo/ /"

# Check if the repository line already exists in sources.list
if grep -qF "$repo_line" /etc/apt/sources.list; then
    echo "Repository line already exists in sources.list"
else
    # Append the repository line to sources.list
    echo "$repo_line" | sudo tee -a /etc/apt/sources.list
    echo "Repository line appended to sources.list"
fi
sudo apt update -y;
sudo apt install -y zenoh #zenoh-plugin-dds zenoh-bridge-dds
