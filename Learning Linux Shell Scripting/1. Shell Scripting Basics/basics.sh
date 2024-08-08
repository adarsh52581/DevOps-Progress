#!/bin/bash
# Chapter 1: Learning Linux Shell Scripting Basics

# Printing to the console
echo "Hello, World!"

# chmod example
# Make this script executable (uncomment the following line if you want to use it)
# chmod +x chapter1_basics.sh
echo "Changed file permissions to make the script executable"

# Comments example
# This is a comment
echo "This script shows how to add comments"

# Shebang example
# The shebang line (#!/bin/bash) specifies the script interpreter
echo "Shebang specifies the script interpreter"

# Creating and using variables
name="John"
echo "Hello, $name!"

# Passing parameters
# Usage: ./chapter1_basics.sh [name] [favorite sport]
echo "Hello, $1! Your favorite sport is $2."
