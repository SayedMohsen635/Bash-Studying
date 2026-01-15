#!/bin/bash

echo "Do you know me?"
read -p "Answer is " Answer

case $Answer in

YES)
  echo "True"
  ;;
NO)
  echo "False"
  ;;
*)
  echo "Default"
  ;;
esac
