cmake_minimum_required(VERSION 3.9)

project(recipe5-5 LANGUAGES Fortran)

find_package(PythonInterp REQUIRED)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build Type" FORCE)
endif()

add_executable(example "")

target_sources(example
PRIVATE
example.f90
)

add_custom_command(
    TARGET
    example
    PRE_LINK
    COMMAND
    ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/echo-file.py
    ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/example.dir/link.txt
    COMMENT
    "link line:"
    VERBATIM
)

add_custom_command(
  TARGET
    example
  POST_BUILD
  COMMAND
    ${PYTHON_EXECUTABLE}
      ${CMAKE_CURRENT_SOURCE_DIR}/static-size.py
      $<TARGET_FILE:example>
  COMMENT
    "static size of executable:"
  VERBATIM
  )