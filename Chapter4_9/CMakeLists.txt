cmake_minimum_required(VERSION 3.5)

project(recipe4-9 LANGUAGES NONE)

find_package(PythonInterp REQUIRED)

enable_testing()

add_test(
    NAME feature-a
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-a.py
)
add_test(
    NAME feature-b
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-b.py
)
add_test(
    NAME feature-c
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-c.py
)
add_test(
    NAME feature-d
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-d.py
)
add_test(
    NAME benchmark-a
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/benchmark-a.py
)
add_test(
    NAME benchmark-b
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/benchmark-b.py
)

set_tests_properties(
    feature-a
    feature-b
    feature-c
    PROPERTIES
    LABELS "quick"
)

set_tests_properties(
    feature-d
    benchmark-a
    benchmark-b
    PROPERTIES
    LABELS "long"
)
