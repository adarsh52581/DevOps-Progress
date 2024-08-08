#!/bin/bash
# Script for a guessing game

COMPUTER=49  # Set the computer's number to 49

# Prompt the user to guess the number
read -p "Enter your guess number (1-50): " VALUE

# Check if the user's guess is correct, too low, or too high
if [ $VALUE -eq $COMPUTER ]; then
    echo "Yay! You guessed it right :)"
elif [ $VALUE -lt $COMPUTER ]; then
    echo "Lower than expected :("
elif [ $VALUE -gt $COMPUTER ]; then
    echo "Higher than expected :("
fi

exit 0  # Exit the script successfully
