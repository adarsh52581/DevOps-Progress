#!/bin/bash
# Script to pause execution for a specified amount of time

# Get the delay time from the first command line argument
DELAY=$1

# Check if the delay time is provided
if [ -z $DELAY ]; then
  echo "You must supply a delay"
  exit 1  # Exit the script with an error code if no delay is provided
fi

echo "Going to sleep for $DELAY seconds"

# Pause execution for the specified delay time
sleep $DELAY

echo "We are awake"
exit 0  # Exit the script successfully
