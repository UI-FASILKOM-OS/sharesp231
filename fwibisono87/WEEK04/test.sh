#!/bin/bash

# Initialize counters
tests_run=0
tests_passed=0
tests_failed=0

# Define a function to run a test case
run_test() {
  tests_run=$((tests_run+1))
  output=$(./1906350553-getopt "$1")
  expected_output="$2"
  if [ "$output" != "$expected_output" ]; then
    echo "Error: test case \"$1\" failed: expected '$expected_output', but got '$output'"
    tests_failed=$((tests_failed+1))
  else
    tests_passed=$((tests_passed+1))
  fi
}

# Run the test cases
run_test "" "Hello!"
run_test "-b" "Hello!
It is a beautiful day!"
run_test "-n Dodo" "Hello!
Is your name  Dodo?"
run_test "-b -n Dodo" "Hello!
It is a beautiful day!
Is your name Dodo?"
run_test "-n Dodo -b" "Hello!
It is a beautiful day!
Is your name Dodo?"
run_test "-n Dodo -b World" "Hello World!
It is a beautiful day!
Is your name Dodo?"
run_test "World -n Dodo -b" "Hello World!
It is a beautiful day!
Is your name Dodo?"
run_test "-n Dodo World -b" "Hello World!
It is a beautiful day!
Is your name Dodo?"

# Print the test results summary
echo "Tests run: $tests_run"
echo "Tests passed: $tests_passed"
echo "Tests failed: $tests_failed"

# Exit with a success status if all tests passed, or a failure status otherwise
if [ "$tests_failed" -eq 0 ]; then
  exit 0
else
  exit 1
fi
