#!/bin/bash

if ! command -v speedtest-cli &>/dev/null; then
  echo "speedtest-cli isn't installed. Please install it using your package manager"
  exit 1
fi

speed=$(speedtest-cli)

echo "Speed Test Results:"
echo "$speed"
