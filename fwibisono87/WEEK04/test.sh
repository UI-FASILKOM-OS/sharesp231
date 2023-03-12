#!/bin/bash

# Run the first command and store the output
output=$(./1906350553-getopt)

# Check if the output is correct
if [[ "$output" != "Hello!" ]]; then
  echo "Error: Expected 'Hello!', but got '$output'"
  exit 1
fi

# Run the second command and store the output
output=$(./1906350553-getopt -b)

# Check if the output is correct
if [[ "$output" != "Hello!
It is a beautiful day!" ]]; then
  echo "Error: Expected 'Hello!
It is a beautiful day!', but got '$output'"
  exit 1
fi

# Run the third command and store the output
output=$(./1906350553-getopt -n Dodo)

# Check if the output is correct
if [[ "$output" != "Hello!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# Run the fourth command and store the output
output=$(./1906350553-getopt -b -n Dodo)

# Check if the output is correct
if [[ "$output" != "Hello!
It is a beautiful day!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello!
It is a beautiful day!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# Run the fifth command and store the output
output=$(./1906350553-getopt -n Dodo -b)

# Check if the output is correct
if [[ "$output" != "Hello!
It is a beautiful day!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello!
It is a beautiful day!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# Run the sixth command and store the output
output=$(./1906350553-getopt -n Dodo -b World)

# Check if the output is correct
if [[ "$output" != "Hello World!
It is a beautiful day!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello World!
It is a beautiful day!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# Run the seventh command and store the output
output=$(./1906350553-getopt World -n Dodo -b)

# Check if the output is correct
if [[ "$output" != "Hello World!
It is a beautiful day!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello World!
It is a beautiful day!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# Run the eighth command and store the output
output=$(./1906350553-getopt -n Dodo World -b)

# Check if the output is correct
if [[ "$output" != "Hello World!
It is a beautiful day!
Is your name Dodo?" ]]; then
  echo "Error: Expected 'Hello World!
It is a beautiful day!
Is your name Dodo?', but got '$output'"
  exit 1
fi

# If all outputs are correct, print success message
echo "All outputs are correct!"
exit 0
