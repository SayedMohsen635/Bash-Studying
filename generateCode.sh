#!/bin/bash

# write a wiki bash script to help you on development
# - give you example about c++ hello world
# - give you example about python hello world
# - give you example about bash hello world

while true; do

  read -p "Enter your programming language [Python - C++ - Bash] or \"exit\" if you want to leave " lang

  if [[ "$lang" == "C++" || "$lang" == "c++" ]]; then
    cat <<EOF >"code.cpp"
#include <iostream>

int main(){
  std::cout << "Hello World!" << '\n';
  return 0;
}
EOF

  elif [[ "$lang" == "Python" || "$lang" == "python" ]]; then
    cat <<EOF >"code.py"
print ("Hello World!")
EOF

  elif [[ "$lang" == "Bash" || "$lang" == "bash" ]]; then
    cat <<EOF >"code.sh"
#!/bin/bash

echo "Hello World!"
EOF

  elif [ "$lang" == "exit" ]; then
    echo "Thanks for using the application"
    exit 1

  else
    echo "Invalid input, please specify any language from the list"
    continue
  fi

  echo "Code is generated successfully"
done
