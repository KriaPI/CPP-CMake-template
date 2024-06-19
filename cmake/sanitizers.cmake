option(ENABLE_ASAN "Enable address sanitizer" OFF)

if (CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
    string(REPLACE "/RTC1" "" CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")
    add_compile_options(
        /fsanitize=address /fsanitize-address-use-after-return
    )
elseif (CMAKE_CXX_COMPILER_ID MATCHES "Clang" OR CMAKE_CXX_COMPILER_ID MATCHES "GNU") 
    add_compile_options(-fsanitize=address)
    add_link_options(-fsanitize=address)
endif()