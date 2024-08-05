#!/bin/bash

##########################
# Author: Adarsh
# Date: 4th Aug 2024
#
# This script outputs the node health
#
# Version: V1
##########################


set -x # debug mode

set -o # exit the script when there is an error

set -o # exit whe there is an error even when a pipe is present

# could've wrote in 1 line as set -exo pipeline

df -h # prints all details of disk space

free -g # prints all the free memory present

nproc # processors used or available