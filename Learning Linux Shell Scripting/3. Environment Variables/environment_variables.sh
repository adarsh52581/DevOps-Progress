#!/bin/bash
# Chapter 3: Environment Variables

# Reading environment variables
echo "User: $USER"
echo "Home Directory: $HOME"
echo "Path: $PATH"

# Using an environment variable in a script
if [ -n "$USER" ]; then
  echo "Hello, $USER!"
else
  echo "User variable is not set."
fi

# Setting and using a custom environment variable
MY_VAR="HelloWorld"
echo "My Variable: $MY_VAR"
