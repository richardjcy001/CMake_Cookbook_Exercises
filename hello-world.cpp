#include <iostream>
#include <cstdlib>
#include <string>

std::string say_hello()
{
    return "Hello CMake world!";
}

int main()
{
    std::cout << say_hello() << std::endl;
    return EXIT_SUCCESS;
}