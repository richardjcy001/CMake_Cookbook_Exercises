cmake_minimum_required(VERSION 3.5)

project(recipe4-1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(PythonInterp REQUIRED)
find_program(BASH_EXECUTABLE NAMES bash REQUIRED)

add_library(sum_integers sum_integers.cpp)

add_executable(sum_up main.cpp)
target_link_libraries(sum_up sum_integers)

add_executable(cpp_test test.cpp)
target_link_libraries(cpp_test sum_integers)

enable_testing()

add_test(
    NAME catch_test
    COMMAND $<TARGET_FILE:cpp_test> --success
)