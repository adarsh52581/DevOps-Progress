#!/bin/bash
# Challenge: Read and process a text file

# Initialize a counter to keep track of the number of lines read
COUNT=0

# Read each line from the input file
while IFS='' read -r LINE; do
  # Break the loop if the count exceeds the specified number of lines
  if [ $COUNT -ge $2 ]; then
    break
  fi
  # Print the line
  echo "$LINE"
  # Increment the counter
  ((COUNT++))
done < "$1"
