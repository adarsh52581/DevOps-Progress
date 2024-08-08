#!/bin/bash
# Chapter 2: Advanced Scripting Concepts - Control Structures

# The if statement
a=5
if [ $a -gt 3 ]; then
  echo "a is greater than 3"
fi

# The else clause
b=2
if [ $b -gt 3 ]; then
  echo "b is greater than 3"
else
  echo "b is not greater than 3"
fi

# The elif clause
c=3
if [ $c -gt 3 ]; then
  echo "c is greater than 3"
elif [ $c -eq 3 ]; then
  echo "c is equal to 3"
else
  echo "c is less than 3"
fi

# The while loop
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done

# The for loop
for i in {1..5}; do
  echo "Iteration: $i"
done

# Using break and continue
for j in {1..10}; do
  if [ $j -eq 3 ]; then
    continue
  elif [ $j -eq 8 ]; then
    break
  fi
  echo "Number: $j"
done
