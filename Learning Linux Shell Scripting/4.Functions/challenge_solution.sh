#!/bin/bash
# Challenge: Create functions to list and display files

# Fetch the first 10 files in the current directory, sorted
FILES=$(ls -1 | sort -V | head -10)

# Function to get and print the first 10 files
GetFiles() {
  echo "First 10 regularly sorted files:"
  for FILE in $FILES; do
    # Printing each file name
    echo "$FILE"
  done
}

# Function to display files with a counter
ShowFiles() {
  COUNT=1
  for FILE in $FILES; do
    # Displaying the file number and name
    echo "The file number $COUNT: $FILE"
    ((COUNT++))
  done
}

# Execute GetFiles function
echo "GetFiles function execution begins:"
GetFiles

# Execute ShowFiles function
echo "ShowFiles function execution begins:"
ShowFiles
