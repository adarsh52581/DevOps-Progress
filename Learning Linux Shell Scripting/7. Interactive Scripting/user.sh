#!/bin/bash
# Script to get user input for name and age

VALID=0  # Initialize the validation flag

while [ $VALID -eq 0 ]; do
    # Prompt the user to enter their name and age
    read -p "Enter your name and age: " NAME AGE
    
    # Check if the name or age is empty
    if [[ ( -z $NAME ) || ( -z $AGE ) ]]; then
        echo "Parameters insufficient!!"
        continue  # Continue to the next iteration of the loop if the check fails
    # Check if the name contains non-alphabetical characters
    elif [[ ! $NAME =~ ^[A-Za-z]+$ ]]; then
        echo "Name has non-alpha characters"
        continue  # Continue to the next iteration of the loop if the check fails
    # Check if the age contains non-numerical characters
    elif [[ ! $AGE =~ ^[0-9]+$ ]]; then
        echo "Age has non-numerical characters"
        continue  # Continue to the next iteration of the loop if the check fails
    fi
    VALID=1  # Set the validation flag to true if all checks pass
done

# Print the validated name and age
echo "Name: $NAME and age: $AGE"
exit 0  # Exit the script successfully
