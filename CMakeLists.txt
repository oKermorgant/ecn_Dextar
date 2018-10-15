project(dextar)
cmake_minimum_required(VERSION 2.6)

add_compile_options(-std=c++11)
add_compile_options(-pthread)

set(CMAKE_BUILD_TYPE Debug)

find_package( OpenCV REQUIRED )
find_package (Threads)



include_directories(. include)

add_executable(DrawBOT  main/chains.cpp
  include/chain_sequence.h src/chain_sequence.cpp
  include/find_chains.h src/find_chains.cpp
  include/ga.h include/script_generator.h include/parser.h
  include/face_detection.h src/face_detection.cpp
   )
target_link_libraries(DrawBOT ${CMAKE_THREAD_LIBS_INIT} ${OpenCV_LIBS})
