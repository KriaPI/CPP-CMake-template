# Set needed 
macro(project_set_defaults)
    set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)    

    if (NOT DEFINED CMAKE_CXX_STANDARD)
        set(CMAKE_CXX_STANDARD 14)
        set(CMAKE_CXX_STANDARD_REQUIRED OFF)
        set(CMAKE_CXX_EXTENSIONS ON)
    elseif(CMAKE_CXX_STANDARD LESS 14) 
        message(FATAL_ERROR"This project requires C++ language standard 14 or later")
    endif()
endmacro()