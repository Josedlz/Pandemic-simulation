#!/bin/bash

{
    cmake --build ./build
    ./build/simulator
} || {
    ./build.sh
    cmake --build ./build
    ./build/simulator
}
