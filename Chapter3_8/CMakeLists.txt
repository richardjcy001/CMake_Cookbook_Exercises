cmake_minimum_required(VERSION 3.5)

project(recipe3-8 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Boost 1.78.0 REQUIRED COMPONENTS filesystem)

add_executable(path-info path-info.cpp)

target_link_libraries(path-info
 PUBLIC 
 Boost::filesystem)