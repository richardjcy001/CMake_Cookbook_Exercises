#include <iostream>

std::string say_hello()
{
#ifdef IS_INTEL_CXX_COMPILER
    return "Hello Intel Compiler";
#elif IS_GNU_CXX_COMPILER
    return "Hello GNU Compiler";
#elif IS_PGI_CXX_COMPILER
    return "Hello PGI Compiler";
#elif IS_AppleClang_CXX_COMPILER
    return "Hello Apple Clang Compiler";
#else
    return "Hello unknown Compiler";
#endif
}

int main()
{
    std::cout << say_hello() << std::endl;
    return 0;
}
