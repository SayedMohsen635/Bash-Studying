#!/bin/bash

# echo "Script Name: $0"
# echo "First Arg:   $1"
# echo "Second Arg:  $2"
# echo "Third Arg:  $3"

# echo "Number of Args: $#"

# -------------------------------

# for arg in "$@"; do # $@ is arr of arguments
#   echo "Args: $arg"
# done

# -------------------------------

# for arg in $*; do
#   echo "Args: $arg"
# done

# -------------------------------

# echo "the process ID of the current script is $$"
# echo "Original elements: \$1 = $1, \$2 = $2, \$3 = $3"
# shift
# echo "Original elements: \$1 = $1, \$2 = $2, \$3 = $3"

# echo "the exit status of the last command or the most recent execution process is $?"

# -------------------------------

# arg=("$@")
# size=$#
# echo "Size is $size"
# for i in "${arg[@]}"; do
#   echo "$i"
# done

# -------------------------------

x="Hello"
y="hello"
if [[ "$x" > "$y" ]]; then
  echo "x is greater than y"
else
  echo "x is less than y"
fi

# -------------------------------

str="Hello everyone"
strlength=${#str}
substr=${str:6:9}
echo "Length of ${str} is ${strlength} and substr of it is ${substr}"

# -------------------------------

name="sayed elhassan mohamed"
IFS=' '                 # delimiter
read -ra ADD <<<"$name" # reading name as an array
echo ${ADD[2]}
arrElements=${ADD[@]}
arrLen=${#ADD[@]}
echo ${arrElements}
echo ${arrLen}

# -------------------------------

# '%' remove from the end
# '#' remove from the beginning

sentence="/path/to/ex.py"
echo "${sentence%.py}"
echo "${sentence%/*}"
echo "${sentence#/*}"
echo "${sentence#*/path}"
echo "${sentence##*/}"

# -------------------------------

###FUNCTIONS###

DisplayName() {
  echo "Hello Name"
}

DisplayNameArgs() {
  echo "$0" "$1" "$2" "$3" "$4"
  echo $# # Display number of args printed
}

DisplayName
DisplayNameArgs Sayed Elhassen Mohamed Ali

# add() {
#   sum=$(($1 + $2))
#   return $sum   # return isn't recommended as it's used for status only (0 or 1) not values as its range is 0-255
# }

add() {
  sum=$(($1 + $2))
  echo "$sum"
}

sub() {
  res=$(($1 - $2))
  return $res
}

res=$(add 1 2)
echo "sum is $res"
# echo $?   # $? is used to print the last done operation
sub 6 4
echo $?

function getSquare() {
  echo $(($1 * $1))
}

getSquare 8

# -------------------------------

# Function to handle the signal
function handle_signal() {
  echo "Signal received. Cleaning up and exiting"
  exit 1
}

# Trap the desired signal and specify the function to handle it
trap 'handle_signal' SIGINT SIGTERM
while true; do
  echo "waiting for signal..."
  sleep 1
done
