cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(recipe2-1 LANGUAGES NONE)

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Configuring on ${CMAKE_SYSTEM_NAME}")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    message(STATUS "Configuring on MacOS")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    message(STATUS "Configuring on Windows")
else()
    message(STATUS "Configuring on ${CMAKE_SYSTEM_NAME}")
endif()
