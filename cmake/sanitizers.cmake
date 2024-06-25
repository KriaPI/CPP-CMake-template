option(ENABLE_ASAN "Enable address sanitizer" OFF)

if (CMAKE_CXX_COMPILER_ID MATCHES "MSVC" AND ENABLE_ASAN MATCHES ON)
    string(REPLACE "/RTC1" "" CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}")
    string(REPLACE "/RTC1" "" CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")
    add_link_options(
        /INCREMENTAL:NO   
    )
    add_compile_options(
        /fsanitize=address 
    )
elseif ((CMAKE_CXX_COMPILER_ID MATCHES "Clang" OR CMAKE_CXX_COMPILER_ID MATCHES "GNU") AND ENABLE_ASAN MATCHES ON) 
    add_link_options(-fsanitize=address)    
    add_compile_options(-fsanitize=address) 
endif()