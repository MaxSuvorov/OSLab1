@echo off
echo 1. Pulling latest changes from Git...
git pull

echo 2. Configuring with CMake...
if not exist build mkdir build
cd build
cmake -G "MinGW Makefiles" ..

echo 3. Building the project...
mingw32-make

echo 4. Running the executable...
hello.exe