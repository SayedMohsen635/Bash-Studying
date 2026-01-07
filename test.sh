#!/bin/bash

# echo "Script Name: $0"
# echo "First Arg:   $1"
# echo "Second Arg:  $2"
# echo "Third Arg:  $3"

# echo "Number of Args: $#"

# for arg in "$@"; do # $@ is arr of arguments
#   echo "Args: $arg"
# done

# for arg in $*; do
#   echo "Args: $arg"
# done

# echo "the process ID of the current script is $$"
# echo "Original elements: \$1 = $1, \$2 = $2, \$3 = $3"
# shift
# echo "Original elements: \$1 = $1, \$2 = $2, \$3 = $3"

# echo "the exit status of the last command or the most recent execution process is $?"

arg=("$@")
size=$#
echo "Size is $size"
for i in "${arg[@]}"; do
  echo "$i"
done
