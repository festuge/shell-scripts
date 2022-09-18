#!/bin/bash
#this script can be use to add two integers
echo -n "Please enter the first number: "
read num1
echo -n "Please enter the second number: "
read num2
add=$[$num1 + $num2]
echo "The sum of $num1 and $num2 is equal: $add"
