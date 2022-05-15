#include <cstdlib>
#include <iostream>
#include <string>

std::string say_hello()
{
    return "Hello CMake SuperBuild World";
}

int main()
{
    std::cout << say_hello() << std::endl;
    return EXIT_SUCCESS;
}
