#!/bin/bash
# Casey-style single build script. No CMake, no VS. Just: ./build.sh && ./build/game
set -e

mkdir -p build

# -g: debug info, -Wall -Wextra: warnings, -O0: no optimization (fast compile, easy debug)
g++ -g -O0 -Wall -Wextra \
    src/main.cpp \
    src/gl.c \
    -Iinclude \
    -o build/game \
    -lglfw -lGL -ldl -lpthread

echo "Build OK -> ./build/game"
