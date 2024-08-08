#!/bin/bash
# Chapter 5: File Operations

# Reading files
echo "Reading from file:"
while IFS= read -r line; do
  echo "$line"
done < input.txt

# Writing to files
echo "Writing to file:"
echo "This is a new line of text" >> output.txt

# File checksums
echo "Generating file checksum:"

# Using sha256sum to generate a checksum of the input.txt file
# This command calculates the SHA-256 hash of the file's contents
# and outputs the checksum along with the filename.
sha256sum input.txt

# Another common command for checksums is md5sum, which works similarly
# and generates an MD5 hash.
# Example:
# md5sum input.txt
# also cksum input.txt