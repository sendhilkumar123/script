#!/bin/bash

# Display the available operations and prompt the user to choose one
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1-4): " choice

# Prompt the user to enter the two numbers to calculate
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Perform the selected operation and print the result
case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $result"
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $result"
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $result"
        ;;
    4)
        result=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Result: $result"
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 4."
        ;;
esac

