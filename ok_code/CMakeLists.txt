project(dextar)
cmake_minimum_required(VERSION 2.6)

#add_definitions(-fPIC)
add_compile_options(-std=c++11)
add_compile_options(-pthread)

find_package( OpenCV REQUIRED )
find_package (Threads)
find_package(PkgConfig REQUIRED)
pkg_check_modules(YamlCpp yaml-cpp)
include_directories(${YamlCpp_INCLUDE_DIRS})

include_directories(. include)
add_library(${PROJECT_NAME} SHARED
    include/chain.h src/chain.cpp   include/find_chains.h
    )
target_link_libraries(${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})

#add_executable(art main/art.cpp)
#target_link_libraries(art ${PROJECT_NAME} ${OpenCV_LIBS})

add_executable(chains main/chains.cpp)
target_link_libraries(chains ${PROJECT_NAME} ${OpenCV_LIBS} yaml-cpp)
