add_executable(main main.cpp placeHolder/placeHolder.cpp placeHolder/placeHolder.hpp)

target_include_directories(main PRIVATE placeHolder)