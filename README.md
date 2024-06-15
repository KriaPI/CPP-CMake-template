# Introduction
This is a template repository for C++ projects using CMake. It includes the following:
* CMake presets for GCC, Clang, MinGW, MSVC and Ninja build
* a Clang-tidy configuration
* a Clang-format configuration
* vcpkg
* Gtest

## Building
To build with GCC, type the following (line-by-line):

    cmake --preset GCC
    cd build
    cmake --build .

## Useful commands
Format files of all CMake targets with Clang-format:

    cmake --build build --target=format

Run static analysis on files using Clang-tidy:

    cmake --build build --target=check

## Modifying the template
Use CMake's `add_executable` and `add_library` for adding source files. To define header search paths for a compiler, in other words include directories, use `target_include_directories`. 