cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(recipe2-3 LANGUAGES CXX)

add_executable(hello-world hello-world.cpp)

message(STATUS "Compiler Name is ${CMAKE_CXX_COMPILER_ID}")

target_compile_definitions(hello-world PUBLIC "IS_${CMAKE_CXX_COMPILER_ID}_CXX_COMPILER")
