#!/bin/bash

# Script to rename video files by lecture number

# Set current directory
cd "$1"

# Loop through files in the current directory
for f in *; do
  # Find the lecture number
  lecture_number=$(echo $f | grep -o -E '[0-9]+ of 56')
  
  # Get the other part of the filename
  rest_of_filename=$(echo $f | sed -e "s/$lecture_number//")
  
  # Rename the file
  mv "$f" "${lecture_number}_${rest_of_filename}"
  
done