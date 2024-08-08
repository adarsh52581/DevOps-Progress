# Chapter 6: Managing Processes

This chapter focuses on managing processes and includes two key topics:

## Contents

1. **Using the sleep command**:
   - Learn how to use the `sleep` command to pause a script for a specified amount of time.
   - Ensure input is received for the delay and exit with an error code if no input is provided.
   - Run sleeping scripts in the background to continue using the shell.
   - [Script: delay.sh](delay.sh)

2. **Watching a process**:
   - Monitor other system processes to observe the behavior of scripts or applications over time.
   - [Script: proc.sh](proc.sh)

## Challenge: Watch a script

### Solution:

In this challenge, you are tasked with using the `sleep` command and monitoring processes to create or modify a script that manages and observes the behavior of a script over time. Here's the solution using the provided scripts:

1. **delay.sh**: This script pauses execution for a specified amount of time.
   ```bash
   # Usage:
   ./delay.sh <delay_in_seconds>
2. **proc.sh**: This script monitors a process by its PID and waits until the process terminates.
   ```bash
    # Usage:
    ./proc.sh <PID>