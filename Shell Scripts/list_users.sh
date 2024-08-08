#!/bin/bash

# Script Information
# Author: Adarsh
# Date: 7-8-2024
# Description: This script lists users with read access to a specified GitHub repository.
# Usage: ./script_name.sh <org_name> <repository_name>

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
# Ensure these environment variables are set before running the script
USERNAME=$username
TOKEN=$token

# Function to print usage information
function print_usage {
    echo "Usage: $0 <org_name> <repository_name>"
}

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
    collaborators=$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script
# Ensure required command-line arguments are provided
if [[ $# -ne 2 ]]; then
    echo "Error: Missing required arguments."
    print_usage
    exit 1
fi

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access
