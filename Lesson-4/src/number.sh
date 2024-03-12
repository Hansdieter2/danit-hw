#!/bin/bash

number=$((RANDOM % 100 + 1))

attempts=5

while (( attempts > 0 )); do
read -p "Enter a number from 1 to 100: " guess

if (( guess == number )); then
echo "Congratulations. You guessed the right number"
break
elif (( guess > number )); then
echo "Too high"
else
echo "Too low"
fi

(( attempts-- ))
done

if (( atempts == 0 )); then
echo "Sorry your run out of attempts. the correct number was $number"
fi
