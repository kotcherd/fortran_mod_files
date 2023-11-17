CMAKE_MINIMUM_REQUIRED(VERSION 3.25)
project(MyProject LANGUAGES Fortran)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/add_fortran_library.cmake)

set(SOURCES 
   ./src/five.f90
   ./src/four.f90
   ./src/main.F
   ./src/one.f90
   ./src/three.f90
   ./src/two.f90
)

add_fortran_library(lib1 ./somewhere_else/src/zero.f90)

add_executable(go ${SOURCES})
target_link_libraries(go lib1)

