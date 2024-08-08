#!/bin/bash
# Script to monitor a process by its PID

STATUS=0  # Initialize the status variable

# Check if a process ID (PID) is provided as the first command line argument
if [ -z $1 ]; then
  echo "Provide a PID"
  exit 1  # Exit the script with an error code if no PID is provided
fi

# Loop to check the process status
while [ $STATUS -eq 0 ]; do
  ps $1 > /dev/null  # Check if the process with the given PID exists
  STATUS=$?  # Update the status variable based on the process check
done

echo "Process terminated!"
exit 0  # Exit the script successfully
