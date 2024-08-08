#!/bin/bash
# Chapter 4: Functions

# Function to print a greeting message
PrintGreeting() {
  echo "Hello, welcome to shell scripting!"
}

# Function to add two numbers and print the result
AddNumbers() {
  local num1=$1
  local num2=$2
  local sum=$((num1 + num2))
  echo "The sum of $num1 and $num2 is: $sum"
}

# Function to demonstrate piping
PipingExample() {
  echo "Listing files in the current directory, sorting, and showing the first 5:"
  ls -1 | sort | head -5
}

# Main script execution
echo "Executing PrintGreeting function:"
PrintGreeting

echo "Executing AddNumbers function with parameters 5 and 10:"
AddNumbers 5 10

echo "Executing PipingExample function:"
PipingExample
