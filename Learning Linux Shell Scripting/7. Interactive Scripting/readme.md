# Chapter 7: Interactive Scripts

This chapter focuses on creating interactive scripts that engage users directly. It covers how to prompt users for input and handle bad data gracefully.

## Contents

1. **Getting Input from Users**:
   - Learn how to prompt users for input within a script.
   - Essential for scripts that require user decisions or data to proceed.
   - [Script: user.sh](user.sh)

2. **Handling Bad Data**:
   - Strategies for validating user input.
   - Ensure your script can handle errors without crashing.
   - [Script: user.sh](user.sh)

## Challenge: Guessing Game

### Solution:

In this challenge, you are tasked with creating a simple script that:

1. Sets a global variable named `COMPUTER` to a number (in the example, it's 49, but you can use a random number within a certain range).
2. Uses the `read` command to prompt the user to guess the number.
3. Provides feedback to the user if their guess is too high, too low, or correct, and exits the script if the guess is correct.

### Solution Script:

1. **challenge_solution.sh**: This script prompts the user to guess a number and provides feedback based on the guess.
   ```bash
   # Usage:
   ./challenge_solution.sh
