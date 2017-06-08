project(dextar)
cmake_minimum_required(VERSION 2.6)

#add_definitions(-fPIC)
add_compile_options(-std=c++11)
add_compile_options(-pthread)

find_package( OpenCV REQUIRED )
find_package (Threads)

include_directories(. include)

add_executable(chains main/chains.cpp
    include/chain.h src/chain.cpp   include/find_chains.h include/galg.h include/indiv.h
    include/parser.h
    )
target_link_libraries(chains  ${OpenCV_LIBS} ${CMAKE_THREAD_LIBS_INIT})
