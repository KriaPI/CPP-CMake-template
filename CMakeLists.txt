cmake_minimum_required(VERSION 3.24)
project(Template LANGUAGES CXX)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

add_subdirectory(source)
#add_subdirectory(test)

include(project_tools)
project_enable_clang_format()
project_enable_clang_tidy()