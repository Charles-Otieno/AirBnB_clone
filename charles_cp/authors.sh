#!/bin/bash

# Define the output file for the authors list
AUTHORS_FILE = "AUTHORS"

# Initialize an empty authors file with the header
echo "# File @generated by generate_authors.sh. DO NOT EDIT." > "$AUTHORS_FILE"
echo "# This file lists all the collaborators to the repository." \
    >> "$AUTHORS_FILE"
echo "" >> "$AUTHORS_FILE"

# Use Git to get a list of contributors and append it to the authors file
git log - - format = '%aN <%aE>' | sort - u >> "$AUTHORS_FILE"

echo "Authors file has been generated at $AUTHORS_FILE"
