#!/bin/bash

##########################
# Author: Adarsh
# Date: 4th Aug
#
# This script outputs the node health
#
# Version: V1
# ########################
#
#
set -x #debug mode
df -h 

free -g

nproc