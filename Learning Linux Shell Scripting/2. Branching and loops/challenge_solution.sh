#!/bin/bash

# Challenge: Create a counter script

count=$1
i=0
while [ $i -le $count ]; do
  echo "$i"
  ((i++))
done

echo "Loop terminated"
exit 0
