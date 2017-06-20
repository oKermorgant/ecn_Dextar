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

add_executable(chains 
include/chain.h src/chain.cpp   include/find_chains.h include/galg.h include/indiv.h include/configuration.h src/configuration.cpp
    include/script_generator.h
    main/chains.cpp)
target_link_libraries(chains ${CMAKE_THREAD_LIBS_INIT} ${OpenCV_LIBS})
