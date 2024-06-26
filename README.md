# Introduction
This is a template repository for C++ projects using CMake. It includes the following:
* CMake presets for GCC, Clang, MinGW, MSVC and Ninja build
* vcpkg integration
* Gtest as a dependency
* Code coverage generation
* a Clang-tidy configuration
* a Clang-format configuration

### Requirements
* cmake version 3.25 or later
* A version of GCC, Clang, MSVC or MinGW that supports at least C++14 
* vcpkg (with environment variables VCPKG_ROOT and vcpkg added to path)

Note that other compilers may work, but are not explicitly supported. See [vcpkg documentation](https://learn.microsoft.com/en-us/vcpkg/get_started/get-started?pivots=shell-bash) for information on how to install and set up vcpkg and the required environment variables.
### Optional
* Clang-tidy 
* Clang-format
* Gcov and gcovr

## Building
To configure the project, it is recommended to use a preset, type

    cmake --preset <presetName>

where "presetName" should be replaced with any of the presets listed when running `cmake --list-presets`. To compile everything after configuration, type

    cmake --build build

## Useful commands
Run tests

    ctest --test-dir build

Generate test coverage (__only when using GCC, Gcov and Gcovr__): 

    cmake --build build --target=coverage

Format files of all CMake targets with Clang-format:

    cmake --build build --target=format

Run static analysis on files using Clang-tidy:

    cmake --build build --target=check

## Modifying the template
Use CMake's `add_executable` and `add_library` for adding source files. To define header search paths for a compiler, in other words include directories, use `target_include_directories`. 