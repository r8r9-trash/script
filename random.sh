#!/bin/bash

# Set the number of random numbers to generate
count=500

# Initialize an empty array to store the numbers
numbers=()

# Generate and print the random numbers
while [[ ${#numbers[@]} -lt $count ]]; do
  # Generate a random number between 0 and 49
  number=$(($RANDOM % 700))
  # Shift the range from 0-49 to 50-99
  number=$(($number + 700))

  # Check if the number has already been generated
  skip=false
  for n in ${numbers[@]}; do
    if [[ $n == $number ]]; then
      skip=true
      break
    fi
  done

  # If the number is unique, add it to the array
  if [[ $skip == false ]]; then
    numbers+=($number)
  fi
done

# Print the generated numbers
echo ${numbers[@]}
