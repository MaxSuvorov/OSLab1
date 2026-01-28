#!/bin/bash
# Скрипт для автоматического обновления, сборки и запуска проекта

echo "1. Pulling latest changes from Git..."
git pull

echo "2. Configuring with CMake..."
mkdir -p build
cd build
cmake ..

echo "3. Building the project..."
make

echo "4. Running the executable..."
./hello
