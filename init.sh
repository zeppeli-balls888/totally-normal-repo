#!/bin/bash

# Prompt user for input
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

# Compare numbers using the -gt (greater than) operator
if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
    largest=$num1
elif [ "$num2" -gt "$num1" ] && [ "$num2" -gt "$num3" ]; then
    largest=$num2
else
    largest=$num3
fi

echo "The largest number is: $largest"

# what even is this repo about??
