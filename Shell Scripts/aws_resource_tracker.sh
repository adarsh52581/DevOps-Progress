#!/bin/bash

###############################
# Author: Adarsh
# Date: 5th Aug 2024
#
# Version: v1
#
# This script will report the AWS resource usage
###############################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list S3 buckets
echo "Print list of S3 buckets"
aws s3 ls > ResourceTracker  # Redirect the output to a file named ResourceTracker

# list EC2 instances
echo "Print EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  # Use jq to filter and print only instance IDs

# list lambda functions
echo "Print lambda functions"
aws lambda list-functions >> ResourceTracker  # Append the output to the file ResourceTracker

# list IAM users
echo "Print all IAM users"
aws iam list-users