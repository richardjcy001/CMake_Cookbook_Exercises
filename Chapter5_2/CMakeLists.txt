cmake_minimum_required(VERSION 3.9)

project(recipe5-2 LANGUAGES NONE)

find_package(PythonInterp REQUIRED)

set(_module_name "cffi")

execute_process(
    COMMAND
    ${PYTHON_EXECUTABLE} "-c" "import ${_module_name}; print(${_module_name}.__version__)"
    OUTPUT_VARIABLE _stdout
    ERROR_VARIABLE _stderr
    OUTPUT_STRIP_TRAILING_WHITESPACE
    ERROR_STRIP_TRAILING_WHITESPACE
)

if(_stderr MATCHES "ModuleNotFoundError")
    message(STATUS "Module {_module_name} not found")
else()
    message(STATUS "Found module ${_module_name} v${_stdout}")
endif()
 