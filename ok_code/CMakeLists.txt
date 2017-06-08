project(dextar)
cmake_minimum_required(VERSION 2.6)

#add_definitions(-fPIC)
add_compile_options(-std=c++11)
add_compile_options(-pthread)

find_package( OpenCV REQUIRED )
find_package (Threads)

include_directories(. include)
add_library(${PROJECT_NAME}
    include/chain.h src/chain.cpp   include/find_chains.h include/galg.h include/indiv.h
    )
target_link_libraries(${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})

#add_executable(art main/art.cpp)
#target_link_libraries(art ${PROJECT_NAME} ${OpenCV_LIBS})

add_executable(chains main/chains.cpp)
target_link_libraries(chains ${PROJECT_NAME} ${OpenCV_LIBS})
