#!/bin/bash

# Simple Calculator Script (Argument Based)

# Check if 3 arguments are passed
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <num1> <num2> <operation>"
    echo "Operation:"
    echo "1 = Addition"
    echo "2 = Subtraction"
    echo "3 = Multiplication"
    echo "4 = Division"
    exit 1
fi

a=$1
b=$2
ch=$3

case $ch in
   1)
      res=$((a + b))
      echo "Addition Result: $res"
      ;;
   2)
      res=$((a - b))
      echo "Subtraction Result: $res"
      ;;
   3)
      res=$((a * b))
      echo "Multiplication Result: $res"
      ;;
   4)
      if [ "$b" -eq 0 ]; then
         echo "Error: Division by zero not allowed"
         exit 1
      fi
      res=$((a / b))
      echo "Division Result: $res"
      ;;
   *)
      echo "Invalid operation. Choose 1, 2, 3, or 4."
      exit 1
      ;;
esac
