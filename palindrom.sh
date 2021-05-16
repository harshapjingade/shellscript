#!/bin/bash
read palindrome
reverse=$(echo $palindrome | rev)
if [ $palindrome = $reverse ]; then
  echo "its palindrome"
else
  echo "its not a palindrome"
fi
