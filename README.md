# DrawBot

Master 1 project of Alexandre Sarazin & Vamsi Krishna Guda, June, 11 2017.

Face detection, edge extraction and sketching on the Dextar 5-bars Robot.

Used at Centrale Nantes to illustrate both computer vision and parallel robot for visitors.


# Compiling on Linux

Compilation is straightforward as long as OpenCV is present.

# Compiling on Windows

The Dextar robot being controlled only from Windows, it is useful to have a standalone binary.

First OpenCV should be statically compile with the following parameters:

```
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc -static-libstdc++")
```

The project can then be compiled by indicating the path to your OpenCV installation. In order to compile statically, run CMake with:

```cmake -DSTATIC=ON```
