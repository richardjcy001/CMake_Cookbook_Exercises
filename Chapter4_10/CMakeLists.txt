cmake_minimum_required(VERSION 3.5)

project(recipe4-10 LANGUAGES NONE)

find_package(PythonInterp REQUIRED)

enable_testing()

add_test(
    NAME setup
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/setup.py
)

set_tests_properties(
    setup
    PROPERTIES
    FIXTURES_SETUP my-fixture
)

add_test(
    NAME feature-a
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-a.py
)


add_test(
    NAME feature-b
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/feature-b.py
)

set_tests_properties(
    feature-a
    feature-b
    PROPERTIES
    FIXTURES_REQUIRED my-fixture
)

add_test(
    NAME cleanup
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/clean-up.py
)

set_tests_properties(
    cleanup
    PROPERTIES
    FIXTURES_CLEANUP my-fixture
)
