project(opencv)
cmake_minimum_required(VERSION 2.6)

macro(SET_OPTION option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static")
SET_OPTION(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++)
SET_OPTION(CMAKE_MAKE_PROGRAM x86_64-w64-mingw32-g++)
set_OPTION(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc -static-libstdc++")
set_OPTION(CMAKE_CXX_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc -static-libstdc++")

SET_OPTION(BUILD_opencv_apps OFF)
SET_OPTION(BUILD_SHARED_LIBS OFF)
SET_OPTION(BUILD_DOCS OFF)

add_subdirectory(opencv-3.2.0)
