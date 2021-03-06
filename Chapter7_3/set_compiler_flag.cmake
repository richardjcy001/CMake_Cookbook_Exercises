include(CheckCCompilerFlag)
include(CheckCXXCompilerFlag)
include(CheckFortranCompilerFlag)
function(set_compiler_flag _result _lang)
    set(_list_of_flags)
    set(_flag_is_required FALSE)
    foreach(_arg IN ITEMS ${ARGN})
        string(TOUPPER "${_arg}" _arg_uppercase)
        if(_arg_uppercase STREQUAL "REQUIRED")
            set(_flag_is_required TRUE)
        else()
            list(APPEND _list_of_flags "${_arg}")
        endif()
    endforeach()

    set(_flag_found FALSE)
    foreach(flag IN ITEMS ${_list_of_flags})
        unset(_flag_works CACHE)
        if(_lang STREQUAL "C")
            check_c_compiler_flag("${flag}" _flag_works)
        elseif(_lang STREQUAL "CXX")
            check_cxx_compiler_flag("${flag}" _flag_works)
        elseif(_lang STREQUAL "Fortran")
            check_Fortran_compiler_flag("${flag}" _flag_works)
        else()
            message(FATAL_ERROR "Unknown language in set_compiler_flag: ${_lang}")
        endif()

        if(_flag_works)
            message(STATUS "${flag}")
            set(${_result} "${flag}" PARENT_SCOPE)
            set(_flag_found TRUE)
            break()
        endif()
    endforeach()

    if(_flag_is_required AND NOT _flag_found)
        message(FATAL_ERROR "None of the required flags were supported")
    endif()
endfunction()
