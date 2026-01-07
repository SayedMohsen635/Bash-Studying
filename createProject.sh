#!/bin/bash

### Create project based on Makefile

read -p "Enter the project name: " prj_name

# check if the project is existed or not
if [ -d "$prj_name" ]; then
  echo "Project already existed"
  exit 1
fi

mkdir -p "$prj_name"/{src,include,build,bin}
touch "$prj_name"/{src/main.cpp,include/main.hpp}

cat <<EOF >"$prj_name"/Makefile
CXX = g++
CXXFLAGS = -Iinclude
SRC = src/main.cpp
OUT = bin/$prj_name
all:
  \$(CXX) \$(CXXFLAGS) \$(SRC) -o \$(OUT)
clean:
  rm -f \$(OUT)
EOF

echo "Project is created successfully"
