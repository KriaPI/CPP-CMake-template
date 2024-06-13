cmake_minimum_required(VERSION 3.24)
project(Template LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(helpers)

add_subdirectory(source)
add_subdirectory(test)

project_get_files_of_subdirectories(STORE_AS project_files)
add_custom_target(format_project
    COMMAND clang-format -i ${project_files}
)