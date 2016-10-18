#!/bin/bash

source ext/functions.sh
shopt -s nocasematch


echo "Type the puppy euler problem number (ex. 1, 2, 7, etc.) [ENTER]:";echo "";
read problem






if ! [[ $problem =~ $num ]] ; then
  echo "Error:  number" >&2; exit 1
elif [[ $problem =~ $num ]] ; then
  rb_or_js
else 
  echo "Sorry, this problem number is not available." >&2; exit 1
fi
