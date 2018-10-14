project(dextar)
cmake_minimum_required(VERSION 2.6)

option(STATIC "Compile with static libraries" OFF)

#add_definitions(-fPIC)
add_compile_options(-std=c++11)
add_compile_options(-pthread)

if(STATIC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static")
endif(STATIC)

find_package( OpenCV REQUIRED )
find_package (Threads)

include_directories(. include)

add_executable(DrawBOT
include/chain.h src/chain.cpp   include/find_chains.h include/galg.h include/script_generator.h include/parser.h
    main/chains.cpp)
target_link_libraries(DrawBOT ${CMAKE_THREAD_LIBS_INIT} ${OpenCV_LIBS})
