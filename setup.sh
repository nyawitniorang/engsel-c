#!/bin/bash
echo "Installing dependencies..."
pkg update && pkg upgrade -y
pkg install clang cmake libcurl libcjson git -y   # Termux
# atau di Ubuntu/Debian: sudo apt install build-essential cmake libcurl4-openssl-dev libcjson-dev

mkdir -p build
cd build
cmake ..
make -j$(nproc)
echo "Build selesai! Jalankan dengan ./engsel-c"
