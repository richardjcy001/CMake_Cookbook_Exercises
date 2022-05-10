cmake_minimum_required(VERSION 3.5)
project(recipe-01 LANGUAGES NONE)
find_package(PythonInterp REQUIRED)
execute_process(
    COMMAND
    ${PYTHON_EXECUTABLE} "-c" "print('Hello world')"
    RESULT_VARIABLE _status
    OUTPUT_VARIABLE _hello_world
    ERROR_QUIET
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
message(STATUS "RESULT VARIABLE is: ${_status}")
message(STATUS "OUTPUT VARIABLE is: ${_hello_world}")
    